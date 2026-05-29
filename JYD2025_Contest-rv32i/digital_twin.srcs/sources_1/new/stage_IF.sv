`timescale 1ns / 1ns
`include "defines.sv"
module stage_IF #(
    parameter DATAWIDTH = 32,
    parameter RESET_VAL = 32'h8000_0000
) (
    input  logic                        clk,
    input  logic                        reset,
    input  logic [DATAWIDTH-1:0]        irom_data,
    output logic [DATAWIDTH-1:0]        irom_addr,
    output logic [`if_to_id_bus_WIDTH-1:0] if_to_id_bus,
    input  logic [`id_to_if_bus_WIDTH-1:0] id_to_if_bus,
    output logic                        if_to_id_valid,
    input  logic                        id_allow_in
);
    // 来自 ID 的反馈
    logic [DATAWIDTH-1:0] br_target;
    logic                   br_taken;        // 任何跳转 / 分支信号
    logic                   br_taken_cancel;        // 清刷 IF/ID 和 PC 更新标志
    assign {br_taken, br_target, br_taken_cancel} = id_to_if_bus;

    // ---- 地址生成 ----
    logic [DATAWIDTH-1:0]   pc,npc,instr;
    assign irom_addr = pc;

    // ===== PC =====
    PC #(.DATAWIDTH(DATAWIDTH),
         .RESET_VAL(RESET_VAL)
    ) pc_inst (
        .clk(clk),
        .rst(reset),
        .en(id_allow_in),
        .npc(npc), .pc_out(pc)
    );

    // ---- IF/ID 流水线寄存器 ----
    logic [DATAWIDTH-1:0]   if_pc, if_instr;
    logic                   if_valid;

    // 强制将 pc+4（1级CARRY4）与 id_pc+imm（8级CARRY4在ID段）分离
    // 阻止 Vivado 将两者合并为 pc + (br_taken ? imm : 4) 这个32位加法器
   logic [DATAWIDTH-1:0] seq_pc;
    assign seq_pc = pc + 32'd4;

    // 中间线网隔离，确保 npc 为纯二选一MUX而非加法器
    logic [DATAWIDTH-1:0] npc_mux;
    assign npc_mux = br_taken ? br_target : seq_pc;
    assign npc = npc_mux;

    assign instr = irom_data;

    assign if_valid = ~reset;

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            if_pc    <= 0;
            if_instr <= 0;
            if_to_id_valid<= 1'b0;
        end else if (id_allow_in) begin
            // Only update when ID can accept new instruction
            if (br_taken_cancel) if_to_id_valid <= 1'b0;
            else                 if_to_id_valid <= 1'b1;
            if_pc    <= pc;
            if_instr <= instr;
        end
    end

    assign if_to_id_bus   = {if_pc, if_instr};
endmodule
