`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2024 01:09:56 PM
// Design Name: 
// Module Name: pipo
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


module PIPO(clk,rst,A,O);
input [3:0]A,clk,rst;
output reg [3:0] O;
always @(clk)
if(rst==1)
begin
O=4'b0000;
end
else if(rst==0)
begin
O[0]<=A[0];
O[1]<=A[1];
O[2]<=A[2];
O[3]<=A[3];  
end
endmodule
