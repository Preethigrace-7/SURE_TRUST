`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2024 08:08:35 PM
// Design Name: 
// Module Name: multipy3bit
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


module multipy3bit(s,c,a,b);
  input [2:0]a,b;
  output [4:0]s,c;
  wire [12:0]w;
  
  and a1(s[0],a[0],b[0]);
  
  and a2(w[0],a[1],b[0]);
  and a3(w[1],a[0],b[1]);
  
  and a4(w[2],a[2],b[0]);
  and a5(w[3],a[0],b[1]);
  
  and a6(w[4],a[0],b[2]);
  
  and a7(w[5],a[2],b[1]);
  and a8(w[6],a[1],b[2]);
  
  and a9(w[7],a[2],b[2]);
  
  half_add h1(s[1],w[8],w[0],w[1]);
  
  full_add f1(w[9],w[10],w[8],w[2],w[3]);
  full_add f2(s[2],w[11],w[9],w[10],w[4]);
  full_add f3(s[3],w[12],w[11],w[5],w[6]);
  
  half_add h2(s[4],c,w[12],w[7]);
  
  
endmodule

