`timescale 1ns / 1ps
module ALU(
    input [3:0] sel,
    input [3:0] a,
    input [3:0] b,
    output reg[3:0] y
    );
    reg [3:0] sum;
    reg carry; 
   always @(*)
   begin
   case(sel)
   4'b0000: y=a+b; //Addition
   4'b0001: y=a-b; //Subtraction
   4'b0010: y=a*b; //Multiplication
   4'b0011: y=a&b; //AND
   4'b0100: y=a | b; //OR
   4'b0101: y=~(a&b); //NAND
   4'b0110: y=~(a | b); //NOR
   4'b0111: y= a^b; //XOR
   4'b1000: y=~(a^b); //XNOR
   4'b1001: y={a[2:0],a[3]};//Left shift <<1
   4'b1010: y={a[0],a[3:1]};//Right Shift >>1
   4'b1011: y=~a; //NOT A
   4'b1100: y=~b; //NOT B
   4'b1101: y=a+1; //Increment a
   4'b1111: y=a-1; //Decrement a
   default: y=a+b;
   endcase
   end 
endmodule
