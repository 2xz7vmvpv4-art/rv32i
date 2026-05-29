// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat May 16 22:58:13 2026
// Host        : o running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top IROM -prefix
//               IROM_ IROM_sim_netlist.v
// Design      : IROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IROM,dist_mem_gen_v8_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_14,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module IROM
   (a,
    spo);
  input [11:0]a;
  output [31:0]spo;

  wire [11:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "12" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "4096" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "IROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  IROM_dist_mem_gen_v8_0_14 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uwBH4JaTzmENPjp1VK18+NmHqz3idKCCPayqakkK6bYDVk0JtRfycJYNxbcnLmlw5yuLTcDXBBKk
FqBPE2n7wWKg9tfz2Y8PrWAvnbsIFMfxBK8sfWUf8PPnz8vUwwMHjbXUWcgCgvtygj/TbB+jcZ8Z
CjYnBZ8tNdKOO1iDLpQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ff7o4KDFniNgPFT3cDZtw4HhiKzFbOFtLXtuci0MZhgQ8oZ15BcuowAfxUJXngU8JkWI9cbWKkG8
h/PODwnWEt4eK4VDKRk6Hw3QkZiKAa1N3QupC8D5bR7vJ/+RhJwSayz9t2JpdZaEhKgCgqTcX6oZ
4fCEOmSTUWVob+DXV4UfaMyfVm5VI0wxZ7q0mjFx+pdkt56PuNREX9kH4a9Ma1P0sYo8XaTpANLa
JC6eXOuUQlp40M9F/NL1Xajpys0YfGx8AveMAFEyfRmHZs+NbXmny/79vednrm+FhwtS9LveegmF
NZW9jiiR+9Igeraaz+QXPc6JO/nCDTr4Fuwusg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
enb/INzHPP7GNdz8dyyqgVCJiMs9JXcjMywZXhzPersGm0A258UOUwtOqcF1rO7lnrKwTeWbNFVN
dO3BxXBpzGnYWUqDda208CYV9hTWFhfySQdX58qn1Z8QY5G7KniMCVjaGuPPCfToPOOdbAxR9XUp
XbMr0vrZKWxz8nBhGYc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RKZNANfa63/n14iwmSxsB/UeV76BNqjEiYgjlZ2LdFWOArCv6D+jhC4sjGMiaz8GJ8J5kQeiWB0Y
e1+zdHflgzODs6eVC82MlEcfgP0vdDIBn0PP8rVDg5O31eQuJ7n5zn4XJu+vzjpkvJIHKrktAsP4
jg+LRxcTOu0dILImk7Vwgyuwhi8OxNN+jBVbLVxdNj0l5aQMgRZlU/8FVh3u958SH7z/fHnwGaOw
P8QgNv0ZZblWvpxa8TJIwlgVb9354a0eyD9XsKy5VfuUG03nmputxNzUuIUmGtBGCqx+4D4pyCch
j/ixD5iiKRmeKD1/RtGzxmrJap7SAHMuzic1Hw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OQMD0qoDy+4W8+jfTV63GDTwmjWvJILCTofeYJTZqWc2KhrzQXwVMW48dTyIriC6bA4bmXD5BwcB
W2gGbVUvY1Y1+wEFEwYIC0LiPrJO0DhpM1JhP2vkxnTEwaODiEp5x3XqHgsiys0I2/9mE4z4Hlbl
jzftQ/8sVSYokhMp9eaIHk3HNCSBllv90qeBfH3fOdVI2gA1r/22PktttbkyKji24r7jM5o4aMIc
Sp6u0DCnD2cSPCuCuMW3A9sFRuTKbXiLAeeymFIAXHKYQgWXXOqmbKHrk4GviHQyz31C9d+hm6dh
RMtaCyWnhqo3QE/QxP0TsYk3CgkjDCU+KK/ozA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uV1eryjGs1SHbpKIAk5r3BY2SLKX9RlfGw6gbw/UtzBYt4U7vTBIy+x767ojEcmbGLos8kr8vilV
cnNOnsbu7vOAUIe+1PgpaPaCkv2OTPXaE0tfps6+Q6D3zB6j2a2FE1gRIPOniwAdlIn69jL2tuWD
M2BN1efQhi0lZHuKtTgzBOVXIg+zbTiH2k2kHWThOi6WayoBEny+g88wRi6pUBeB6aW3ezFYNmsl
zeOY9xmt+UhRMcr87DCcZdmjsIk6VrsIKF60y93pM0IoQ56iWpQ2OKZK+Ng9qC+pNHBEYEhiMQFb
kUesHtcFOIS7Ok6S9O9SMgf7lMQFOh9w0L31UA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GM2VxmvaiVBg1DsqOLewt6rcWtfH/Gj1QS7fUSMudF5qJ2fn+TXd8kcCwwrxdcXNXjoVi2As5jmL
yw1/NZreemrkS1YCJJDxmnE8CW2q9/4N4a79kApF1VfD5XdpaULhVn+Eb+jXCQFG+GEEOvnPb0Me
bbfRkfc0DAIWgtG2D81EQ28mg7KAWtsDpdUCi+BKdIAj8RXoTiQbFbiBeT7EiRIrz2PQF9nhQBfF
FjlrCNwDP4hRQJQeZcf/1Pl8SFyKGQb6iVF+VhhCVCunL7VBmzaCOW/gowPM7hRM2dvzmxcgeKfs
dZx/fy2rk1iokUi+3B+Jc6CycMWbHu8EfCh7iQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NSZoNMCco4gpYPcg8pb9mtee1JxEWDcDzt6wnS0LeSPMi2upLvQXnSQKMvJGGOKStJOcu1eu7x33
4Xa3ApbjbfZ+lgs1PYlyY4V+B2Lio1EEo1uzZVWFrVFvmknOZwj6Gcmj5N/osaiqKaeIw7NTTbyX
HNHOabVsQJ540qnP4u/nzS/h/AQcm0PFLadGZtHJZEzyQDSSdghD/y/OLprdBcInfQDwAxQuJpCy
ExX4lD2WMrCkymNBS9NMH0vYh4kvpYKRO/oHuGcOZVg0p8vfMmz/BJDHuxTcS3FpLT0WxGVcmUIk
cuqKQFiVwwgnW9AfYkbsMrwfl9po2pofaAY2JC5ZTMyO1qEfSu4fxTRJNnDRvW65KkMdJhZFa36p
82hcDlaYvBowndZfMc42Sxt+ZULFDTFN0HT50iteAG1yEvJ9jKBiJla+kDQJB0VD0kj4+k8aBug3
uPKVykvf1/Uaw8NoW591pML42qlh8v1RzAm6aDnPRdsDaCc5Dq9QDPuE

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oRNld8VrAuP/xHUguZzkh8+wROOItnvw1FQUP5KHjxeh8nudEYH2PGefTPsV73QyEruJanGifjCR
m8XHiIxqAY9fk4CAm+2n67YLFUEHjC1Qri9htrL4W5fnj7OIdzcwttvmGEuGOuYOFA98RcnR0jSL
Nyqq5u/eILCh2MiKiELfsBjRv/WckpboJ+gzO1btduECvdBGjsIcjjHiIzPwNSGxnX3G6zG9OiWq
hXP2Jh0Ril7rGbajit90p+gJpDpuLee/aOh0BUXbYYLU0YIXK8bskgMir7D6cfu5oWDKwYH6/YRR
tFjIhRzFsqwjtmaxUnGTZzxsWGazk+uFfHXl7w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19872)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
