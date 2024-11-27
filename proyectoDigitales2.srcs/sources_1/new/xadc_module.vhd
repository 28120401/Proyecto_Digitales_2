library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity XADC_module is
    Port (
        CLK100MHZ : in STD_LOGIC;
        vauxp6, vauxn6, vauxp7, vauxn7, vauxp15, vauxn15, vauxp14, vauxn14 : in STD_LOGIC;
        vp_in, vn_in : in STD_LOGIC;
        sw : in STD_LOGIC_VECTOR(1 downto 0);
        led : out STD_LOGIC_VECTOR(15 downto 0)
    );
end XADC_module;

architecture Behavioral of XADC_module is

    signal enable : STD_LOGIC;
    signal ready : STD_LOGIC;
    signal data : STD_LOGIC_VECTOR(15 downto 0);
    signal Address_in : STD_LOGIC_VECTOR(6 downto 0);
    signal count : INTEGER := 0;
    signal state : INTEGER := 0;
    constant S_IDLE : INTEGER := 0;
    constant S_FRAME_WAIT : INTEGER := 1;
    constant S_CONVERSION : INTEGER := 2;
    signal sseg_data : STD_LOGIC_VECTOR(15 downto 0);
    signal b2d_start : STD_LOGIC := '0';
    signal b2d_din : STD_LOGIC_VECTOR(15 downto 0);
    signal b2d_dout : STD_LOGIC_VECTOR(15 downto 0);
    signal b2d_done : STD_LOGIC;

begin

    -- Instanciación del XADC
    XLXI_7: entity work.xadc_wiz_0
        port map (
            daddr_in => Address_in,
            dclk_in => CLK100MHZ,
            den_in => enable,
            di_in => (others => '0'),
            dwe_in => '0',
            vauxp6 => vauxp6,
            vauxn6 => vauxn6,
            vauxp7 => vauxp7,
            vauxn7 => vauxn7,
            vauxp14 => vauxp14,
            vauxn14 => vauxn14,
            vauxp15 => vauxp15,
            vauxn15 => vauxn15,
            vn_in => vn_in,
            vp_in => vp_in,
            do_out => data,
            eoc_out => enable,
            drdy_out => ready
        );

    -- Lógica para las LEDs
   led <= data;

    -- Selección de dirección según el switch
    process (CLK100MHZ)
    begin
        if rising_edge(CLK100MHZ) then
            case sw is
                when "00" => Address_in <= "0010110"; -- XA1/AD6
                when "01" => Address_in <= "0011110"; -- XA2/AD14
                when "10" => Address_in <= "0010111"; -- XA3/AD7
                when "11" => Address_in <= "0011111"; -- XA4/AD15
                when others => Address_in <= (others => '0');
            end case;
        end if;
    end process;


end Behavioral;
