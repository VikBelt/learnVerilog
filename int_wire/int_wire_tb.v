//module for the testbench for int_wire
`timescale 1ns/1ns
`include "int_wire.v"

module int_wire_tb ();

//declare vars. and instantiate the DUT
reg in1, in2, in3;
wire out1, out2; 

int_wire DUT(in1, in2, in3, out1, out2);

initial begin

   $dumpfile("int_wire_tb.vcd");
   $dumpvars(0, int_wire_tb);

   in1 = 0;
   in2 = 0;
   in3 = 0;
   
   #20
   in1 = 1;

   #20
   in2 = 1;

   #20
   in3 = 1;

   #20
   $display("Test is Finished");
   
end
endmodule
