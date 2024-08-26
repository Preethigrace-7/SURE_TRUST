`timescale 1ns / 1ps

module Main_Unit(OPcode,Branch,Memread,MemtoReg,MemWrite,Regwrite,ALUSrc,ALUOp_out);

input [6:0] OPcode;
output reg Branch,Memread,MemtoReg,MemWrite,Regwrite,ALUSrc;
output reg [1:0] ALUOp_out;

always @(*)
begin
case(OPcode)
7'b0110011 :  //For R-Type instruction
begin
Branch <= 0;
Memread <= 0;
MemtoReg <= 0;
MemWrite <= 0;
Regwrite <=1;
ALUSrc <=0;
ALUOp_out <= 2'b10;
end
endcase
end
endmodule