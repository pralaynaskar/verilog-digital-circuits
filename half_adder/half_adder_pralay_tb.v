// half_adder_pralay_tb.v
`timescale 1ns/1ps
module half_adder_tb;

    reg a;
    reg b;
    wire sum;
    wire carry;

    // Instantiate the half adder
    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    // Test sequence
    initial begin
        $dumpfile("half_adder.vcd");   // VCD file for GTKWave
        $dumpvars(0, half_adder_tb);

        $display("A B | Sum Carry");
        $display("----------------");

        a = 0; b = 0; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        a = 0; b = 1; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        a = 1; b = 0; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        a = 1; b = 1; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        $finish;
    end

endmodule