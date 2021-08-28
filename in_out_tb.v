//Testbench for "In Out" circuit
`timescale 1ns/1ns
`include "in_out.v"

module in_out_tb();

reg in1, in2, in3;
wire out1, out2;

//instantiate the in_out circuit
in_out DUT(in1, in2, in3, out1, out2);

initial begin
    $dumpfile("in_out_tb.vcd");
    $dumpvars(0, in_out_tb);

    in1 = 0;
    in2 = 0;
    in3 = 0;

    #20
    in1 = 1;

    #20
    in2 = 1;
    
    #20
    in3 = 1;

    #40
    $display("Test Over");
end

endmodule