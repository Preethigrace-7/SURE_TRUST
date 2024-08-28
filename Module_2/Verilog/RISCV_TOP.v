`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2024 11:27:58 PM
// Design Name: 
// Module Name: RISCV_Top
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


module RISCV_Top(clk,rst);
input clk,rst;
//Instantiation of modules
//Lets mke a wire of 32 bit that connect the output of PC to the input of Instruction memory
wire [31:0] InstructionTop, instruction_outTop, read_data1Top, read_data2Top,ALUresultTop,PCNextTop;
wire [3:0] ALUControlTop;
wire regWriteTop;
wire [1:0]ALUOpTop;

Program_Counter P_C(
.clk(clk),
.rst(rst),
.PC_in(PCNextTop),
.PC_out(InstructionTop));


Instruction_memory I_M(
.rst(rst), 
.Read_address(InstructionTop), 
.instruction_out(instruction_outTop));


Register_file R_F(

.clk(clk),
.rst(rst),
.Rs1(instruction_outTop),
.Rs2(instruction_outTop),
.Rd(instruction_outTop),
.Write_data(ALUresultTop),
.RegWrite(regWriteTop),
.Read_data1(read_data1Top),
.Read_data2(read_data2Top));

ALU_ ALU(
.A(read_data1Top),
.B(read_data2Top),
.zero(),
.ALUControl_in(ALUControlTop),
.ALU_result(ALUresultTop));


Data_Memory D_M(
.clk(clk),
.rst(rst),
.MemWrite(),
.MemRead(),
.Address(ALUresultTop),
.write_data(),
.Read_Data());

ALUControl_Unit AC_U(
.ALUOp_in(),
.func7(instruction_outTop),
.func3(instruction_outTop),
.ALUControl_out(ALUControlTop));

Main_Unit M_U(
.OPcode(),
.Branch(),
.Memread(),
.MemtoReg(),
.MemWrite(),
.Regwrite(regWriteTop),
.ALUSrc(),
.ALUOp_out(ALUOpTop));


endmodule
