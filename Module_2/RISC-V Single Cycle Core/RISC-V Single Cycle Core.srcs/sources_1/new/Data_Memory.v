`timescale 1ns / 1ps

module Data_Memory(clk,rst,MemWrite,MemRead,Address,write_data,Read_Data);

input clk,rst,MemWrite, MemRead;
input [31:0] Address, write_data;
output [31:0] Read_Data;

reg [31:0] Dmemory[63:0];

assign Read_Data = (MemRead) ? Dmemory[Address] : 32'h0;//here we used ternery operator

integer k;

always @(posedge clk)
begin
if(rst == 1'b1)
begin
for(k=0; k<64;k=k+1)
begin
Dmemory[k]=32'h0;
end
end
else
if(MemWrite) 
Dmemory[Address] = write_data;
end


endmodule