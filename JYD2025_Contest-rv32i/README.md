# RV32I 五级流水线 CPU — 150MHz

基于 RISC-V RV32I 指令集的五级流水线处理器实现，使用 SystemVerilog 编写，已在 Xilinx FPGA 上通过全部 37 条基本整数指令的验证，目标时钟频率 150MHz。

## 项目概述

本项目实现了一个完整的 RV32I 五级流水线 CPU，采用经典五级流水线架构：取指（IF）、译码（ID）、执行（EX）、访存（MEM）、写回（WB）。设计目标为高频运行，通过多层次时序优化在 Xilinx FPGA 上实现 150MHz+ 的时钟频率。

### 核心特性

- **五级流水线**：IF → ID → EX → MEM → WB，每级之间通过流水线寄存器隔离
- **数据前递（Forwarding）**：支持 EX/MEM → ID 和 MEM/WB → ID 两级前递，减少流水线停顿
- **冒险处理**：
  - RAW 数据冒险：通过前递 + 停顿（stall）机制处理
  - Load-Use 冒险：MEM 级 load 指令产生停顿，等待数据就绪
  - 结构冒险：MEM 级 load/store 冲突通过状态机（NORMAL → STALL → DRAIN）处理
  - 控制冒险：分支/跳转在 ID 级解析，taken 时冲刷 IF/ID 级
- **时序优化**：
  - EX 级前递数据寄存器化，切断 EX ALU → ID 前递 → ID 分支比较 → IF NPC 的关键路径
  - 外设地址通路提前到 EX 级驱动，BRAM 获得 EX+MEM 两个周期的地址→数据往返时间
  - ALU 减法器按需使能，非分支指令时关闭 8 级 CARRY4 链
  - 外设接口寄存器化，切断 EX ALU → perip_bridge → BRAM 的组合逻辑路径
- **双时钟域**：CPU 核心运行在 150MHz（PLL 倍频），外设运行在 50MHz，通过 2-FF 同步器处理跨时钟域信号
- **复位同步器**：异步置位、同步释放的 3-FF 移位寄存器，避免复位释放时的亚稳态问题
- **外设桥接**：统一地址空间的 MMIO 接口，支持 LED、七段数码管、开关、按键、计数器
- **UART 通信**：9600 波特率的串口收发模块，用于上板调试

## 技术栈

- **硬件描述语言**：SystemVerilog
- **综合工具**：Xilinx Vivado
- **目标器件**：Xilinx FPGA（具体型号请根据实际填写）
- **验证方式**：上板验证 + 波形仿真
- **目标架构**：RISC-V RV32I（32位基本整数指令集）
- **开发环境**：Windows + Ubuntu (WSL)

## 支持的指令（37 条）

### R-Type（寄存器-寄存器运算）

| 指令 | 功能 | ALU 操作 |
|------|------|----------|
| ADD | 加法 | A + B |
| SUB | 减法 | A - B |
| SLL | 逻辑左移 | A << B[4:0] |
| SLT | 有符号小于置位 | ($signed(A) < $signed(B)) ? 1 : 0 |
| SLTU | 无符号小于置位 | (A < B) ? 1 : 0 |
| XOR | 按位异或 | A ^ B |
| SRL | 逻辑右移 | A >> B[4:0] |
| SRA | 算术右移 | $signed(A) >>> B[4:0] |
| OR | 按位或 | A \| B |
| AND | 按位与 | A & B |

### I-Type（立即数运算 / 加载 / 跳转）

| 指令 | 功能 |
|------|------|
| ADDI | 立即数加法 |
| SLTI | 立即数有符号小于置位 |
| SLTIU | 立即数无符号小于置位 |
| XORI | 立即数按位异或 |
| ORI | 立即数按位或 |
| ANDI | 立即数按位与 |
| SLLI | 立即数逻辑左移 |
| SRLI | 立即数逻辑右移 |
| SRAI | 立即数算术右移 |
| LB | 加载字节（符号扩展） |
| LBU | 加载字节（零扩展） |
| LH | 加载半字（符号扩展） |
| LHU | 加载半字（零扩展） |
| LW | 加载字 |
| JALR | 寄存器间接跳转并链接 |

### S-Type（存储）

| 指令 | 功能 |
|------|------|
| SB | 存储字节 |
| SH | 存储半字 |
| SW | 存储字 |

### B-Type（条件分支）

| 指令 | 功能 | 判断条件 |
|------|------|----------|
| BEQ | 相等时分支 | A - B == 0 |
| BNE | 不相等时分支 | A - B != 0 |
| BLT | 有符号小于时分支 | A - B 的符号位 |
| BGE | 有符号大于等于时分支 | ~(A - B 的符号位) |
| BLTU | 无符号小于时分支 | A < B |
| BGEU | 无符号大于等于时分支 | A >= B |

