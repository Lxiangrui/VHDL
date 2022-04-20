library verilog;
use verilog.vl_types.all;
entity csb is
    port(
        clk1M1          : out    vl_logic;
        clk             : in     vl_logic;
        T15us           : out    vl_logic;
        clk1M2          : out    vl_logic
    );
end csb;
