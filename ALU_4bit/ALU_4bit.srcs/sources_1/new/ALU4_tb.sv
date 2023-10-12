`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2023 08:48:37 AM
// Design Name: 
// Module Name: ALU4_tb
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


module ALU4_tb();

    logic [1:0] O;
    logic [3:0] A, B;
    logic [7:0] Y;
    logic V;
    
    ALU4 alu(A, B, O, Y, V);
    
    initial begin
        // Add
        O=2'b00; A=4'b0001; B=4'b0010; #100;
        O=2'b00; A=4'b1000; B=4'b0000; #100;
        //O=2'b00; A=4'b0001; B=4'b0010; #100;
        //O=2'b00; A=4'b1111; B=4'b0011; #100;
        
        // Subtract
        O=2'b01; A=4'b0011; B=4'b0010; #100;
        //O=2'b01; A=4'b0011; B=4'b0110; #100;
        //O=2'b01; A=4'b1011; B=4'b1010; #100;
        //O=2'b01; A=4'b0000; B=4'b0011; #100;

        // Multiply
        O=2'b10; A=4'b0101; B=4'b0111; #100;
        //O=2'b10; A=4'b1111; B=4'b1111; #100;
        //O=2'b10; A=4'b0100; B=4'b0100; #100;
        //O=2'b10; A=4'b0001; B=4'b0000; #100;

        //Divide
        O=2'b11; A=4'b1000; B=4'b0011; #100;
        //O=2'b11; A=4'b1000; B=4'b0000; #100;
        //O=2'b11; A=4'b0000; B=4'b0011; #100;
        //O=2'b11; A=4'b1110; B=4'b0011; #100;

    end
endmodule
