module ALU(input [3:0]A, input [3:0]B, input [2:0]sel, output reg [3:0]out, output reg carry);
    always @(*) begin
        carry = 0;
        case(sel)
            3'b000 :{ carry,out } = A+B;
            3'b001 :{ carry,out } = A-B;
            3'b010 : out = A&B;
            3'b011 : out = A|B;
            3'b100 : out = A^B;
            3'b101 : out = A<<1;
            3'b110 : out = A>>1;
            3'b111 : out = ~A;
            default : out = 4'b0000;
        endcase
    end
endmodule
