`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2024 02:43:26 PM
// Design Name: 
// Module Name: mult_3x3
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


module mult_3x3(A,B,out);
input [2:0] A,B;
output [5:0]out;
wire [7:0] w;
wire [2:0]s;
wire cout;
and a1(out[0],A[0],B[0]);
and a2(w[0],A[1],B[0]);
and a3(w[1],A[2],B[0]);
and a4(w[2],A[0],B[1]);
and a5(w[3],A[1],B[1]);
and a6(w[4],A[2],B[1]);
and a7(w[5],A[0],B[2]);
and a8(w[6],A[1],B[2]);
and a9(w[7],A[2],B[2]);


adder_3bit ad1({1'b0, w[1:0]},w[4:2],s,cout);
adder_3bit ad2(w[7:5],{cout ,s[2:1]},out[4:2],out[5]);

assign out[1] = s[0];

endmodule
