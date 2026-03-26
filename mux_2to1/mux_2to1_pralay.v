// mux_2to1_pralay.v
module mux_2to1(
    input a,
    input b,
    input sel,
    output y
);
    // 2:1 Multiplexer Logic
    assign y = sel ? b : a;

endmodule