`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2024 06:58:03 PM
// Design Name: 
// Module Name: clk_tb
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


module clk_tb();
reg a;
wire count,clk;

duty_cycle_40 dc1(a,clk,count);

initial
begin
a=1;
#60 clk=1'b1;
#40 clk=1'b0;
end
endmodule
