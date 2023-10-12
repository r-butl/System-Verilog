`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 10:02:10 PM
// Design Name: 
// Module Name: multiply4_tb
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


module multiply4_tb();
    logic [3:0] a, b;
    logic [7:0] z;
    
    multiply4 test(a, b, z);
    
    initial begin
        a=4'h5; b=4'h2; #100;
        a=4'h5; b=4'h3; #100;
        a=4'h5; b=4'h4; #100;
        a=4'h2; b=4'h4; #100;
        a=4'h1; b=4'h5; #100;
        a=4'h4; b=4'h10; #100;
    end
    
endmodule
