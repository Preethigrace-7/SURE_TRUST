`timescale 1ns/1ps

module Register_file(clk,rst,Rs1,Rs2,Rd,Write_data,RegWrite,Read_data1,Read_data2);
//these inputs are single bit
input clk,rst,RegWrite;

input [19:15]Rs1; //5 bit
input [24:20]Rs2; //5 bit
input [11:7] Rd;  //5 bit
input [31:0] Write_data; //32 bit


output [31:0] Read_data1, Read_data2; //32 bit 

reg [31:0] registers [31:0];//32 registers each of 32 bit wide

assign Read_data1 = registers[Rs1];
assign Read_data2 = registers[Rs2];

integer k;
always @ (posedge clk)
begin
if(rst==1'b1)
begin
for(k = 0; k<32; k=k+1)
registers[k]= 32'h0;
end
else if (RegWrite ==1'b1)
begin
registers[Rd] = Write_data;
end
end
endmodule
