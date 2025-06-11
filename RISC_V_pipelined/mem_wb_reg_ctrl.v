`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 10:46:58 AM
// Design Name: 
// Module Name: mem_wb_reg_ctrl
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

module mem_wb_reg_ctrl(clk, reset, RegWriteM, MemWriteM, ResultSrcM,
                                   RegWriteW, MemWriteW, ResultSrcW);

    input clk, reset;
    input RegWriteM, MemWriteM;
    input [1:0] ResultSrcM;
    
    output reg RegWriteW, MemWriteW;
    output reg [1:0] ResultSrcW;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            RegWriteW  <= 0;
            MemWriteW  <= 0;
            ResultSrcW <= 0;
        end 
        
        else begin
            RegWriteW  <= RegWriteM;
            MemWriteW  <= MemWriteM;
            ResultSrcW <= ResultSrcM;
        end
    end
endmodule
