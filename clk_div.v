`timescale 1ns / 1ps

module clk_div(
input clk,
output reg ce);

reg [26:0] register = 0;

always @(posedge clk)
begin
if (register == 27'd100000000-1) //count from 0 to 100 million-1
begin
ce <= 1;
register <= 0;
end
else
begin
ce <= 0;
register <= register + 1'b1;
end
end

endmodule