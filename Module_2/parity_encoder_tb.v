`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2024 12:23:11 AM
// Design Name: 
// Module Name: parity_encoder_tb
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


module parity_encoder_tb();
reg [3:0]a;
wire out;
parity_encoder pe1(a,out);
integer i;
initial
begin
for(i=0;i<=15;i=i+1)
begin
#20 a=i;
end
end
endmodule
