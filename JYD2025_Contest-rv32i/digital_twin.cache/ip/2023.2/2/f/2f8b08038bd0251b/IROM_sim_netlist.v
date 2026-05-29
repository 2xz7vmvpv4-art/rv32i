// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon May  4 23:08:19 2026
// Host        : o running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ IROM_sim_netlist.v
// Design      : IROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IROM,dist_mem_gen_v8_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_14,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [11:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [11:0]a;
  wire [30:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [31:11]NLW_U0_spo_UNCONNECTED;

  assign spo[31] = \<const0> ;
  assign spo[30] = \^spo [30];
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24:23] = \^spo [24:23];
  assign spo[22] = \<const0> ;
  assign spo[21:20] = \^spo [21:20];
  assign spo[19] = \<const0> ;
  assign spo[18:12] = \^spo [18:12];
  assign spo[11] = \<const0> ;
  assign spo[10:0] = \^spo [10:0];
  GND GND
       (.G(\<const0> ));
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_14 U0
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
        .spo({NLW_U0_spo_UNCONNECTED[31],\^spo }),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11104)
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
