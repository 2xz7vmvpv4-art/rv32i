  `timescale 1ns/1ns

  module tb_top1;

      reg  clk;
      reg  resetn;

      // CPU 接口信号
      wire [31:0] irom_addr;
      wire  [31:0] irom_data;
      wire [31:0] perip_addr;
      wire        perip_wen;
      wire [1:0]  perip_mask;
      wire [31:0] perip_wdata;
      reg  [31:0] perip_rdata;

      // ========== 时钟 ==========
      initial clk = 0;
      always #3.333 clk = ~clk;  // 150MHz (周期 6.666ns)

      // ========== 复位 ==========
      initial begin
          resetn = 0;
          #100;
          resetn = 1;
      end

      // ========== 指令存储器 ==========
      reg [31:0] inst_mem [0:4095];
      initial begin
          $readmemh("inst_ram.mem", inst_mem);  // 加载测试程序
      end
      assign irom_data = inst_mem[irom_addr[15:2]];  // 按字寻址

      // ========== 外设 (简化) ==========
      initial perip_rdata = 32'h0;

      // ========== CPU 实例化 ==========
      myCPU cpu (
          .cpu_clk     (clk),
          .cpu_rst     (~resetn),
          .irom_addr   (irom_addr),
          .irom_data   (irom_data),
          .perip_addr  (perip_addr),
          .perip_wen   (perip_wen),
          .perip_mask  (perip_mask),
          .perip_wdata (perip_wdata),
          .perip_rdata (perip_rdata)
      );

      // ========== 自动记录 trace ==========
      integer fd;
      initial begin
          fd = $fopen("trace.txt", "w");
      end

      // 每个时钟上升沿记录写回信息
      always @(posedge clk) begin
          if (resetn) begin
              // 用层次引用访问内部信号
              // 路径格式: cpu.模块名.信号名
              // 你需要根据实际模块名修改下面的路径
              $fdisplay(fd, "PC=%h wdata=%h",
                  cpu.stage_WB.wb_pc,
                  cpu.stage_WB.wb_result);
          end
      end

      // ========== 仿真控制 ==========
      initial begin
          #200000;        // 跑 200us
          $fclose(fd);
          $display("=== Simulation finished, check trace.txt ===");
          $finish;
      end

  endmodule