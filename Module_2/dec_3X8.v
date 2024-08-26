`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2024 12:20:00 PM
// Design Name: 
// Module Name: dec_3x8
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


module dec_3x8(f,a);
input [2:0]a;
output reg [7:0]f;
always @(*)
begin
if(a==0)f=8'b00000001;
if(a==1)f=8'b00000010;
if(a==2)f=8'b00000100;
if(a==3)f=8'b00001000;
if(a==4)f=8'b00010000;
if(a==5)f=8'b00100000;
if(a==6)f=8'b01000000;
if(a==7)f=8'b10000000;
end
endmodule
