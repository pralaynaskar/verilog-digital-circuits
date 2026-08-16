// mux_4to1_tb.v
`timescale 1ns/1ps
module mux_4to1_tb;

    // Inputs
    reg a, b;
    reg c, d;
    reg s0, s1;

    // Output
    wire y;

    // Instantiate the Unit Under Test (UUT)
    mux_4to1 uut (
        .a(a), .b(b),
        .c(c), .d(d),
        .s0(s0), .s1(s1),
        .y(y)
    );

    initial begin
        $dumpfile("mux_4to1.vcd");
        $dumpvars(0, mux_4to1_tb);

        $display("A B C D S1 S0 | Y");
        $display("----------------");

        // Test Case 1: Select A (s1=0, s0=0)
        a = 1; b = 0; c = 0; d = 0; s1 = 0; s0 = 0; #10;
        $display("%b %b %b %b  %b  %b | %b", a, b, c, d, s1, s0, y);

        // Test Case 2: Select B (s1=0, s0=1)
        a = 0; b = 1; c = 0; d = 0; s1 = 0; s0 = 1; #10;
        $display("%b %b %b %b  %b  %b | %b", a, b, c, d, s1, s0, y);

        // Test Case 3: Select C (s1=1, s0=0)
        a = 0; b = 0; c = 1; d = 0; s1 = 1; s0 = 0; #10;
        $display("%b %b %b %b  %b  %b | %b", a, b, c, d, s1, s0, y);

        // Test Case 4: Select D (s1=1, s0=1)
        a = 0; b = 0; c = 0; d = 1; s1 = 1; s0 = 1; #10;
        $display("%b %b %b %b  %b  %b | %b", a, b, c, d, s1, s0, y);

        $finish;
    end

endmodule
