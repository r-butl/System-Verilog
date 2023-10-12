`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2023 11:46:00 PM
// Design Name: 
// Module Name: multi3_tb
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


module multi3_tb();

    logic [2:0] A, B;
    logic [5:0] M;
    
    multi3 m(A, B, M);
    
    initial begin
        A = 3'b000; B = 3'b000; #100;
        A = 3'b110; B = 3'b011; #100;
        A = 3'b101; B = 3'b111; #100;
        A = 3'b111; B = 3'b111; #100;
        A = 3'b010; B = 3'b100; #100;
        A = 3'b101; B = 3'b001; #100;
        A = 3'b101; B = 3'b101; #100;
        A = 3'b011; B = 3'b111; #100;
    end
endmodule
