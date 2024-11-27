library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity transmitter is
    port (
        clk : in STD_LOGIC;        -- Reloj de entrada para UART
        reset : in STD_LOGIC;      -- Señal de reinicio
        transmit : in STD_LOGIC;   -- Señal para activar la comunicación UART
        data : in STD_LOGIC_VECTOR(7 downto 0); -- Datos a transmitir
        TxD : out STD_LOGIC        -- Salida serial del transmisor
    );
end transmitter;

architecture Behavioral of transmitter is
    -- Variables internas
    signal bitcounter : INTEGER range 0 to 10 := 0;    -- Contador de bits (hasta 10 bits)
    signal counter : INTEGER range 0 to 10415 := 0;    -- Contador para el baud rate
    signal state, nextstate : STD_LOGIC := '0';        -- Estado actual y siguiente
    signal rightshiftreg : STD_LOGIC_VECTOR(9 downto 0) := (others => '0'); -- Registro de desplazamiento
    signal shift, load, clear : STD_LOGIC := '0';      -- Señales para carga, desplazamiento y limpieza

begin

    -- Lógica de transmisión UART
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state <= '0';          -- Estado inicial
                counter <= 0;          -- Reinicio del contador de baud rate
                bitcounter <= 0;       -- Reinicio del contador de bits
            else
                counter <= counter + 1;
                
                if counter >= 10415 then
                    state <= nextstate;   -- Cambia al siguiente estado
                    counter <= 0;         -- Reinicia el contador
                    if load = '1' then
                        rightshiftreg <= '1' & data & '0'; -- Carga de datos con bit de inicio y parada
                    end if;
                    if clear = '1' then
                        bitcounter <= 0;  -- Reinicia el contador de bits
                    end if;
                    if shift = '1' then
                        rightshiftreg <= '0' & rightshiftreg(9 downto 1); -- Desplazamiento a la derecha
                        bitcounter <= bitcounter + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- Máquina de estados
    process(clk)
    begin
        if rising_edge(clk) then
            load <= '0';
            shift <= '0';
            clear <= '0';
            TxD <= '1';  -- TxD en alto cuando no hay transmisión
            
            case state is
                when '0' =>    -- Estado inactivo
                    if transmit = '1' then
                        nextstate <= '1'; -- Cambia al estado de transmisión
                        load <= '1';      -- Prepara la carga de datos
                    else
                        nextstate <= '0'; -- Mantiene el estado inactivo
                        TxD <= '1';
                    end if;

                when '1' =>    -- Estado de transmisión
                    if bitcounter >= 10 then
                        nextstate <= '0'; -- Cambia al estado inactivo después de la transmisión
                        clear <= '1';     -- Limpia los contadores
                    else
                        nextstate <= '1';  -- Permanece en el estado de transmisión
                        TxD <= rightshiftreg(0); -- Envía el bit menos significativo
                        shift <= '1';      -- Continúa desplazando los bits
                    end if;

                when others =>
                    nextstate <= '0';
            end case;
        end if;
    end process;

end Behavioral;
