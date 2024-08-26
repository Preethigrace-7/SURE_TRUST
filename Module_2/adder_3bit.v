`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2024 02:43:26 PM
// Design Name: 
// Module Name: adder_3bit
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


module adder_3bit(in1,in2,out,cout);
input [2:0] in1,in2;
output [2:0] out;
output cout;
wire [1:0] c;

assign out[0]=in1[0]^in2[0];
assign c[0]= in1[0] & in2[0];
assign out[1]= in1[1]^in2[1]^c[0];
assign c[1]= (in1[1]&in2[1]) |(c[0]&(in1[1]^in2[1]));
assign out[2]=in1[2]^in2[2]^c[1];
assign cout= (in1[2]&in2[2]) |(c[1]&(in1[2]^in2[2]));

endmodule
