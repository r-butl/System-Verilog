`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 03:42:31 PM
// Design Name: 
// Module Name: adder4_tb
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


module adder4_tb();

    logic [3:0] A, B, S;
    logic Cin, Co;
    
    adder4 add(A, B, Cin, S, Co);
    
    initial begin
        A = 4'b0000; B = 4'b0000; Cin = 0; #100;
        A = 4'b0001; B = 4'b0001; Cin = 0; #100;
        A = 4'b0101; B = 4'b0110; Cin = 0; #100;
        A = 4'b1111; B = 4'b1000; Cin = 1; #100;
    
    end



endmodule
