`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2024 08:08:35 PM
// Design Name: 
// Module Name: multi_3bit
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


module multi_3bit(s,c,a,b);
  input [2:0]a,b;
  output [4:0]s,c;
  wire [12:0]w;
  assign s[0]=a[0]*b[0];
  
  assign w[0]=a[1]*b[0];
  assign w[1]=a[0]*b[1];
  
  assign w[2]=a[2]*b[0];
  assign w[3]=a[0]*b[1];
  
  assign w[4]=a[0]*b[2];
  
  assign w[5]=a[2]*b[1];
  assign w[6]=a[1]*b[2];
  
  assign w[7]=a[2]*b[2];
  
  assign s[1]=w[0]^w[1];
  assign w[8]=w[0]*w[1];
  
  assign w[9]=w[8]^w[2]^w[3];
  assign w[10]=(w[8]&w[2])|(w[2]&w[3])|(w[3]&w[8]);
  
  assign s[2]=w[9]^w[10]^w[4];
  assign w[11]=(w[9]&w[10])|(w[10]&w[4])|(w[4]&w[9]);
  
  assign s[3]=w[11]^w[5]^w[6];
  assign w[12]=(w[11]&w[15])|(w[5]&w[6])|(w[6]&w[11]);
  
  assign s[4]=w[12]^w[7];
  assign c=w[12]*w[7];
  
endmodule