### U-Type（高位立即数）

| 指令 | 功能 |
|------|------|
| LUI | 加载高 20 位立即数到寄存器 |
| AUIPC | PC + 高 20 位立即数 |

### J-Type（跳转）

| 指令 | 功能 |
|------|------|
| JAL | 跳转并链接（PC 相对寻址） |

## 项目结构

五级流水线150MHz/
├── new/ # RTL 源代码
│ ├── myCPU.sv # CPU 顶层模块（流水线互连 + 前递网络）
│ ├── stage_IF.sv # 取指级（PC + NPC + IF/ID 流水线寄存器）
│ ├── stage_ID.sv # 译码级（译码 + 分支判断 + 冒险检测 + 前递 MUX）
│ ├── stage_EX.sv # 执行级（ALU + EX/MEM 流水线寄存器 + 前递寄存器化）
│ ├── stage_MEM.sv # 访存级（存储器接口 + 结构冒险状态机 + Load 停顿）
│ ├── stage_WB.sv # 写回级（写回数据 MUX）
│ ├── PC.sv # 程序计数器
│ ├── NPC.sv # 下一地址计算（顺序/分支/跳转）
│ ├── ALU.sv # 算术逻辑单元（16 种操作 + 分支条件生成）
│ ├── Control.sv # 主控制器（opcode → 控制信号）
│ ├── ACTL.sv # ALU 控制（opcode + funct → ALUControl）
│ ├── IMMGEN.sv # 立即数生成器（支持 I/S/B/U/J 五种格式）
│ ├── RF.sv # 32×32 位寄存器堆（异步读、同步写）
│ ├── Mask.sv # 加载数据掩码（LB/LH 符号扩展）
│ ├── MUX2_1.sv # 2选1多路选择器
│ ├── MUX4_1.sv # 4选1多路选择器
│ ├── defines.sv # 全局宏定义（总线宽度等）
│ ├── top.sv # FPGA 顶层（PLL + UART + 外设控制器）
│ ├── student_top.sv # 学生顶层（CPU + IROM + 外设桥 + 复位同步）
│ ├── perip_bridge.sv # 外设桥（地址译码 + MMIO + CDC 同步）
│ ├── uart.sv # UART 收发模块（9600 baud）
│ ├── twin_controller.sv # 双向控制器（UART ↔ 虚拟外设交互）
│ ├── dram_driver.sv # 数据存储器驱动
│ ├── counter.sv # 计数器外设
│ ├── display_seg.sv # 七段数码管驱动
│ └── seg7.sv # 7段译码器
├── ip/ # Xilinx IP 核
│ ├── IROM/ # 指令存储器（Block RAM）
│ ├── DRAM/ # 数据存储器（Block RAM）
│ ├── DRAM_BRAM/ # 数据存储器备用
│ ├── pll/ # PLL 时钟（50MHz → 150MHz+）
│ ├── pll_1/ # PLL 备用配置
│ ├── counter_0/ # 计数器 IP
│ └── counter_1/ # 计数器备用
├── .gitignore
├── LICENSE
└── README.md

## 流水线架构

┌─────────┐ ┌─────────┐ ┌─────────┐ ┌─────────┐ ┌─────────┐
│ IF │───▶│ ID │───▶│ EX │───▶│ MEM │───▶│ WB │
│ 取指级 │ │ 译码级 │ │ 执行级 │ │ 访存级 │ │ 写回级 │
├─────────┤ ├─────────┤ ├─────────┤ ├─────────┤ ├─────────┤
│ PC │ │ 译码 │ │ ALU │ │ 存储器 │ │ 写回MUX │
│ NPC │ │ 立即数 │ │ ALU控制 │ │ 接口 │ │ │
│ IROM接口 │ │ 寄存器堆 │ │ │ │ Mask │ │ │
│ │ │ 控制器 │ │ │ │ │ │ │
│ │ │ 冒险检测 │ │ │ │ 结构冒险 │ │ │
│ │ │ 前递MUX │ │ │ │ 状态机 │ │ │
└─────────┘ └─────────┘ └─────────┘ └─────────┘ └─────────┘
▲ │
│ 分支/跳转 │ 前递
└───────────────┘ EX/MEM → ID
MEM/WB → ID

## 存储器映射

