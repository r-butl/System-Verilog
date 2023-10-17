`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2023 07:53:06 PM
// Design Name: 
// Module Name: d_flipflop_tb
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


module d_flipflop_tb();

    logic clk, rst, d, q, q_not;
    
    d_flipflop dut(clk, d,  rst,    q,  q_not);
    
    initial begin
    
        // Check Clock and Data bits
        clk = 1'b0; d = 1'b0; rst = 1'b0; #10;
        clk = 1'b1; d = 1'b0; rst = 1'b0; #10;
        clk = 1'b0; d = 1'b1; rst = 1'b0; #10;
        clk = 1'b1; d = 1'b1; rst = 1'b0; #10;
        clk = 1'b0; d = 1'b1; rst = 1'b0; #10;
                
       // Check Reset
        clk = 1'b1; d = 1'b1; rst = 1'b0; #10;
        clk = 1'b0; d = 1'b0; rst = 1'b0; #10;
        clk = 1'b0; d = 1'b0; rst = 1'b1; #10;
        clk = 1'b0; d = 1'b0; rst = 1'b0; #10;
        clk = 1'b1; d = 1'b1; rst = 1'b0; #10;
        

    end
endmodule
