/* Code modified from P. P. Chu, FPGA Prototyping by Verilog Examples: Xilinx Spartan-3 Version, Lisitng 5.5 */

`timescale 1ns / 1ps

module falling_edge_detect
   (
    input wire  clk, resetn,
    input wire  level,
    output wire tick
   );

   // signal declaration
   reg delay_reg;

   // delay register
    always @(posedge clk or negedge resetn)
       if (!resetn)
          delay_reg <= 1'b0;
       else
          delay_reg <= level;

   // decoding logic
   assign tick = delay_reg & ~level;

endmodule