`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 03:52:28 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();

     logic x_in, y_in, ci_in, co_in, s_in;
     
     full_adder dut(x_in, y_in, ci_in, s_in, co_in);
     
     initial begin
        x_in = 0; y_in = 0; ci_in = 0; #100;
        x_in = 0; y_in = 0; ci_in = 1; #100;
        x_in = 0; y_in = 1; ci_in = 0; #100;
        x_in = 0; y_in = 1; ci_in = 1; #100;
        x_in = 1; y_in = 0; ci_in = 0; #100;
        x_in = 1; y_in = 0; ci_in = 1; #100;
        x_in = 1; y_in = 1; ci_in = 0; #100;
        x_in = 1; y_in = 1; ci_in = 1; #100;
     
     end
endmodule
