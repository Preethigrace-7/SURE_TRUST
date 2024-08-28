`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2024 03:35:37 PM
// Design Name: 
// Module Name: mult3x3_tb
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


module mult3x3_tb();
reg [2:0]A,B;
wire [5:0] out;
mult_3x3 m1(A,B,out);
integer i,j;
initial begin
for(i=0;i<=7;i=i+1)
begin
#10 A=i;
for(j=0;j<=7;j=j+1)
begin
#10 B=j;
end
end
#100 $finish;
end

endmodule
