`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2024 01:02:05 AM
// Design Name: 
// Module Name: countupdown_tb
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


module countupdown_tb();
reg rst;
wire [3:0]count_A,count_B;
reg clk=0;

count_up_down cup(clk,rst,count_A,count_B);
initial
forever 
begin
#500 clk=~clk;//1MHz
end
initial 
begin
//rst=0;
rst=1;
#20 rst=0;
/*if($time==200000)
begin
$display("At time: %d,count_A = %b,count_B =%b",$time, count_A, count_B);
end
$monitor("Time: %d, count_A: %b, count_B: %b", $time, count_A, count_B);*/



end

endmodule
