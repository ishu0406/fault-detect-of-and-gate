module fault_detect(
    input A,
    input B,
    output normal_Y,
    output faulty_Y,
    output fault_detected
);

assign normal_Y = A & B;
wire faulty_A = 1'b0;
assign faulty_Y = faulty_A & B;
assign fault_detected = normal_Y^faulty_Y;
endmodule 