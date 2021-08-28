//module for d-flip-flop with synchrounous active-low reset
module dff(
   input D, RST, CLK, 
   output reg Q
);

always @(posedge CLK) begin
    //with a synchronous reset 
    if(!RST) 
        Q <= 1'b0;
    else
        Q <= D;
end

endmodule
