`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2024 12:35:58 PM
// Design Name: 
// Module Name: sequencedetector
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


module sd_1001(clk,rst,in,out);
//input [3:0]seq;
input in;
input clk,rst;
output reg out;
reg [2:0]s,nxts;

    parameter st_1=1,st_2=2,st_3=3,st_4=4,st_5=5;//states
always @(posedge clk)
begin
if(rst==1'b1)
begin
out<=0;
s<=st_1;
nxts<=st_1;
end
else 
begin 
s<=nxts;
end
end

always @(s,in)
begin

case(s)

st_1:begin
       out =0;
       if(in==1)
        begin
        nxts=st_2;
        end
       else
        nxts=st_1;
     end
st_2:begin
        out =0;
       if(in==0)
        begin
        nxts=st_3;
        end
       else
        nxts=st_2;
     end
st_3:begin
        out =0;
       if(in==0)
        begin
        nxts=st_4;
        end
       else
        nxts=st_1;
     end
st_4:begin
        out =0;
       if(in==1)
        begin
        nxts=st_5;
        end
       else
        nxts=st_1;
     end
st_5:begin
       out=1;
       if(in==0)
       begin
       nxts=st_1;
       end
       else
       nxts=st_2;
     end
default : begin 
nxts=st_1;
out =0;
end
endcase

end
endmodule
