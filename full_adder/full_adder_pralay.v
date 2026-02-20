module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output carry
);
    // Logic for full adder
    assign sum = a ^ b ^ cin;   // XOR for sum
    assign carry = (a & b) | (b & cin) | (a & cin);   // Carry logic
endmodule