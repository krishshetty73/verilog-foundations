`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2026 19:55:36
// Design Name: 
// Module Name: mux2to1_tb
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


module mux2to1_tb();
reg [1:0]A;
reg B;
wire F;
mux2to1_gl M(.in(A),.sel(B),.out(F));
    initial
        begin
            $dumpfile("mux2to1_gl.vcd");
            $dumpvars(0,mux2to1_tb);
            $monitor($time,"A=%b,B=%b,F=%b",A,B,F);
            A=2'b00;B=0;
            #5 A=2'b00;B=1;
            #5 A=2'b01;B=0;
            #5 A=2'b01;B=1;
            #5 A=2'b10;B=0;
            #5 A=2'b10;B=1;
            #5 A=2'b11;B=0;
            #5 A=2'b11;B=1;
            #5 $finish;
        end
endmodule
