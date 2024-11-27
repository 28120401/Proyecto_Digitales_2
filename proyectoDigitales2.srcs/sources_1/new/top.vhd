library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_fft_xadc is
    Port (
        CLK100MHZ : in  STD_LOGIC;
        vauxp6, vauxn6, vauxp7, vauxn7, vauxp15, vauxn15, vauxp14, vauxn14 : in  STD_LOGIC;
        vp_in, vn_in                 : in  STD_LOGIC;
        sw                           : in STD_LOGIC_VECTOR(1 downto 0); -- Salida de datos UART
        btn1                   : in STD_LOGIC;                   -- Control de UART
        TxD                          : out STD_LOGIC
    );
end top_fft_xadc;

architecture Behavioral of top_fft_xadc is

    -- Señales internas
    signal xadc_data : STD_LOGIC_VECTOR(15 downto 0);
    signal fft_in_data : STD_LOGIC_VECTOR(15 downto 0);
    signal fft_out_real, fft_out_imag : STD_LOGIC_VECTOR(7 downto 0);
    signal fft_out_data : STD_LOGIC_VECTOR(15 downto 0);
    signal fft_out_valid_signal : STD_LOGIC;

    -- Magnitud y Fase
    signal magnitude : STD_LOGIC_VECTOR(7 downto 0);
    signal phase : STD_LOGIC_VECTOR(7 downto 0);

    -- Estados de transmisión
    type state_type is (IDLE, SEND_MAGNITUDE, SEND_PHASE);
    signal state : state_type := IDLE;

    -- Señales UART
    signal uart_data : STD_LOGIC_VECTOR(7 downto 0);
    signal uart_transmit : STD_LOGIC := '0';

begin

    -- Instancia del módulo XADC
    XADC_inst : entity work.XADC_module
        Port map (
            CLK100MHZ => CLK100MHZ,
            vauxp6    => vauxp6,
            vauxn6    => vauxn6,
            vauxp7    => vauxp7,
            vauxn7    => vauxn7,
            vauxp15   => vauxp15,
            vauxn15   => vauxn15,
            vauxp14   => vauxp14,
            vauxn14   => vauxn14,
            vp_in     => vp_in,
            vn_in     => vn_in,
            sw        => sw,
            led       => xadc_data
        );

    -- Mapeo de datos del XADC para alimentar la FFT
    fft_in_data <= xadc_data;

    -- Instancia del módulo FFT
    FFT_inst : entity work.fft_module_8
        Port map (
            aclk          => CLK100MHZ,
            aresetn       => '1', -- FFT activa siempre
            in_data       => fft_in_data,
            in_valid      => '1', -- Entrada siempre válida
            in_last       => '0',
            in_ready      => open,
            config_data   => (others => '0'),
            config_valid  => '0',
            config_ready  => open,
            out_data      => fft_out_data,
            out_valid     => fft_out_valid_signal,
            out_last      => open, -- No usamos `out_last`
            out_ready     => '1' -- Siempre lista para recibir datos
        );
        fft_out_real <= fft_out_data(15 downto 8);
        fft_out_imag <= fft_out_data(7 downto 0);
    -- Calcular Magnitud como |real| + |imag|
    magnitude <= std_logic_vector(
        to_unsigned(
            abs(to_integer(signed(fft_out_real))) + abs(to_integer(signed(fft_out_imag))),
            8
        )
    );

    -- Calcular Fase como diferencia simple (mod 256)
    phase <= std_logic_vector(
        to_unsigned(
            (to_integer(signed(fft_out_real)) - to_integer(signed(fft_out_imag))) mod 256,
            8
        )
    );

    -- Lógica de transmisión UART
    process(CLK100MHZ)
    begin
        if rising_edge(CLK100MHZ) then
            case state is
                when IDLE =>
                    if fft_out_valid_signal = '1' then
                        uart_data <= magnitude; -- Enviar Magnitud primero
                        uart_transmit <= '1';   -- Iniciar transmisión
                        state <= SEND_MAGNITUDE;
                    end if;

                when SEND_MAGNITUDE =>
                    uart_transmit <= '0'; -- Desactivar transmisión
                    if fft_out_valid_signal = '1' then
                        uart_data <= phase; -- Preparar Fase
                        uart_transmit <= '1'; -- Iniciar transmisión
                        state <= SEND_PHASE;
                    end if;

                when SEND_PHASE =>
                    uart_transmit <= '0'; -- Finaliza transmisión
                    state <= IDLE;

                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;

    -- Salidas del módulo UART
     
    -- UART
    UART_inst : entity work.uart_module
        Port map (
            sw             => uart_data,
            btn1           => uart_transmit,
            clk            => CLK100MHZ,
            TxD            => TxD
        );

end Behavioral;
