module fault_detect_tb;
    reg A;
    reg B;
    wire normal_Y;
    wire faulty_Y;
    wire fault_detected;

fault_detect dut(
    .A(A),
    .B(B),
    .normal_Y(normal_Y),
    .faulty_Y(faulty_Y),
    .fault_detected(fault_detected)
);

initial begin
    $dumpfile("fault_detect.vcd");
    $dumpvars(0, fault_detect_tb);

    A=0;
    B=0;
    #10;
    $display("A=%b B=%b | normal=%b faulty=%b detected=%b",
           A, B, normal_Y, faulty_Y, fault_detected );

    A=1;
    B=0;
    #10;
    $display("A=%b B=%b | normal=%b faulty=%b detected=%b",
           A, B, normal_Y, faulty_Y, fault_detected );

    A=0;
    B=1;
    #10;
    $display("A=%b B=%b | normal=%b faulty=%b detected=%b",
           A, B, normal_Y, faulty_Y, fault_detected );

    A=1;
    B=1;
    #10;
     $display("A=%b B=%b | normal=%b faulty=%b detected=%b",
           A, B, normal_Y, faulty_Y, fault_detected );

    $display("Simulation finished!");
    $finish;

end 
endmodule