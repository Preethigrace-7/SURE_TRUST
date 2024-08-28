`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2024 04:42:15 PM
// Design Name: 
// Module Name: sd_1001_tb
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


module sd_1001_tb();
    reg in;
    reg clk,rst;
    wire out;

sd_1001 sd1(.clk(clk),.rst(rst),.in(in),.out(out));  

initial begin
rst = 1'b1;
clk =1'b0;
#10 rst = 1'b0; 

end
initial begin
forever
begin
#5 clk=~clk;
end
end
initial begin
in=0;#15

in=1;#10//delay is 10 because to cope up with the every clock cycle for checking input got every cock cycle

in=0;#10

in=0;#10

in=1;#10

in=1;#10

in=0;#10

in=1;#10

in=0;
#100 $finish;
end   
initial begin
        $monitor("At time %t, in = %b, out = %b", $time, in, out);
    end

endmodule
