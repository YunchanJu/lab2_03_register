`timescale 1ns/1ps
module lab2_register(input wire clk,rst,button,input wire [7:0] sw,output wire [7:0] led);
wire reset,press; wire [7:0] switches;
input_frontend inputs(clk,rst,button,sw,reset,press,switches);
wire [3:0] stored,value; register_pair core(clk,reset,press && switches[0],press && switches[1],switches[7:4],stored,value); assign led={stored,value};
endmodule