| 地址范围 | 大小 | 用途 |
|----------|------|------|
| `0x8000_0000` | 16KB | 指令存储器（IROM，Block RAM） |
| `0x8010_0000` – `0x8013_FFFF` | 256KB | 数据存储器（DRAM，Block RAM） |
| `0x8020_0000` | 4B | 开关 SW[31:0]（只读） |
| `0x8020_0004` | 4B | 开关 SW[63:32]（只读） |
| `0x8020_0010` | 4B | 按键 KEY[7:0]（只读） |
| `0x8020_0020` | 4B | 七段数码管（读写） |
| `0x8020_0040` | 4B | LED[31:0]（读写） |
| `0x8020_0050` | 4B | 计数器（写 `0x8000_0000` 启动，写 `0xFFFF_FFFF` 停止） |

## 时序优化设计

本项目针对 150MHz 高频运行进行了多项关键时序优化：

### 1. EX 级前递数据寄存器化

问题：EX ALU → ID 前递 MUX → ID 分支比较器 → IF NPC MUX 形成关键路径
方案：ex_wdata 在 EX 级寄存器化，延迟 1 周期输出
代价：EX→ID 的 RAW 冒险全部变为 stall（而非前递），由 EX/MEM 级前递补偿

### 2. 外设地址提前驱动

问题：EX ALU → perip_bridge → BRAM 地址→数据 路径过长
方案：非访存指令时，perip_addr 从 EX 级驱动（而非 MEM 级）
效果：BRAM 获得 EX+MEM 两个周期的地址→数据往返时间
保护：MEM 级有访存指令时，EX 级通过 mem_allow_in 停顿

### 3. ALU 减法器按需使能

问题：32 位减法器的 8 级 CARRY4 链在非分支指令时无用
方案：仅分支指令（ALUControl[3]=1）时计算 A-B，其余时固定为 0
效果：从关键路径上消除无用的进位链

### 4. 外设接口寄存器化

问题：EX ALU → perip_bridge → dram_driver → BRAM 的组合逻辑路径
方案：student_top 中对 perip_* 信号统一寄存器化
代价：访存延迟 +1 周期，由 stage_MEM 的 load_stall 补偿

### 5. 跨时钟域同步

问题：外设信号（50MHz）与 CPU（150MHz）之间存在 CDC 违规
方案：perip_bridge 中对 sw/key 信号使用 2-FF 同步器
效果：修复 WNS=-0.228ns 的 CDC 违规

## 运行仿真

### 环境要求

- Xilinx Vivado 2023.1+（用于综合和实现）
- 支持 SystemVerilog 的仿真器（Vivado 内置或 VCS）

### Vivado 仿真步骤

```bash
# 1. 打开 Vivado，创建工程 {#1-打开-vivado创建工程  data-source-line="492"}
# 2. 添加 new/ 目录下所有 .sv 文件为设计源文件 {#2-添加-new-目录下所有-sv-文件为设计源文件  data-source-line="493"}
# 3. 添加 ip/ 目录下所有 IP 核 {#3-添加-ip-目录下所有-ip-核  data-source-line="494"}
# 4. 设置顶层模块为 top {#4-设置顶层模块为-top  data-source-line="495"}
# 5. 运行仿真 {#5-运行仿真  data-source-line="496"}
# Flow → Run Simulation → Run Behavioral Simulation {#flow--run-simulation--run-behavioral-simulation  data-source-line="497"}
``` {data-source-line="498"}

### 预期结果

- 全部 37 条指令功能正确
- 流水线冒险处理正确（无数据冒险导致的错误结果）
- 时序报告：WNS >= 0（满足 150MHz 时序要求）

## 设计要点

- **数据通路**：五级流水线，分离式总线（IF→ID 64bit，ID→EX 155bit）
- **冒险处理**：前递 + stall 混合策略，ID 级集中判断
- **分支策略**：无预测，ID 级解析，taken 时冲刷 IF/ID（1 周期惩罚）
- **时钟频率**：CPU 核心 150MHz+，外设 50MHz，PLL 倍频
- **存储器**：IROM 16KB + DRAM 256KB，均使用 Block RAM 实现
- **复位策略**：异步置位、同步释放，3-FF 移位寄存器确保干净的复位释放

## 后续计划

- [ ] 添加分支预测器（BHT/BTB），减少控制冒险惩罚
- [ ] 添加 CSR 指令支持（CSRRW/CSRRS/CSRRC）
- [ ] 添加中断控制器（PLIC/CLINT）
- [ ] 流水线扩展为超标量（双发射）
- [ ] 添加 Cache（I-Cache / D-Cache）
- [ ] 性能优化：关键路径进一步缩短至 200MHz

## License

MIT License - 详见 [LICENSE](LICENSE)
