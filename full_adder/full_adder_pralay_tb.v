// full_adder_pralay_tb.v
`timescale 1ns/1ps
module full_adder_tb;

    reg a;
    reg b;
    reg cin;
    wire sum;
    wire carry;

    // Instantiate the full adder
    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .carry(carry)
    );

    // Test sequence
    initial begin
        $dumpfile("full_adder.vcd");   // VCD file for GTKWave
        $dumpvars(0, full_adder_tb);

        $display("A B Cin | Sum Carry");
        $display("--------------------");

        a = 0; b = 0; cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);

        a = 0; b = 0; cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);

        a = 0; b = 1; cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);

        a = 0; b = 1; cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);

        a = 1; b = 0; cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);

        a = 1; b = 0; cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);

        a = 1; b = 1; cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);

        a = 1; b = 1; cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);

        $finish;
    end

endmodule