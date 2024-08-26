`timescale 1ns / 1ps
//now we gonna wrte verilog program for instruction memory unit

module Instruction_memory(rst, Read_address, instruction_out);

input rst;
input [31:0] Read_address;
output reg [31:0] instruction_out;

//making memory now
//memory consist of 64 registers each of 32 bit wide
reg [31:0] memory [63:0];
//assign what is placed at memory address to instruction out
assign instruction_out = memory[Read_address];

integer k;
always @ (posedge rst)
begin

for (k=0;k<64;k=k+1)
begin
memory[k] = 32'h00000000;
end
end
endmodule