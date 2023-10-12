`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 09:44:50 PM
// Design Name: 
// Module Name: subtract4_tb
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


module subtract4_tb();

    logic [3:0] a, b;
    logic [4:0] z;
    
    subtract4 sub(a, b, z);
    
    initial begin
        a=4'h5; b=4'h2; #100;
        a=4'h5; b=4'h3; #100;
        a=4'h5; b=4'h4; #100;
        a=4'h2; b=4'h4; #100;
        a=4'h1; b=4'h5; #100;
        a=4'h4; b=4'h7; #100;

    end

endmodule
