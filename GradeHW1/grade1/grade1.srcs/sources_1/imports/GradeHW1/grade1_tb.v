`timescale 1ns / 1ps

module test();

logic s = 3'b000;
logic [7:0] D;
logic y;

mux test(s, D, y);

     initial begin
        s = 3'b000; #100;
        s = 3'b001; #100;
        s = 3'b010; #100;
        s = 3'b011; #100;
        s = 3'b100; #100;
        s = 3'b101; #100;
        s = 3'b110; #100;
        s = 3'b111; #100;
     end
     
endmodule