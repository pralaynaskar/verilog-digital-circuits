// mux_4to1_pralay.v
module mux_4to1(
    input a, b, c, d,
    input s0, s1,
    output y
);
    // 4:1 Multiplexer Logic
    assign y = (s1) ? ((s0) ? d : c) : ((s0) ? b : a);
endmodule

