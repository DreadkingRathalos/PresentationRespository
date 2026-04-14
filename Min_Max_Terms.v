module Min_Max_Terms(
    input A, B, C, D,
    output F
);

    assign F = (A & ~B) | (C & ~D) | (A & C);

endmodule