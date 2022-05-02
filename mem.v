`timescale 1ns / 1ps

module mem #(parameter WIDTH = 4,
                       MEM_ADDR = 3)
(
    input clk,
    input [MEM_ADDR-1:0] addr,
    output reg [WIDTH-1:0] led_out
    );
    
    reg [WIDTH-1:0] rom [2**MEM_ADDR-1:0];
    
    always @(posedge clk)
    begin
    rom[3'b000] <= 'b0001;
    rom[3'b001] <= 'b0010;
    rom[3'b010] <= 'b0100;
    rom[3'b011] <= 'b1000;
    rom[3'b100] <= 'b0100;
    rom[3'b101] <= 'b0010;
    rom[3'b110] <= 'b0001;  
    rom[3'b111] <= 'b0010;
    end
    always @(posedge clk)
                led_out <= rom[addr];
endmodule
