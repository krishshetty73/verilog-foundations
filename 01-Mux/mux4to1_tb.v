`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 22:34:57
// Design Name: 
// Module Name: mux4to1_tb
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


module mux4to1_tb;
reg [3:0]a;
reg [1:0]b;
wire f;
mux4to1 M1(.in(a),.sel(b),.out(f));
initial
    begin
        $dumpfile("mux4to1.vcd");
        $dumpvars(0,mux4to1_tb);
        $monitor("Time=%0t a=%b, b=%b, f=%b", $time, a, b, f);
        a=4'b0000;b=2'b00;
        #5 a=4'b0001;b=2'b00;
        #5 a=4'b1101;b=2'b01;
        #5 a=4'b0101;b=2'b10;
        #5 a=4'b0111;b=2'b11;
        #5 $finish;
    end
endmodule
