`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/25 14:35:04
// Design Name: 
// Module Name: speaker
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


module speaker(clk, rst, audio_mclk, audio_lrclk, audio_sclk, audio_sdin);
    input clk, rst;
    output audio_mclk, audio_lrclk, audio_sclk, audio_sdin;
    
    wire [15:0] audio_left;
    wire [15:0] audio_right;
    
    buzzer_control U1(.clk(clk), .rst(rst), .note_div(22'd191571), .audio_left(audio_left), .audio_right(audio_right));
    speaker_control U2(.clk(clk), .rst(rst), .audio_left(audio_left), .audio_right(audio_right), .audio_mclk(audio_mclk), .audio_lrclk(audio_lrclk), .audio_sclk(audio_sclk), .audio_sdin(audio_sdin));
endmodule
