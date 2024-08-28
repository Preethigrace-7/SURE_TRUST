`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2024 12:31:24 AM
// Design Name: 
// Module Name: count_up-down
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


module count_up_down(
    input clk,
    input rst,
    output reg [3:0] count_A,
    output reg [3:0] count_B
);
reg chk;
always @(posedge clk or posedge rst) 
begin
    if (rst) 
    begin
        count_A <= 4'b0000;
        count_B <= 4'b1111;
    end 
    else
    begin
        count_A = count_A + 1;
        if (count_A == 4'b1100) 
        begin
        chk=1;
        end
        else chk=0;
    end
    if(clk & chk)
    begin
     count_B <= count_B - 1;
    end   
end


endmodule



