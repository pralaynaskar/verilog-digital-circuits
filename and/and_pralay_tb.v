// and_pralay_tb.v
`timescale 1ns/1ps
module and_gate_tb;

    // Testbench signals
    reg a;
    reg b;
    wire y;

    // Instantiate the AND gate
    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    // Stimulus
    initial begin
        $dumpfile("and_tb.vcd");
        $dumpvars(0, and_gate_tb);
        
        $display("A B | Y");
        $display("---------");

        a = 0; b = 0; #10;
        $display("%b %b | %b", a, b, y);

        a = 0; b = 1; #10;
        $display("%b %b | %b", a, b, y);

        a = 1; b = 0; #10;
        $display("%b %b | %b", a, b, y);

        a = 1; b = 1; #10;
        $display("%b %b | %b", a, b, y);

        $finish;
    end

endmodule