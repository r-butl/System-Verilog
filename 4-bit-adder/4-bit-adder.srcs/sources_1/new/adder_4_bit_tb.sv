`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 03:52:50 PM
// Design Name: 
// Module Name: adder_4_bit_tb
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


module adder_4_bit_tb();

    logic [3:0] A, B, S;
    logic Cin, Co;
    
    adder_4_bit add(A, B, Cin, S, Co);
    
    initial begin
        A = 4'b0000; B = 4'b0000; Cin = 0; #100;
        A = 4'b0001; B = 4'b0001; Cin = 0; #100;
        A = 4'b0101; B = 4'b0110; Cin = 0; #100;
        A = 4'b1111; B = 4'b1000; Cin = 1; #100;
    
    end

endmodule