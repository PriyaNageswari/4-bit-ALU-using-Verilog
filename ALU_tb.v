module ALU_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] sel;

    wire [3:0] out;
    wire carry;

    ALU dut(A, B, sel, out, carry);

    initial begin

        $monitor("sel=%b -> A=%b B=%b out=%b carry=%b",
                  sel, A, B, out, carry);

        A = 4'b1111;
        B = 4'b0011;

        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;

        A = 4'b1010;
        B = 4'b0101;

        sel = 3'b011; #10;
        sel = 3'b100; #10;

        A = 4'b1100;
        B = 4'b0011;

        sel = 3'b101; #10;
        sel = 3'b110; #10;
        sel = 3'b111; #10;

        $stop;

    end

endmodule
