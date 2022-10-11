library verilog;
use verilog.vl_types.all;
entity Isaev23_vlg_sample_tst is
    port(
        D0              : in     vl_logic;
        D1              : in     vl_logic;
        D2              : in     vl_logic;
        D3              : in     vl_logic;
        D4              : in     vl_logic;
        D5              : in     vl_logic;
        D6              : in     vl_logic;
        D7              : in     vl_logic;
        x               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end Isaev23_vlg_sample_tst;
