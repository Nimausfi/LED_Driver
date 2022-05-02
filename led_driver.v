`timescale 1ns / 1ps

module led_driver( input clk, 
                   output [3:0] led);
wire ce_sig;
wire [2:0] addr_bus;
wire [3:0] led_int;

//IBUFGDS  IBUFG_clk_i0           (.I(clk_p), .IB(clk_n), .O(clk)); 
clk_div  clk_div_inst_0         (.clk(clk), .ce(ce_sig));
addr_cntr    addr_cntr_inst_0   (.clk(clk), .ce(ce_sig), .addr_out(addr_bus));
mem  mem_inst_0                 (.clk(clk), .addr(addr_bus), .led_out(led_int));

assign led = led_int[3:0];

endmodule
