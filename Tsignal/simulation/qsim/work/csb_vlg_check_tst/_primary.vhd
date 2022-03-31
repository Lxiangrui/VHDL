library verilog;
use verilog.vl_types.all;
entity csb_vlg_check_tst is
    port(
        clk1M1          : in     vl_logic;
        clk1M2          : in     vl_logic;
        T15us           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end csb_vlg_check_tst;
