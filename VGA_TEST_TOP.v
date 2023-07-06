`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2023 05:04:02 PM
// Design Name: 
// Module Name: VGA_TEST_TOP
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


module VGA_TEST_TOP(
    input clk_i, rst_i, // 25MHz clk, active high reset
    output hsync_o, vsync_o,
    output [3:0] red_o, grn_o, blu_o 
    );
    
wire disp_active, clk_25MHz;
wire[10:0] xcol, yrow; 
wire[11:0] color;  
 
    
vga_top VGA1(.clk_i(clk_i), .rst_i(rst_i), .hsync_o(hsync_o), .vsync_o(vsync_o),
             .clk_o(clk_25MHz), .disp_active(disp_active),.xcol_o(xcol), .yrow_o(yrow)); 
VGA_TEST VGA2(.clk_i(clk_25MHz), .disp_active(disp_active), .xcol_o(xcol), .yrow_o(yrow),
              .color_o(color)); 

assign red_o = color[11:8];
assign grn_o = color[7:4];
assign blu_o = color[3:0];             
                 
endmodule
