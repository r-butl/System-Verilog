`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2023 08:58:52 PM
// Design Name: 
// Module Name: sequence_detector_tb
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


module sequence_detector_tb();
    
    logic d, clk, rst, o;
    
    sequence_detector dut(d, clk, rst, o);
    
initial begin
        d=1'b0; clk=1'b0; rst=1'b1; #10;
        d=1'b0; clk=1'b1; rst=1'b0; #10;
        d=1'b0; clk=1'b0; rst=1'b0; #10;
        d=1'b0; clk=1'b1; rst=1'b0; #10;
        d=1'b1; clk=1'b0; rst=1'b0; #10;
        d=1'b1; clk=1'b1; rst=1'b0; #10;
        d=1'b0; clk=1'b0; rst=1'b0; #10;
        d=1'b0; clk=1'b1; rst=1'b0; #10;
        d=1'b1; clk=1'b0; rst=1'b0; #10;
        d=1'b1; clk=1'b1; rst=1'b0; #10;
        d=1'b1; clk=1'b0; rst=1'b0; #10;
        d=1'b1; clk=1'b1; rst=1'b0; #10;
        d=1'b0; clk=1'b0; rst=1'b0; #10;
        d=1'b0; clk=1'b1; rst=1'b0; #10;
        d=1'b1; clk=1'b0; rst=1'b0; #10;
        d=1'b1; clk=1'b1; rst=1'b0; #10;
        d=1'b1; clk=1'b0; rst=1'b0; #10;
        d=1'b1; clk=1'b1; rst=1'b0; #10;
        d=1'b1; clk=1'b0; rst=1'b0; #10;
        d=1'b1; clk=1'b1; rst=1'b0; #10;
        d=1'b0; clk=1'b0; rst=1'b0; #10;
        d=1'b0; clk=1'b1; rst=1'b0; #10;
        d=1'b1; clk=1'b0; rst=1'b0; #10;
        d=1'b1; clk=1'b1; rst=1'b0; #10;
        d=1'b1; clk=1'b0; rst=1'b0; #10;
        d=1'b1; clk=1'b1; rst=1'b0; #10;
        d=1'b1; clk=1'b0; rst=1'b0; #10;
        d=1'b1; clk=1'b1; rst=1'b0; #10;
        d=1'b1; clk=1'b0; rst=1'b0; #10;
        d=1'b1; clk=1'b1; rst=1'b0; #10;
        d=1'b1; clk=1'b0; rst=1'b1; #10;
        d=1'b1; clk=1'b0; rst=1'b0; #10;
    end
    
endmodule
