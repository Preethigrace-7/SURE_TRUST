`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2024 08:08:35 PM
// Design Name: 
// Module Name: full_add
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


module full_add(s,cout,a,b,c);
input a,b,c;
output s,cout;
assign s=a^b^c;
assign cout=(a&b)|(b&c)|(c&a);
endmodule
