library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fft_module_8 is
    port (
        aclk               : in  std_logic;
        aresetn            : in  std_logic;

        in_data            : in  std_logic_vector(15 downto 0); -- Input Data Stream
        in_valid           : in  std_logic;
        in_last            : in  std_logic;
        in_ready           : out std_logic;
 
        config_data        : in  std_logic_vector(7 downto 0); -- Config Data Stream
        config_valid       : in  std_logic;
        config_ready       : out std_logic;

        out_data           : out std_logic_vector(15 downto 0); -- Output Data Stream
        out_valid          : out std_logic;
        out_last           : out std_logic;
        out_ready          : in  std_logic
    );
end fft_module_8;

architecture Behavioral of fft_module_8 is
    signal data_fft          : std_logic_vector(15 downto 0); -- FFT input data (64 bits)
    signal out_fft           : std_logic_vector(15 downto 0); -- FFT output data (64 bits)

    -- Event signals
    signal event_frame_started      : std_logic;
    signal event_tlast_unexpected   : std_logic;
    signal event_tlast_missing      : std_logic;
    signal event_status_channel_halt : std_logic;
    signal event_data_in_channel_halt : std_logic;
    signal event_data_out_channel_halt : std_logic;

begin
    -- Assign the upper 32 bits of data_fft to 0, and the lower 32 bits to in_data
    data_fft  <= in_data;

    -- FFT instantiation
    FFT_IP : entity work.xfft_1
        port map (
            aclk                  => aclk, -- Clock
            aresetn               => aresetn, -- Reset

             -- Configuration interface
            s_axis_config_tdata   => config_data,
            s_axis_config_tvalid  => config_valid,
            s_axis_config_tready  => config_ready,

            -- Input data stream
            s_axis_data_tdata     => data_fft,
            s_axis_data_tvalid    => in_valid,
            s_axis_data_tready    => in_ready,
            s_axis_data_tlast     => in_last,

            -- Output data stream
            m_axis_data_tdata     => out_fft,
            m_axis_data_tvalid    => out_valid,
            m_axis_data_tready    => out_ready,
            m_axis_data_tlast     => out_last,

            -- Event signals
            event_frame_started      => event_frame_started,
            event_tlast_unexpected   => event_tlast_unexpected,
            event_tlast_missing      => event_tlast_missing,
            event_status_channel_halt => event_status_channel_halt,
            event_data_in_channel_halt => event_data_in_channel_halt,
            event_data_out_channel_halt => event_data_out_channel_halt
        );

    -- Assign the lower 32 bits of out_fft to out_data
    out_data <= out_fft;

end architecture;
