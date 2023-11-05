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


/*
module sequential_circuit_tb();
    
    logic d, clk, rst, o;
    logic [1:0] s;
    
    sequential_circuit dut(d, rst, clk, o, s);
    
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

*/


// Brendans

module sequential_circuit_tb();

// Input signals
  logic clk;
  logic reset;
  logic x;
  logic [1:0] s;

  // Output signals
  logic y = 1'b0;
 
// Mine:   sequential_circuit dut(d, rst, clk, o);

  // Instantiate the module under test
  sequential_circuit uut (
   x , reset, clk, y, s
  );

  // Clock generation
  always forever #5 clk = ~clk;

  // Initialize signals
  initial begin
    clk = 1;
    reset = 1;
    x = 0;

    // Apply reset
    reset = 1; #12 reset = 0;

    // Test cases
    x = 0;
    #10 x = 1;
    #10 x = 0;
    #10 x = 1;
    #10 x = 0;
    #10 x = 1;
    #10 x = 1;
    #10 x = 1;
    #10 x = 0;
    #10 x = 0;
    #10 x = 1;
    #10 x = 0;
    
//    #10 x = 0;
//    #10 x = 0;
//    #10 x = 0;
    $stop;
  end

endmodule

