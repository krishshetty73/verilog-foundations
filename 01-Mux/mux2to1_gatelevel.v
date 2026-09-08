`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2026 19:48:38
// Design Name: 
// Module Name: mux2to1_gatelevel
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


module mux2to1_gl(in, sel, out);
    input [1:0]in;
    input sel;
    output out;
    wire t1,t2,t3;
    not(t1,sel);
    and(t2,in[0],t1);
    and(t3,in[1],sel);
    or(out,t2,t3);
endmodule
