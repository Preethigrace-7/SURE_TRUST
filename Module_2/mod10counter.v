`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2024 03:25:43 PM
// Design Name: 
// Module Name: m10count
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


module m10count(out,clk,rst);
input clk,rst;
output reg [3:0]out;
always @(clk)
if (rst==1)
begin
out=4'b0000;
end
else
if(rst==0 && out<4'b1010)
begin
out = out+4'b0001;
end
else out=4'b0000;
endmodule
