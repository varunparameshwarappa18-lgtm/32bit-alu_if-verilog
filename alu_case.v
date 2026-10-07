// 32-bit ALU (case-based behavioral modeling)
// f selects the operation: 4 logical + 4 arithmetic
module alu_case(y, a, b, f);

  input  [31:0] a;
  input  [31:0] b;
  input  [2:0]  f;
  output reg [31:0] y;

  always @(*)
  begin
    case (f)
      3'b000: y = a & b;
      3'b001: y = a | b;
      3'b010: y = a ^ b;
      3'b011: y = ~(a ^ b);
      3'b100: y = a + b;
      3'b101: y = a - b;
      3'b110: y = a * b;
      3'b111: y = a / b;
      default: y = 32'bx;
    endcase
  end

endmodule
