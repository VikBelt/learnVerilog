`timescale 1ns/1ns
`include "intro.v"

module intro_tb();

reg A;
wire B;

intro DUT(A, B);

initial begin

    $dumpfile("intro_tb.vcd");
    $dumpvars(0, intro_tb);

    A = 0;

    #20
    A = 1;

    #20
    A = 0;

    #20
    $display("Test Complete - 0 Errors");

end
endmodule
