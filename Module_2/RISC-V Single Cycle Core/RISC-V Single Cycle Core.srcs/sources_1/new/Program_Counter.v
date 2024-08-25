`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2024 10:56:01 PM
// Design Name: 
// Module Name: Program_Counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//32 bit RISC processor

module Program_Counter(clk,rst,PC_IN,PC_OUT);

input clk,rst;
//32 bit input and output
input [31:0]PC_IN;
output reg [31:0] PC_OUT;
//as PC is a register that holds the address for the next instruction that trigger at positive edge or negative egdge of clock
always @(posedge clk)
begin
if(rst)
//if reset is high PC should be assigned as 32 bit zero
PC_OUT <= 32'h00000000;//here 1 bit in hex is 4 bits in binary so we have writtem 8 bits 0 for representing
else
PC_OUT<=PC_IN;//pc in should be pc out if reset is not high
end
endmodule
