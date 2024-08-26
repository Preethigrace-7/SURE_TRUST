`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2024 07:11:46 PM
// Design Name: 
// Module Name: duty_cycle_40
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


module duty_cycle_40(a,clk,count);
input a;
output reg clk;
output reg count;
integer i;
initial
begin
count=0;
end
always @(a,clk)
begin
for(i=0;i<100;i=i+1)
begin
clk=~clk;
count=count+1;
end
$display("count=%d",count);
end
endmodule
