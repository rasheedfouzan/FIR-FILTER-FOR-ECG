module delay_element(
    input clk,
    input reset,
    input signed [7:0] x_in,

    output signed [7:0] x0, x1, x2, x3, x4, x5, x6, x7, x8, x9,
    output signed [7:0] x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,
    output signed [7:0] x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,
    output signed [7:0] x30,x31,x32,x33,x34,x35,x36
);

// Registers act as D Flip-Flops

reg signed [7:0] r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
reg signed [7:0] r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
reg signed [7:0] r20,r21,r22,r23,r24,r25,r26,r27,r28,r29;
reg signed [7:0] r30,r31,r32,r33,r34,r35,r36;

// Shift operation

always @(posedge clk or posedge reset)
begin
    if (reset)
    begin
        r0<=0; r1<=0; r2<=0; r3<=0; r4<=0;
        r5<=0; r6<=0; r7<=0; r8<=0; r9<=0;

        r10<=0; r11<=0; r12<=0; r13<=0; r14<=0;
        r15<=0; r16<=0; r17<=0; r18<=0; r19<=0;

        r20<=0; r21<=0; r22<=0; r23<=0; r24<=0;
        r25<=0; r26<=0; r27<=0; r28<=0; r29<=0;

        r30<=0; r31<=0; r32<=0; r33<=0;
        r34<=0; r35<=0; r36<=0;
    end

    else
    begin
        // New sample enters first register
        r0 <= x_in;

        // Previous values shift right
        r1 <= r0;
        r2 <= r1;
        r3 <= r2;
        r4 <= r3;
        r5 <= r4;
        r6 <= r5;
        r7 <= r6;
        r8 <= r7;
        r9 <= r8;

        r10 <= r9;
        r11 <= r10;
        r12 <= r11;
        r13 <= r12;
        r14 <= r13;

        r15 <= r14;
        r16 <= r15;
        r17 <= r16;
        r18 <= r17;
        r19 <= r18;

        r20 <= r19;
        r21 <= r20;
        r22 <= r21;
        r23 <= r22;
        r24 <= r23;

        r25 <= r24;
        r26 <= r25;
        r27 <= r26;
        r28 <= r27;
        r29 <= r28;

        r30 <= r29;
        r31 <= r30;
        r32 <= r31;
        r33 <= r32;
        r34 <= r33;
        r35 <= r34;
        r36 <= r35;
    end
end

// Outputs

assign x0  = r0;
assign x1  = r1;
assign x2  = r2;
assign x3  = r3;
assign x4  = r4;
assign x5  = r5;
assign x6  = r6;
assign x7  = r7;
assign x8  = r8;
assign x9  = r9;

assign x10 = r10;
assign x11 = r11;
assign x12 = r12;
assign x13 = r13;
assign x14 = r14;

assign x15 = r15;
assign x16 = r16;
assign x17 = r17;
assign x18 = r18;
assign x19 = r19;

assign x20 = r20;
assign x21 = r21;
assign x22 = r22;
assign x23 = r23;
assign x24 = r24;

assign x25 = r25;
assign x26 = r26;
assign x27 = r27;
assign x28 = r28;
assign x29 = r29;

assign x30 = r30;
assign x31 = r31;
assign x32 = r32;
assign x33 = r33;
assign x34 = r34;
assign x35 = r35;
assign x36 = r36;

endmodule
