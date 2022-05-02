`timescale 1ns / 1ps

module addr_cntr(
input clk, ce,
output reg [2:0] addr_out);

always @(posedge clk)
begin
if (ce == 1)
addr_out <= addr_out + 1'b1;
end

endmodule


/*
always @(posedge clk)
begin
if (addr_out > 3'b111 )
addr_out <= 3'b000;
else
addr_out <= addr_out + 1'b1;
end
endmodule
*/