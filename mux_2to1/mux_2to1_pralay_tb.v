// mux_2to1_tb.v
`timescale 1ns/1ps
module mux_2to1_tb;

    reg a;
    reg b;
    reg sel;
    wire y;

    // Instantiate the 2:1 MUX
    mux_2to1 uut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    // Test sequence
    initial begin
        $dumpfile("mux_2to1.vcd");   // VCD file for GTKWave
        $dumpvars(0, mux_2to1_tb);

        $display("A B Sel | Y");
        $display("----------------");

        a = 0; b = 0; sel = 0; #10;
        $display("%b %b  %b  | %b", a, b, sel, y);

        a = 0; b = 1; sel = 0; #10;
        $display("%b %b  %b  | %b", a, b, sel, y);

        a = 1; b = 0; sel = 1; #10;
        $display("%b %b  %b  | %b", a, b, sel, y);

        a = 1; b = 1; sel = 1; #10;
        $display("%b %b  %b  | %b", a, b, sel, y);

        $finish;
    end

endmodule