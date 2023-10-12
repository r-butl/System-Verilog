`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2023 10:51:35 PM
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();

    logic A, B, S, C;
    
    half_adder ha(A, B, S, C);
    
    initial begin
        A = 0; B = 0; #100;
        A = 0; B = 1; #100;
        A = 1; B = 0; #100;
        A = 1; B = 1; #100;
    end
    
endmodule
