`timescale 1ns / 1ps
module ALU_(A,B,zero,ALUControl_in,ALU_result);

input [31:0] A,B;
input [3:0] ALUControl_in;
output reg [31:0] ALU_result;
output reg zero;


always @(*)
begin
case(ALUControl_in)

4'b0000 : begin zero<= 0; ALU_result <= A&B; end
4'b0001 : begin zero<= 0; ALU_result <= A|B; end
4'b0010 : begin zero<= 0; ALU_result <= A+B; end
4'b0110 : begin zero<= 0; ALU_result <= A-B; end

default : begin zero<=0; ALU_result <=A;end

endcase
end
endmodule
