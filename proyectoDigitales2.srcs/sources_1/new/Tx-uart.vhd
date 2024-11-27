library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity uart_module is
    Port (
        sw : in STD_LOGIC_VECTOR(7 downto 0);
        btn1 : in STD_LOGIC;
        clk : in STD_LOGIC;
        TxD : out std_logic
    );
    
end uart_module;

architecture Behavioral of uart_module is
    signal transmit : STD_LOGIC;
    signal TxD_internal : STD_LOGIC; -- Señal intermedia para TxD
begin


    -- Instance of transmitter
    T1 : entity work.transmitter
        port map (
            clk => clk,
            reset => '0',
            transmit => btn1,
            TxD => TxD_internal,      -- Usa la señal interna
            data => sw
        );

    -- Asignación final de TxD
    TxD <= TxD_internal;

end Behavioral;
