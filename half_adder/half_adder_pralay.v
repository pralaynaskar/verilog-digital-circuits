module half_adder(
    input a,
    input b,
    output sum,
    output carry
);
    // Logic for half adder
    assign sum = a ^ b;     // XOR for sum
    assign carry = a & b;   // AND for carry
endmodule