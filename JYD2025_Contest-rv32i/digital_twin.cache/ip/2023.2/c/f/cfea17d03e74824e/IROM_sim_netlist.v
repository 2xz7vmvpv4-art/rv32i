// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat May 16 22:58:13 2026
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20064)
`pragma protect data_block
CHvP2lIBaV1ip4hqV5hBwEmMDEyvzrWCOWOisBD1hR4FD1ZGBZjXTldxWxXv8xHnyhrQTipynAiq
V+iIJJ7cQKb7WFGnaZoEGW0O35NelWqvd+B7xW+mQpyC9kmzlkh5lBBkr6KHHDCkZR8PBZccfKF6
cbnXQ1UvsR/dEA4fPJnEwa7PWbLSRiKTII7aBggLONL7D16D6Bfn85AA2VLYLYoSe7kSd9vd27q7
hqvlgvwY8c14/L4aK/CgD6XY7b4nXSBtzsFWkioNTdVR2XP48/QSJCZ/TnKJI18UuKiSydVbue4U
ML0ClkgGSlB1P5yIDEgOeIuvNJCy2qqt2JK+553KggExVXC7DNYgMNwIqJTbwtfrApNAj4+uNHSy
2OxTjHlnxPvZa6Krtdn83E0FHvw5cflKerGWHs6uJMe/7ISgHpkzSesuhQNkyEvdBTn4bbSchqsO
yRY4FKzHZAzqw8RvOJRWPbxRECkD8KAksY23eQg9RVMWXe7KuoukhHsJXyT43t6Bw6QFgyAsABEA
zaehq8H3IrFyubULKpKJePq3HB/dzdj3VudXN/Qpm2Nr02Wv7N+nL89jVXAycys84IeWRcbFpGYn
NjFODR7xX1+MdAW/XPmbIe74aR6C/BIdbxKGG4w283rUsNj94OWyMtuJzTwB+8fES3IoAr5jWWA0
3TAXVFX9bg7TcWBF5Bh6MYBdyp+npUjvLK4qs8fL3UmzD0XZxXtvOaaqxJF0YelPw4pxSE+Vj+5J
2ZhC2bQTeTLUAIYa1s5XluHfRgth3h89x9Q/XqC67vc2JuJdcUd1wzmscrnXnJze5PHgBVYxkskl
RhBaOYdAFbua8Xj0EeWknbpGPB4xCR8vvEaw6uFr8N2cIEduW5mNJScfNEkXB38xrjeEFBDkhg++
hLMtp36S0UFcuDOYTHLVscT/uzfiC9ckfAKb9THUa7bRbT7EpvEaEYw8C4SlQUlJAQ9qWGiJvTa5
kKYahYQscrJ8d40jtCkkTc07c93SzOWJJoWMyRRQv0EtSk418aTI0wjkUUfEA9uGHcUbnBXTuUno
OwJB0ruN3/XYUiSbJzirDajASFNMnKTvk8dqnPBER4DGvIyZlqSL0TgO23FngUC0MmMOG85trFsJ
+x8Z1Jt5Xl++FzYtCTRZUsh9eeQ7MML7wwDeJ1e/ulRtQEg8globRcEozce2o1h+2zHReYEaOkpp
ZgenJhbfnAKX9aAAYPiIvDRPoLGWtAzzK98oRJC7zVwnWTGh/DYhuYFwLanUK2tXiTFfu8doY5CC
m/XpAYy32T0IRu3HTCNgNfGACif5tL/RmxvXRMDfrm5INiCjpeSeonmotm9reSOuqYHNjdwBb+jF
O/PbkNkDLTtj3WkzPRipQ1XzjO9WUYVjDanM4t0i5wSsM7vxrQRKdE/UD+1xG+7MiPaHLzbkEHMW
tUQcgKHB46KQ5KWY7BG3/xjtWhY6QXpLxfFaX4MmNzU6hkL3xgsHklUsFBqpO+M0mPTfsnybWopu
mQidVQ/E0tqie6v5FW+CoNfYuZP/+qfT1ajA0iP/5lpgZtuuhcI7wuCH+yxBfWWyTt1iVnnzjmLt
9rKTNFUpU9k4c5C/3TVUFGKmYyr+aGSrbtkJBbgn1kguzgxWxVACvbVxj/6flXR/X4KpyQB9w/Pr
L7XmsJ7PuAtnuOgwgUI8pETZ3rj0DskqYtf9NfndJ6AxAM4b1GzHhpTCuZpQAjXI5b2SOWuZwkdv
wHDr3ifiZYn+ppo3NOptfwHA7xHA605GpKmO7I7XEwGRH6fIVF0CDvZPKnwf8lv6ghi07lwjjG7u
7yQYRV91Dqc0qfeu8bfcIdFLcSm9btc49smoxyzMe1Y9Z0MyVC7VFOgTmXisXd7fVLB6jYPWR+gA
SIeL4c0jt5Y1XVHfTu2FyYmVXr0xe5THVtbjEHkI+hLqp/DHcKeI0GGnBa6Q81/VM0zn31kSj9Ix
KRD9T19MtQdm/CQnw/GLymSoTeTbpgJ4JS+A7NcfCg0jUEPHrjdlGS+5gujv0er9YkesqqLiIgfL
1jReYbmYAjqjmbOFW4ETq4bZfCAj5DIusZRTpydJgwrYiExlTEP7RrKfh2QBixaJMcwiARlnt1FP
9zUrcUtwOzcvsT1GtTbUGonmxvP4j/ZVCU0ZVyolj2BkQigP/tLeauYiyl0ACF23L+Sg+3HuH2lL
pbzHl7+T3eRgWN7JJNsIj1kV1K1MCIUuyCs1SE3n28YOf6L2bEOtD/RhxSMfSXXMnZDMGU/6kRq7
xURvKEZIF0ieDbDeHzp9cqNRl+DRY7bUQ70viJlR+73VZWNtW7SMXebzdKqLBUsg1LaPFjFlaPvF
dtH72o0fXB6A65iVswUeLTcqTCZR62IchUtQc+NokP3kuNNRYL29BqdZXLWtPjQfreT3ry88mzFG
u0iRsBIH3KbzAWQPFP/7pp27jJ0ougqz5g+ByqOCiBTNzoxkVo/TdpgeTvd5qj8YNzgOHOdjtFr/
lAb0knRKrv2Vtb12ILiOLYkhiMGWxLBQBwE98H6zL7aAoq4G/MgG8pHFiVIfVhSGC3nBidozCT6F
602rroN9E0WzboFeOcYuvXf7b2NZErBb0NZyR0SCP8lYfLck0sP8hFUNwD8sbeLiVnEOtzQ6blYx
Idp1zW+6ImUMiVeVT0zMKQAOMilPVWr9PFQvFNOgaoOQWIQL6Ewd4HRmbwxlrXlvfyKtZGKQsEd6
h7s6E/ds5m+xFXo59RLOli1T6S6REfNu+fU861HKwFIABAUTLGKYpdb7ifn5Q2aVDlbpziKL95OA
kb12dru4v18qcq3Y7dqW8XLlMz94TRu5EWPTNpXmExX8GEFiMDi/nWTluDh33wzdaENvGyLq+KGt
JPHGwf5BAmG+aw06ZEZbs2HxtK7YwiiZiZ0YoSYaQ1I1ob0RH/cak8ozOWH+dyrpzgW+2vdX1llJ
e+AungXb5kpVB+J5MQ3LvsaairBo1x8E3s7rYRbiY3Aen2YimgGRAEkvGxjFfGJLA5hC95NKKBls
6NBR8Wc8zqQk47DlyaCCGYOm5arvi5qXJbOVmRrq2tgNGZ9yduurmwswVq/EwK1jPbXNhDAp4DyV
FQwEs+Vk1RJqKqVUUztoDc3TeStCM3p5DFjWhtAci8+8nR5d0VitQdj9VzjHx347HsWhU8yuILdv
EckQMSxwNFuKaYqt8m2pGi5EKNovoi44NWePXfEhx5Ywizg/6HBA5kGdIZyIE1pjZTRCvMQPKpKd
eX0mgRlphZ3yuuMM7tkO4H9FDdYSRT/XLcfdiIZ5NTUlzvfi6HwbRcC+rQmV/hE+lPbtgR82HBK5
y0pfjPen42wrFgX33l8QHpWw5N7Gngo9UYET0USvonpO9jewi8DjIPIU7dmJ5ekmHCNnDmTohxLx
UvwHv2hLaV2mP8s9XGIgksj15yWHJLEBKv4G9n/dbRFBAVJYZXZLWS/3JfjA4/aC6gKMM26ox6Bt
di7nbjgkY0aXra8v3eCupDDygHVip0GSBjI6YEOilYex8pgtMiJR52zwxQEqb3D0VbKGdolXpPzz
y9CZ7TP5mKENOsUJ1XOLoO6UoITadkC7bIYr+8InNKo+eNjwc29tcyr+3a8I95h4MIpyclRug9AH
vQqWortO+hQo0Vi3ZFcT0Ke+01VoGeRWNls95ln5bq9Xsuq1MKi6KhQO491H4bOKsw2RKWlpc7Ar
Zhy8I1NO6boqkCk+upYA/AZGAvguEo/tc09NKHafghCLBf8okCx2mi2nOcc5a4i0wdTyphnS4FD7
XZigsh40ss6ku/g1MIaKNFq1f6+8eiqWoqnwAltJAfXkDFQhEc9RQe+cbTvQpxsT2wm645GQZHhL
2EmN9u7RHskyk3nvA6dXPwUyil3kNw/FW9trTB143kbdoydxW5HcvRUQeJ3xb7x1/w0iQriMan6u
3H68uHcb7IEkDg5vcnWKuM90uLu2mDkSbXGVcoI3Lv1K+UqePuNqCsAsStFr1jVzHgkqPZWdVCuS
ap90cg1dUcCQM2C8c/BPEczfP4T8HVcTUx39t5AoFuFakFwZEs1k+yzawF16+LNW35oFq+PHGPFP
sJPChqvA85yl7kFLjIz9P6ZsetlgebjnYU3bAb48/VXkg4ZgOhGjvLbh04yH3ReqegZqrE1rSfzo
S/Us0YRCNOr6Lpvw0bGyZK3sfZLbKD2QF3kQkQs+IxJCoEtpHCaqtyNWheSDjJv9AGMUDvkJGeMH
M9BBl+toZx7UdrAcYtK44b1Bdjv9AlXPbfnyhgrxQZjM2S6F/123DCOhQuc53+dBbViy/ErDVVaT
rm8l6nkxR3fdMTcLfalXgawWLN2qHNwDvEnQhfMUtXhL76s9PKboG82lkpoDaRUGPVpBVj4AZ2mz
SmvGrXgJ/s8aocV9B7CCSUYlKG8ky9YaqmkOVObao1nYlE7DOQCnYhhCL3PH+jeuZBqLEZ25ptgx
UECFkw8H+j89zD+at6okZJpH8QO8Ps5jDi17tAKtoc0fdvaoqgDysicMfE+6H46FWTBofuA6BMlf
8osrsFMVqFILhMXyqVlqDek1lpC38FuXSHg/JMu2YtipSY8jlhq9YREgsKaNLuKdWD132N1qk5ig
1hrNtwfjohe7HTp5/oIIWOKiNeKXpT26d/lkxDD7C/+mxDntGxYZEgrnOAytwKfXTDefxelgzS6p
mTKIF/zz7wyxWrY5apCqx+wt2P+JTdvV6uOrtpECr9BQuvYVe6/J7Nr4ziFRcAlJJvx4KEm+VnI6
KExLJ86ZGOqvTriiSu02r/d/63RgZ/KSYeKxfgbpicWDnWst1ns3yMxCef2pKzOKpVkIiIE4onOy
W5qc2vSJeNtBjNCi3gBEGn9DHZpQe1sL3w+jI8RiO2MvHVXTRRBoa01y999Ak4rGdT0Wj3CxE/NS
JsA5gmIKJusavD4WrmNNXxVuMTOWqDOmjK3LA7gRvzLHmv5B4StN528nsc9bf7AQ3NyFoOZ6fKUR
7kiwUDObwIgzjKEJspkSOLJBQEH97Csw5SxIMxBa8+CiNEBwpp/EOX9NaBK+zi0vNOp8ZpGdnoFi
MlYpa+3Idf4VVTg9tt5pw6jUdFGJ3AGVBPvbgfoStuvYNw1LHNk+JAjPzXIp8ENfbqawOdwSSl4n
7QM3OhgUsfA+zduCeouE7IJGqDxvN2owSS6U2meHez2HYu6BEH/1QdU/O8Scqt94G0jt1rJYWlPh
pz7NCEexx3o3+Rmj87wQEq42yfBU7obR25JXRkoseaW1MKhSo9SHdg6GfghPzmd79irCgXSJ8WTD
Yd15ylYejP/63CYK1leTnxVz1O1vBf7nCzRa/oRVuXzmxi4nslrbVRUt1tp7UsfpP7bKMIqtQ+k+
H9VMELddnIy4BLygoqQ0POPDhVHQ/21KhbOcSiYBhgN8B0Xbz4xIceyGWnSgZdI4K+/Lf5pQd/it
gXRxxg3K1QDT79TgfjgSFSIN/LkCEnOGDQU5W3Db00DYU8Tx6sDZV+zYZWPfYpemR+gKsts6MjDt
rcuhsp4YgOflXI7TMELTrIy9B+CPFjs+13Om3EFZiXC9V57jKZRhvnmyC1qZsZwI6n0oJ59ljpVw
YbDBj5skIKD2fPFU/09uEMsuVWAo+DUre5HKZlblbswJPlk2ifAWoq0sGHf5Qnqh8HsfxhrM21I4
6Jl97vs5X4sKWzeQ+1CfxXjPpucPAbG4CAGZtoOZkHhoGUX0kPiexj9NQH5o5g8glUYEy73QQmzq
bQDzloIHg1XzKwxZtqfAxo6ekHP5Mu3biuSSgxdieZLUoiQ20hgmsMvEaS7E9kfC6YrTlanmAqaG
YuUIBEwOqS6IuXs4G0cd+wz9QLf1LcDDg6FUqnZac4w51cyDmlzPrU3rICadEb7p7qcDcVxDw0mR
VekE3UEneRyt1nDSNlKhqANkgeUEUvUd5Vp/JisMiLkBg24+Ivo7KEjz+m/7xzyz87vxjAB9ZK2J
szFxy9D3r/FJmUNH24WVFLTod3n7JSPdGKaq6oxHLWjsGDbz/kOd07MILB69Sx8LIOUD7mF9T9Yf
MzrDmj05EfDyxkglI9Z1TsWrkAdiLsQk+6KCT2dL9dTQFWgYvw41sVTBk73z0hjzwAEkjnWIvKHR
0elwKizHnDx3yO9NKrqwR2+kLhx1pkP9Yn9NVhu1DArG7jFAw3qLf+oOhbto6V1JBJ+v5mOxmZ7Q
/LLR9YnwPM1Ql68FLvCBvQs0Bt4kGvR08K10dYlGjHW3BR0maaqKf9VJ0+w/Zjv3CRH6G3961gD8
uevmkGOkYIHETLG8iT/3VdB8Qlws8lOTZMlMNecu558GjeWtBXMiGYHnyyhVVBaecg9bz2rJrYOb
oAmmD7YDLehKlpPJDuDrhBJC9T0htnv8z9S9I5n+vPECnK53yDbuHRSrOoK1I5M/FvYwnXkTo/Wj
E75/Mg1+TTDV6qCYFAFOqaSzAnGzpf9tfSgcO/vi76KoPoKDFfeV4xGC6lWF+m2PVVagev0KuDkZ
jBRP8O2PMe9VvRa1WNtKRTHUaUr4rSZk/+kk11OF+SxhpfhDHfC+YZsAFtgqdXlaAL3uaXY5irW7
5BxcFbs+HYrWaaRXYHMjWv4aF2rbq5SyoPD9V3O7KbrjaZUUZtK/sRvG6VWMA+sNrR/CruMP9nY2
cCnfk/TA3yXOsifho/t+db0FWTg3l7X5ZmroGh4ZgUaiuv6SsybVwkmI6fO/V8a7t0u8ClVZjm3e
cg4eMTSlbxiBxMXfXhAE9J72BYPZjFu7a3RMR6tA/V4TBb1s76lHTT5y9bEA5SJbQWwh1cV3cgQ3
WCEs7DcCbwRhyLPHjnrprqOsylbZ4nF1pmpPOooJG2P/ZugJUbJLZw6cZ7f+ctX/i2zx2vvOMdIZ
W3sVS7TEmJkRje9lsG09MjQ42eemntjaV9GgnhMxdjwZZKdAVZmdPB554z3jfxXGG853T5p8/GXj
iswFhDKnQOBlLWMjwm/FGB3PYRa6NeqsQKTMmh2onFO4Jb2LohEqdBGLKu3ltKLJaq41PvPAjZg4
OcTVlqvpJqWIhyxGHoFUZ4wiOrjuWr0Dr21bV3IPvGJoItU2Lt9uPKINo0g7NHBULv+O9lGM1zAe
/xz5kGoViMiRx15HuAlMhwidHqQ68b7/dPKfFxEzZAdcwxL4dMUfnVzlHRlwp2MCmveLlkFN/w20
SN4T3QGBeTRQHy85k+eTHbu+Y7GmgmNDXJ38QE8F1Crl/XuQb2EdQk11B/NonxyP4KKeeixO7Xbb
keVd/QnhnLYbaZ7JQUcrlrP598ZUnc91dF9LWjU8VtMV3GMdCUF1rLivn7yYS5rFm6p96MOf2Qgc
38n+3rAYNbuQBNYBg3wyJws9iBUfQUD1iw4+6WyD/Vn6r6ZrOkCBhUfq7kXT+jn6caHFOOvC5s7W
1A24l5dUM36FPHN2aU9oKZwjpgX9/X25TFiISuUybMAckayOvgELGv3h9DaP4Ixk/mRRXOVklUoq
17KSrxeHFiuODt2JDXKSr/mz1RSMZvIzADGu3LbvoR4O2FM9OzdmeV86uBdu37ngUuqpnDVG63cz
k5Sf7vETeGy9tohv5+jg94boOVkN/YQj406QHsLx9Dyr32W9yLKwpOBGCiHQRHrwnF1OHn80P4yc
9OMIlOUtBci5f5Otvt67EY+gXALnWXtV5ceOIjr36rGPszLM+GOSYGX288VsjucHkmRhiUkYZD0A
VUF0xa303ytcBDNJPEDmonMf1y3VRh+yZpq9907wuCTE2ZXXKuZGxIg3/1qN0GZ97uKgHAYUsBtJ
39zqZtyT2YZZN2/XoY2zakqCVWd4zInmKWKSJmyPzeLt+xfmKW/bLKo2CLX+Jptom6nJhexxvDkF
JqPJGhLhelxHPE6mS0SK5YSGMaDxB8zj1fHshPcQG4+7I77DlXFLP046gGqRWkOGyAjw+iX9OVpO
vywhcXsCGmMg/cNU0GVQTZwK61f+3hPcF1DZ4MKmtwqetP/cH+1SWza+cuet1LBqAIywr/EzAjcj
gkHa7VGuXMgsw3trtEjqLuLOngIWGIr0d7WspnjRtAFqW+9woECOoevmwGqBvL8IWAiJOZHxTybW
wcj67IFs0eaMKPXQeOuDlpDoqaprVjqqUAAGmniuQz1C7piCcfSt/cjoUBoqrUB2IrD+tod7QiNK
5ZPM8HwBkYnZNnLqh5uiBDhuILuevLmEbErmKXaYQsg2vRcUIvEnJQoegIDQWIGa5xwQUCR/MnbQ
4rMjSmN8IFmzXsiTKtUm1oZe/C/3v/U+NaeLGT9muD6UhlWrmFAfdxhN1bVLy5NR0n2Kje2kdtNL
rQDFHHdF/vE43/Nl2KTTNdzn2JBdUr9erUDMa6GfyxZcUyN2B/lIR8sU5b4exylgAVTV9xislF5U
r4Ua9i1hoPI72Wv3/Qrv781WvQoehm/tLjUZrUzYX/q9zjKILTPkSs7GliL7YHkoHmvFO7hn9n4x
ETIDaxi9qfIfqzq43OM5hjmzll+uikEgLr5oW58dDPTHMBNIK8zOtj8g2yEHwbPrbjFSMQ7n8z+q
yjrgf4611KhD91BJraCYhvBzDENZDPRT1JkomF9LnKxL2bd3OAyHLvlq0RnVow32KjT4Df1O1G/0
wovOk7FXMAfydaQ8/fOIORl9GmjtJ/rXAwkn3j4BAvWyON/2cBXI/Y8fEIEJDNhhhqtyaRPMD3qY
8ZvGxEdg70p8brWcWI22dmbgr9kOR4RMagSyjyOC0pw5+nxPyh2IqG0zAhLbuYXtRtO3rixNCxLF
fyWIj/qXlqQc8Wg78yJ3U+qvd5/5bleFssLzS4zTU8ipvGXXhAJymZW+GmDA9pDIoVxCyavTdA1I
x5gZOAWIe6jlA0YKG3SjFjQJxc0TheR4O4+UpCvOnsEe9B4LN+Z74dk7nX7FRUL/YhJ0dZxej85W
fQ5xPXukCGgPVVb//lhks8rMeb2vbc/auds7TzGUpz+zmHqjWKcah0UD1n+ltIiiUXZGC344KvFW
TnrL/x4CITC9W/KMkdwGiSchWLFpA9nx2hnSxm7AeK1eAcVorQR3QT1kdXcy0qonuAo36ssne1t1
J/ED6j791iIRVO7T01GW6tXqOfRJw8zzVYA73PatJmjcgsMcyYHu8gWwukQGajFWjaIuWcMI0hzK
0tyLdYM+TXLhh+LkBQkCxvNBHnr5z7UQC1bEeRK/UTwO04bML4Om+p75C6uSmlimQdqqIA4o+1tR
WWUngR1Dhw8gujDxXU35F8LzLZ+Zp6yHqrYWW3JpQnEaZpG2gYwwmPSkYa1qdb6USPU5IeWNj5B+
CXZFU5dVO+lqy2ZYVuZuFfRT3SxLUW8L9yilBAfLG6vHm8WJkodJ5A4g9C8YOec4Ajh2ejB31fK8
IxrHBqtCpB8QJTp+oIdC4feJ0wbhLVUXg1TTq8x0jmLsCRYOIZ1G8DvYowTbuqQ2FEv73U8l5Rwb
8yuPK+oaoJw2loSLNZ8DGdYVGRx9gqElY22ONS1mw6ALI2IrtVv1fM58KOrzRc2FVblf6ywl9LDZ
ZnXP9sKaWhET7fxiy1sPqFne2MR45PAkO75JvEOR//akzZ7U+KJx9ru2Nq3rX4bYdKYQgwkNy5i2
awPG+pAqVpb4VudrVOuMHGMjhgKFM0ydA2hOyjTM9rTVSiXliEVik99kT50crn9Do1Cwi3o94vy0
iDDU7zxRcZoYXJrTkxiUR8779mYrHjhIxsMNeb7Tf95DMlshNv1rUKLbZ3kmM3xheI1xxraagarE
nZKoLjQd0FuMGYSwk5ozxzA9EwgspmfXS3shSXjXOjv0D4plkoO5kw3OoHvXUTDMlTzsw5RYbKN0
pMsI0UF+6GRWsxfcC2HelAVoOqCrOEt5wr3yn0+fNuDb141k4SvLYdmL0B8B7XtS69AOPG0hBrkN
o0KdnhTduk8Oky7/IetMDr5Suxx++bhVWVjVUx1SdRhQNZf/EfWl19WYtIiGJMpOiyjGn44hWOEA
H5sHMzGB4xAFE37AuSej+tYhL8Hhqgwvw0/LTM373/Ec8q3zlnXXpYdkoGwyiegpvOxS0js+aRYd
oPiA1EdlWYzhumyeULVE7scNFN7iVOuuo+J90d75aCIRHefaAdmbnT9oBgHFWphn9G+q95SyrTit
cmi1HuubXIFug6A2w73FkyJ3gCS1EwgwwW+IfP7j/LaoxP+WUNx8Uk/a0uM9v5gbGZ4Es1l3Ftpk
0jJYpG6jcjxsGQ5FDeoJvzwtb+wyAcEzxSTouGzCmXtGw33UOkV0zkID62Yr62dzqK5H0CEHK9gn
aOqdPu63KUn3ISJjvwmM42CVU0vWlDeqBtNaflW2lKSBlo3OPF8z5vU1a5jQ2P7lpTzT+Gs7hNWA
eVUClL5G+OwNzCy8U2/KjSC4uLlUdHA/bp0LoPWm46SSeNalmp9ZTuzQ/e1tmd85hAE8qhilp8ig
qW/ZK4b3Ji6RE99a1pekLpzTbpXuTb2BtT5zmbK7qEl4UIfZqIAavw7DLPcfKCAKQ0C2P5IlLQze
g7ue5yqMslD0K+gXMeOIe/ka5MYWsc8qKSk7xtTUlR6RXpnz/dHVG46jcp1s+g/eIPaeJ8K2BF6Y
awX22sQYgXPQI77VwodLgXpGDNlPsZ9cfWhxpo49K7rdBe0nnYpr1RFS4uKyrRhD/JCTm+WWIR82
AED+4ZhUWmxX5ETI4jBNTtwMotbekdwU1XoI1ALXMI4nz+88KJ3cGIzQ4AageYbFyLXLSkhqYI7x
yi6ZsZzSbcjdlxANvWj5E4iXREIrDK3yzeU0hrXlOP0+E9O60LKyGPRu4zTEIMF6RvOTmXvH8lV+
K4YNe15HNrwWKDWAW4YQ+g/TiWvvBTc3Dn7aVa8s9V/uuOSld30mn5B5wHUk/4vMierZMe0tTbhH
lu/8+aRoWjjc89m7ot9m+88y9BlqIIrBKbDgVMzpBGXhYvKKgtMR8P7bJw243V+diRAQ7soCM9lj
SgMpuGdQL1Q/rQ3PuiTT8w2y1COPiFMGAp2WtT6/jvILmLxf/lfZc3rAIlkA++2lQ0lGIeyOZ7Rj
IaL5k8ioFHdJJE4tyIDIvHJQQKj9bjMUc0KBl6JZ/iF3VIHzoYmMidiC5o6xC31ecu7bQhuc5lHR
uSDL/Y4i2xX3asyQ2YuWCVIYykD7pr6PMzwBA0rg3uAv3bt5iGzqavCvXlRtj7v1p4xveTdlcDSr
nU+sehJ48dLIGU9mHKR3R+B5nif0tatIDCRYa9uzoSMN52Dqo0m4sgsQXC2OzWQW9qK+GXuo2DA7
IBerx+Sdg9z39tMkpBF+/x0LqwyEVjAgkNmcB3jHl92ZwHNH6Aka3RUZ2VMNlcUNEMPL1znTXr00
WFSXA3KwMnGSHzVhjEXfd1f7y+lGEHbtBZC+HfQ6povY4qGfGKHyH9tsUqFVIQ5ZUwEfmYu5W3a1
zajwi05BhSjSWF5ctz34KxujTWyvCA2GPM8iSWe9ZVeJ+jVQyF5tzEClKnk0y3S7adRGxpFvCebP
L4WIZu+0VTc6Zn+Ek0npXhRger1dMkrWK44SKo2kNXO7xX7FDYLhN+ZbnWNsasdw0ZAidc9YPqhg
LUlNo1gvp54BSo2gD02UBqAqnNCbF3QEQfmluGoi0mZZzDcoEVQLcdwdNwdlrhZ4XI9M3wF7+wB0
xP/Kka8W800oXxl9gWDWmgHgGvxnYEfMF4l8tPgVBY78s/R2oKP+Q2PeXImo9dx0D4HL5gEGmyZM
7v7c8mO5Ld7MN8AMi5OBNyvRq2w3rexDSCvm9AL0fUJk73xylNxs5tS1ZJl9D+v1jJot2AoEif6v
svP10MlXNp5bxeobWtCZ6jNPItEtuJpZUngJRsNftEc+vL2gSZsboaSddhzqsO9ezs0q8Wb8fYO8
WZyn0HSE93jABo28/N3KdfVUYhT5QmM/ltWmsOoK5ojFE/li2CGApSga7O2Y6pZK+SPiZTSqQvvS
IuR61w1trzIvLyVEfukkEFoNpHBJPkVQ2cUYu6f2NVa+hfPxxQq4fgy7Sul+3dqyyj6QzgPQCuJJ
2Dpyu1PEwIdfhzmQG95cDb/s5r43K/rVLpMSlcos6M/Lak/H4l8BPimqfvBAZzlbKUxe0nDzhvi6
OUaGUAzVQCJMo5emLHNiO/QJ1tBzir9pjL2DaxbxPgnx1olz9kNq6pW2v1CbwRw544kIc+NKvNOF
0F9sTSNONuJoafbYONvL4GGM1nvo69aMUULFgKACg/tRra8ArxQCw1RTN5uN2fUiVo1Yt+GYZnU3
aIbjnmfgqiif+ATtgVh+kQTxmrluPzBPMbrExCWTDRiLEj3q6CdSUDPESzXb/p5d1W+9H9YknQXa
POZZVWV5YyPgpZu4TTLaZQRlIuZB+cVzKDnG5yheQ0N86QVJxji2tDVxlY69z5UWgCLooMD5dEvQ
7wQGmtncSQOxNTP7dYHt4xrun9Bwuv8sZZcC5d7YEJLXcKEUev/2cIWQLmPb8ngYW4d5nCEGhv7I
RE0AoOeKFtqqLfyNVayeI/Y/n3WpcPDAab1MGzDDSvLB9bcexsBKitXJmDfL3j0gJ81tvtGD1Swk
1w0aiXsDAFN3xbeESmheun117l0n1K6pKZ63dAr2uBgokaqMGzSArHvRdD3X+/IInsif/WlcVeY1
sjQXApoBWApr2FjdTgGIST+emhhlYA7wx6pRSimubk20+umvURM0PlfpUfxZaMp/aMIkby6rqC7D
QMRTHQGfIdhhvPy74odWqRgvotazzr6i0nfY5vaweukAD9CUlA1O+v1RhuNe0EPmdyAU68K5icEF
tu/rlzV97vClLMcC4Z+MYNHzTbXK/ixbFWeBaNiMw8LZZ2czjQYF0GdkoFGB/R2AjdYK4op9Xx+V
UGM+IT1GAQKt6rLcpO3IY5DxKN94jkKeerQeToVq4187vGZ+zc/SGknoh2bEYXBS8Hth4BRr1w2p
7yX45CPwVqGvMYCF+7XeBZlKyySlDb7Ddq88qNNS7/2MLVvMmbdydko5agutc/wELaMeFsECpUvC
QaNu3r/R13W9sDsYYIOcE+9ajGLgKIwYUbVBwJPN929HyhfXNfhq0EFwsW56CWHZluAhcKKFhLgC
iFgDOvIOGv7EgNxiYTECMRqbLatT2o48EDNTHoipNN9mi1ijJhwwmpKMbpxAFoyvQs0nTq7s0ezi
MyDhjUKbBbEn753bYWzF45x7rzUdLHZjYZr3VL4CVIG0kEmYvWQMofpZB8rnkg9vhL2DXJO6SGE3
aE2yrnh7k2wQoQx67hNvwjyVvgFxSmIiTXNd2ikSIdxTvFVGttpijbnAPj6zpkiN7beJZNAxHqRk
C3ecB+016yc7xAacM1kOHxIleMiTiQ+5VaTxrtVhWVLFPO4ZbjjNDKHO3op9k7e+4nr7FrywGD+n
WxmsEcYhJlho87WwMsn+q6xgerub97vHfxzlNRvD/+hPm5C7/62DxH+7tHPagXRV04BWPvloDTmg
M5CydmhkCNxpPSXi0tSwdCh7s3O+7EytRSP2SDKNETvPFZcU4D+vyKkJt9xCjyebjZ0TLznuFk2T
WW2301ldY/baabkmQocubR99Gulk/e4TDt45SrKi9FnwphVxoLZZsZBlATm+SxzzY9Y9wGZWlLm7
g0CCU+r/7SroRZhLia6I6lRV9BSoL7WOo4zBZ3pvYMJjfJGd3cP2hJRTgltaT08KEelqPK4RMNut
QjbpZQyaWtrefufPlV+Jy1kkmq41kgN9gcPC5uWr6LKxgmZTG+KNK/oPkGMu9x2xrKw2K7eXJtxF
cy2/dc8jFMImJZOJyAgIAeEKC8JBS3qBWyuRXY/IKO0LS9qH3EVHhjVFBH9Sw3Y0hyWuoDYXdYox
xHhqx3M1ia1Ng2nkCFWvV2qugum+4O15JJ7PNHBSggDvUdnxBiPL3T0HSdFpyUFzddizJPQklU3R
5EDFfxJ01aaZRJFzRvk/h865IuwhOMbpztMXWxZDD2OlTNKfWe+J1caprwWkL938JRkJqxcek6i0
Mh0Z2dhLVmTU6Ye+dWx7CESDfukrY7625paOz3bBhn//XiDfhSWObGxt9q3/W7n4dXePt+GWJF0w
NBm8qnvx7YA91w5uIqNNPjabAmv55Hgbg+MagMzAcgPDj2RLXqLrOcODac/p3hsfcpQLQb4J828e
dHrouiT8/NG3f04yAtgbdoV3rsnl4KcMwXxkanOAIfvnB15NBj3O35dI1Lre2PX/RXxLdZ7VNmEb
Wc+vWC1orL6j60D+3BNOyBfH4bSKC1DEjVuulZsmlMy8qHHB7ZDKyxW3ulze8p0s47IRaFNAVU/Q
hbFhcZOiRym+qKyUwWE9fpM6sTopcR/u1cVUDOdkBCkoBbu2BEGgUsUd3I80MsFeDdOyWy6Tk0R7
rmQD7OZXO98HrIDdFGIB+7r+bWRLBSIEHvh9wu6UI7znW/BQyl3ZEwaKwLoLjj8AXar1oWlUoY74
BszfJNFXDPSBGdPjHCiRqcW6O6/G9N4n1wSIwq0pnzu/Wxyfx7AA21HHTUm2Xyb1SREcKmzvo/QE
65uWu/R+p4WJct+gb4bxRnLMDtcV3eFHoax+bCDA+y9IZr2AhzoQmH3krKY73uHA5S71Dunr0bP6
DeeHd5mGgjqsGKg4d7qmTpNGr5+W4g/zepVKBAwj51qzr+BnOxEYfXB39aSLnuD8cGMvTtm4Xfyd
lovg1wiyxCecuu5xJx0d5vej19j70UGkk3XdwApj7374bCN6LOSFmu20sfG8w026TtfGfdSzv8uB
1ysjYmUOEeA9L2DCQDkmMpMi1BIXpNTwstomJp0R2NvO7gczNAaBvFKUlKWkDjaAvzRJcWqAM9dV
U7PZ6EIhzHTogtZ2gd77eVNItr6tO1HtiHXn6sOUa7rhckogWXeRlpGdSKN37rGaFUKQVnVVRFlr
W4W3zWuh55vc14qBKl907DCh/uKI7G9ailzmM+L7RpV4peUHzx+8tthkD/AclyuhkQPRINAlXdpu
MejwRgSoWEnzCqLyJrv46lGgro67+BfdK+pFWRxKgVq+LpMWNQ8+QBARWiuSLF7FzNfsJqkXfaRP
epKAXN4NtjT10KdG8DTXglmHqsQM3tgVqt9YGgCcJlsDtJRGHzb+MwwBPHOVHlfs9d6M2URoY+5X
Fj17+IRTxSq9zVhANiFIKadRwJoITk22XCaDbQPRm65NeLAarwHETzBnK9NzlnB9zCQssMni8Vsb
DbI8igSX/JMqATrZng9egbxy64jBFiR6sf8fcfwa5XpDmCv0E8u4FLz+M8sSihaYtAimW4Rg4AGN
RQiJL/ZtRfKAkxs/VlF2CEsVi1TfaS+EG7KRk1jOH88TMfLLmVxru40wy6hkFyxDNbw/TKwaTomk
marqnUyjYWRGQeimY7NAwKQSqVi3jOdTcV/Z5J8upEs0jmjXLXilvX+R8EcNGzJDkiqLV796S9BB
wHNZeQsn4GxE5Ah1gsn1uxwIKzrFNfwQ4a256VUog+GnLKpI/cm+nnTL/ppXseXtdfkxvNv1DX76
o0LMQtOku4lK7UtzEpaZZZgrLAas4SHL+u2Xh4Bj8pROxTf2z5DaRpqi6TnkQt1VKueTvl8LIdEx
8umTirQVtTTUi+RcbkrVbULy7vy+gGikPrV/4L0hDA6xkI2Own6WACRJUGX3FcAay56zoxzyG1wS
O9Z4AaWTAfZ7zGpF1xirV2QiThPKSRAmUUBgRc1WGusXjJ0tN7ObjbMYTnWPZfRFv6kuLpyateRL
4rFzH1+tA2vajHu8eaeU5iSuP77fS2kR5MKUZ12shuotTp64dZLkyrrIXT+LE2iECtaDJufKKoqB
M69vE5CLYS0unwQHfvbz56Gt2fAplfBVXJP7Gw0AZqRP7rcyo2eWyjUpjHOCwcJS4bSgNOwrJ3AH
LVUxmIRUzutwwT250ZIQWrQq8kXhuKedf3627MVayF1k7OqemLXEpmifkoyo75W6Ri9zjPUx6GHO
QsjzQIU4tS/ZqpJQRmVoUtXMmByiUjOYRRNgEF5McMRbFA/CvYbhGqSBH0sdxzfobXpSZvOh+iQw
c79RDOyZ+206IBiKhBWNzMSMHk7w13wkCJnxElGsBuSGy0FgB3VfQ5lYqH+tVewpGO26OfZxhkDn
FQjIB6eV89FJo/+QDShxgOfKXCZZMDPOXtVHAcRuGmBTrHOWtn6nwclRhn17c0vBN47no26SqAWs
2SwM6gSdAUL8j7ktAEofQeoMMZIU7q6Bj1i9OfpkR55rVJeE9ZiBi66r0X1wNmdPlS2ADCJlEW4O
A276cvDp8HFdn+BrEQwTBUYaPF2CxqwUMkPphjDTC+BOKjZ7gQ3Lr6L62qWG9B/RFxPW26rV1pBG
LHYebm4GcB05s6uOPawGRlDo2qtZY6e+0pW0NxtT2dNkwONAmY8z4tdfqucAvkkSgsPke/JZfM/4
X+bJaP7pQhQ1gJefyUnAgoQsFypp56aYNAYI8368y7DT0eaYX/0HjFEv/JeKIoNUpLLOpvhjKiu8
hOz3lCNb1qb/9P6fY8Jk92GJR6xmThYLSFx06rJaI4Vk1j52DGGtgPahl5keIcdInW26xmsk25di
IHqlO70CB1INC8x+Xj0N3IeHdAInJeTpT0UqknM8ixyTg/s6NUyiqtE/YKdRoP4h75wgjyzAwlvD
zY6R/J2bgiuZV7p/vgvVSA0OGzc90JXtC8D8HyxAp/zf3TFIC/pnpiP5CSYnSxA5XjZf8IfUie3/
YEln4YlcKgHBHWn6bECulud32DEfrmhoDc1DFc7O9cbXLJM0muIBUhDp20qMwrqfe1xd10ktjWr6
e9S8slhqFHae/VBGT9mmxEEemTAWet61g15Td0SAoO5rF85kaXzozO/VshKnh2T8ZVy8QL9yDBTo
vNb31LnrMIAGDSwqR+rfhDguLpRJKfGsng26JwbNIdihEojRKdbmh6d2hW7pcEaPo6QuAvVz6ida
9Ja2/PKy+em3LboOGicp69AYuokB6jsJstO/QQZTWvE1kiOoQcGPCBYiJj3IrxO1riILuYC1UvMQ
CaHydYTa3CiC3TqRw/Ip2tAQH8MgCFSduj7sTmKvFy81AQdmjj+9Trrl9qkX/jhJgdVV7K7MU6XN
6cih5DwfQaB+k5TQWlNnuVVSY2q/PDJzfWRYnmsn1GjutLAQYtfujSirBvsC/T/Zni+4HpdnbQ/K
+CVI3Q6+72Txc+lBQrdr8is1BS6my3Iq+laIbt3Wfw43yibm9ULBNTHgXD7BdWSd4SIove/nsO+l
tlW2SrACKr94vsBhIer/h434odvtbacCrij8ftFmt3rhFDWK8qJndqAcDuZP9mKULXrbhsr334Kb
0uloJ9ZRJ3hAxRBJugCOOKUZSmKvxpJTwoThyKPQJjQ/XfcUsJtZEg8Bi6D7YopuJgcUfOaOB1BY
ganvFuAwLnks58YgNFbBGtGuJcfDKCH4s3SlhSR6soHkMC3QhOQT+cEzj0u0XDXqs/OxQay8kdru
o9jdQa906M+taTx9jDg7r5O5WnYNdZrIDSOrEc+hUvNp8noPlg4RmJNVDPLqYh6lTsW7DGTSWzy+
uqNqtX1SRAIG8WJrfXivsoBISEXYKD9Jds+CgeRYeymg7+wHE2jzFj/w4L6/UfkrgFKM5v0Jf3hb
IpC6hx39Qm/bW9PCHCYGTLrtZcf5yC/MXj2OWKMuTCuxAtRe9Kk7B9uka9WZVsb1N9JNbxHiQEie
Nf0a856N8oCG7asTIobRSGRdRfNKvKyecL/7sIQrFf8+6zI0MEwQ4j4Dp7BaHmVHm7K5NpaBCcTe
Vm8aw0hSOYQglkElcsMcxofBAKgK5dgU2M4CQt6QD80H+0nLL/vTwtOVdLjFsDo6Y4Z5Qf6SId7z
5syxI6/SNyzeqjsUAOoTl1RWa4URDekxvV/52fQDADw0JJatG2JmWWbLeI85hR2y7xIKLF0Taa8U
yqZcVInxu/Ffqu9OZppR6VJ1SdAL+e+0EBDuHFvLboJRN55ziQzaEi35FXgW8QnRCiDk1KzzhFXE
RY8QO5ajdChGFGxtMOSltAMitR0erht5vb3YwtuCJYdr/6MHgwLHchFIgJM4q34x+Z4oxApXq2Mn
OP0ImMLj1xQEN2B6S1iHbOhA6ruZtFzOcPoT7mGAsc5+SKAsIS3QgApxIPZgPiTYO9NiAwbC9P5n
HyMe3sSB940RPXFJtcRxbnO9wsMW8el1ya2/mVQqC4Ohuqj/BVUbdYq9ByR4RwjkhJitWYq64cUy
kVMK9ugsL15nP0QWXJvIFuHlwwwQjGsO7ExLLdk/0awlfmJP1AJyJIHnCkZa6RWTFUwant2Zv2fW
wrY2sZO7QRKww0Q/R+Sf1yqPFxSI/BwDUfpcXkKTesB5phavpYcEve0V/f3r459ZR3yrAAHc22iH
hysKiocH1UzDps7eWiAf05cS5UtL7GEJeAcU7MIgC/Z89utYBEXrU+Yh/4WpcJbfrX3um92HHKso
GF1dqXh1WjveAFhR1NB4YJv9NX2LErFCQYhk/Hlw/83qRmf7rBRBU4cxaFim7iEwA1/PmCuV6FrI
wtpEYGhvIDg4HGQcR9x3UgA3+ZN4l37z4U3y1m03c1WmWJM3nBBdHCwURrGKQqiy01Uwohc6PL/7
D8vFta5vKb6HJMyonTgy80sRY4zOWXHfgYXdfsgZYPxHJQhIFVtB7QnlCRlxrdlvqVaY3mUCl6iH
uYsxzKp9mrETF207S19B/8ALPnmmDfpmEleoLluNRr/gQAnnXxxoK6c1HiBoq9Q+VIEyKRu8UQ7j
WyzfqcnHKqP/kcGdPoT4cASi4B/ibIx90jOZjwfAVXyMxKVQDtEWw7ia1qvygvi+HV4BcfWHW33c
zDHnOCCIzQC8WZysUBsxf38w1Hx8cxuYvouefxo7tH0PdTOfnP+8wgArn7nNhzqRDvP49XGPiLEE
hpIew9tCKcwynlU2RXtyJbCnSQu/ylkGb4TcyWOi53Nn94zC45xFbSjyMut1lsOXFA8MhrhfOqzp
ZUoqTs2i12rqiYAf6D1Cp4RAQ2TzVdjNrx+oTVGDX9qAN6Fyjj+vOx8NF7npDyTBySvtLw6+FLdp
Z8mUf8JuuRKTsydnPAZ4v6qZ8T/KPfpMv3UM1koSxwOvxxne8fiVyNHAwQEziMYC+maCO6zeBRh8
hRUcdimy4E/lTZhFAuQSR5SUPaUXLBzSMI39ffEIOXKFSuaezygyrllak82MsgAyn++ahhGoJb5B
Sx9CCNXEywUZe5mTwcl323Oizi9EPmy/Fbry+Dvhp15AS2MCi1xlQEhuXJrWkmS184PRYuZ+uFLH
6JC1ku19CGOEHpciYhvT1AOwPkk2oRvSjACRf2fZ/oSgRqZ4X2pDZRsxooRLw+iLNmULHdkVvXng
Qzu2pA3+7YDZlMgNtAnZQO/Y3j8jiPaavZQ8vZbbwCIVamR7RrWOg8Ea2tTWeSoWjF/lP1/3rQ6E
ftLBvw0lZ8WIUSqr66ikMRewTeXU60t7FGn6Kirb0sSxGH6zaKbkbD79Zw7W+lZSSeUuxWXVgPHA
iahsqGdGRZPkmcKSRvPAA9NW4I4n6LhGqlUt9S5z4IPtas7RUJYYDBuCoSRlKG7AvfBpIbQ78jwj
QBeATpYMuVEL9nh4zW7bzSAenG1tOMArxb4DTcHePiYz/8csZLFdOz20oh6Qksdb94xM03sdaGw0
5VSLw8iggM0eOU46Hx0weI8Nd9TS+FB1Pzo9fj42qnTqF+oA+0qhH/obU10RTLoL8WjG7i7wLK1R
zAU/1pLsTpYirheaJSLyFOWwodt+KdW2TDjJF/7QkB8p3Cn8rpaK9ul2l4aeqkWTJHYvhcACB1gs
4R80TE7M9EBXk/tjKPmgNvhBWV2XlJcly2awDWabniehlWGNCRTPTiLa3zh9RIDosz5PZHF2ejoq
ffRmjMOJnLVWzTLRuKMkxc+p2iRDNqI1xnwTIO3X5F/rEpsH3ZMPrdd+Ha/ERPm8i3QKTPGzwDKA
+ra2dBx5AcZW6PxKpLqOZIiRszcsOnoD3GgezI4byW1729OB5JZbGics6jn4E09qmBeMXksp4V1r
cn0GfgM32P2LVCIv+IkRrie3w8YpPSIBMYVP3QyneYi28X/nRhtaMrIVwWXPB+stMzc2Qz5pjUN/
Np9UnzDdbHROE+G0yaTppZxB1V1QPk8Oy2dYcPHrlRN7hLBkyy125GwTVCLbGmoI6NZOmXdn0y+J
LxUdqMoOgfZW4WMTuH1x+GYlFa6DLWH1bj1OpQp4mCLEnKSao5XvYxVNbeh6s6Igm4pVDUENTEOI
KT/uwqjN20xkyvid+HeZ5KUexaQW9PfTV4+IhfnJdmsriOSgmev45HMdmjrhjNW88MFos23GjoYp
+RT73yKCkpDLDtJj7DJZxQ6wBYogWXnEDwTWJ+COuUvefW5yzfQkZUDMZKeG+GwERQrbg4NABlo6
k3BgLDPXr7mn/HVNEved11B5hHRfci6J/gpBNJaSBi9ar7RKLyTer5dj1tKJTPRrJ4QhHgY3Li3s
iXb9ULg/ro/VwcO1q2cCkH72z8hXaLY8Y4emdeOZP40DukICMlpmbztFYafHKRXsASHu07JMogiC
Deo9nnAJYb6lrB3ivxdK5K7E4dmM2cjoZPnNEkZRbQGpsiEWPtQ1vK1uby/Tekl616UKO++r0jlm
j5Y6mRLAPHJrxXe/V3oyWGAl3/gp7tMmgTMupy4P6h9/7mKxlzN5Bp+HGC9NULnoVpTOCxdxaVVP
QlUO8Vofyv2hKgng5f+y9gh5HMBL2wHitESIttQLskRHqcnN2AIwbZterSmd6xqiuMObzFEieSrL
5MNJUItnjShiBByngBQ74AnyfQuv0Ov9NYglLGoC4bljx5FGY+1QzRcp93KeXOXi3bK372xlCf1b
SU4K0CB7u6ffHcveN4fj+K5fl/z4Fo16DPXbWtWE+xn9iCbk6Gq2dqJAv2vAv9mTTzAceGzDRVii
PQLSzjcx/a1/hwTht9oKx2Y0XOUtrJz3dmRBFt1DWibhel+giEWrHENDm7BUEJMcGSn7g5doax9o
KtT0fTPkWGgMKIJlyoAXbhNL9cbgHvVCUdmSecmZRmQRdpKJKrwFH6RHGNH7tdmITREy1njicDdH
ONONzy+/cdrpSgE2a/QuR9FN9jsEQIg4PGR01exIQVJEX0y41sBUiRkCEp3444DoVJ/Rlo0PeHwP
Trnvrv9rWfY7T2EinKxdPnnDR/W48GCOmLn0W7MX1+qu10CPskesFqa0/8I60SQ1CPOi1x5/UQOX
KQ/cUoWl2Tl6OVUFLMSZKHx+OXkOIiKi4BRml8096IVsqP5adFjRo9Mb8ra/WcJ2JVbpU2L4oyrj
PImOKzuO0FxB97DHjcWPs6N+CyRNEukLjh0ecp6hu578nFZznIUaZJlKNS2JavtQBP/DcnVrzXNd
L3+ld2Aq5mWzJzAHTKOO8W/kCikMpAiEcUytDtA+Ln7ipK44neFNtlqQuSZQWhyjEMqJa7FCflu6
Xj48L1KUuJ94cG41QCpI+EPeZhiBbD8F6TjJO7btx730zhi3lvBtzhUFQxmFY73h6ucWAPcmBKOF
n8iMlLphbaJtuO6Lyo7/6gSkENKQCB49OhoEKf+vK+KQ39cLKsnkcn08wVnq2z9P9b7M40mr6ta4
8+gKFQVsSEuAk5NEH+2zXSXEM8z2TnUx1JlTyXO9AD1kzyjnUHLgQENp2PkVYaxOk6GTvXtDjjVO
yJTR7QB4hQ8BawpSUSNFc+y0z0oihj9CnYXncC2RwE3aRmPzocC6PGJnESeUwjc7KekQMdkdSYHv
tB6Am7DqlN24OIc43n2etdhsW5thG1OfdpqqDU3hkAH2KVHWK8w6dxkys2Rsr4wzosvaDQMYZ2Wg
v/3304+tz+or180sLkxbCqwnQU9KJH8Kkof66mUrxil1BxiaMjBqbvfhQb+5w7S7w4XQLM5men1+
i48DX62t1C/5+lAZ3OA7vdTqU+Fez2KMa3/IM8rCx43ueVmR7Up84y3tqwE7YU4RNhooCO+o+2W5
g5QmQ+svnuy9/YEtkFtdt48flBXryqa6xushClaswN5hNEdGRI1Ti+XaoQFsO+VMsz344t4PMkWX
TAf0w8POZfczPnGvpQu4PqC6NviJJRUIBU8NJfSIy6cmL6YvblVTtj5sUk3wbUmbtGY8UJl65fOG
Xl5epvjSpor9JH/jRQp2CW7ZOVwv42SFGTJQdruSTE9f8rTaureXA9rNjkcjty9zLM/T5LuZO03t
jGiHF3Rh1gL8TqhoymldV34R0y/mwbtdE4veBKbnVAxJaznLUHs/RIs+jyiTtZN9os3koFMDFN+v
aL3CHVP+uYBP/czsg+dsEZzhRZM2UCE4N9zu1TR/S+k54d6h3hBbFqRDCfZsXiefm9cZ9JNv2ivH
+y1p5v+0Or3BRyyraR+QBWe0rxCLosXZvtqirrXd3MlegybLFg/U9cgYd/x81wIJJ6hlBInAk3IK
5PvYEMFnkUH5eTpQJtWVdoAWW6YKr4DGPBi73+ncvS/iyK4JAnw2XLLE53gbpAl5G44ZS+ZT8aSi
ZJUVZo/eGsaB8X3dqtGS/4KuPEwVXxd2PLB96VM157xIeDbT6Qa9r9Wq7z/w1ZKtI1iN6UN5YjAm
fMu5YxgY2IRgwFHFH5qU6kUzimuXbY0QEXvyLJIq1MwcVSYlcizXC74GhLCcOV7Ejqd426DzTbGr
CD+YLom2iwEyefBCbYEyzjmlIw0ve6hZzgcQpdjQCJEkwimgHOUyrvRkTS35a4PZcNJHtXxAR5yL
jDMEmIYp/PEgyaKVLF/+mYD2/57SgaifJo3FOjjymjGtDBsg2R4SW7O0Y8Ik7/VBMUFaIXhjJ1KA
0Hc+8Pf6RYuMmj+2/6OnR8ALlZQH24CU3ZckoM75czRIStTVSaHZBH0MQUldeF/K+19srX+lSEde
2C6WKSAX9ui6mK11oPejRZ/Uaz2qI60bcHIurk6dHmlyHPIzY+FDJxlej311PMYQuOU4VMuHTJVK
fTaX6wEE/9YrXFwXits7Ofhp6OR273kMwYvWEOhWER8nvYJtf61TrKjx5+QSmqfcdnHCCBK2dIDj
trHApW7rXKdQfxZPtYCWlhWDlqISmzjDv/+xJDtx9Y5Xx9a1W2qa+lOB3U+PFsDoY100M/K4uCjh
HmUqx1Z/Q32slHk/ttc85hV5pAA0CjgpFYE3HnXii0xnxI4Gioxcl3ikRh3VsGBaoVEJky6MK2eE
QSuS8XyCFfjCXIqkAK8qd6raG9jGFTCVdyvZvEApxu/pqXYhHUpeb3BXJMadzMEQcziMPULq1+xO
pbJNkKh8JdqNolNIRss4hQj/t+A/iW5IovGgAHYH61RQFjmqc6afeE1264yxPM2CmF1xRhAo8r/3
pGgDbwmEIBth706aOoXbwXFec7j8aitIviKhtJTB/R3RmqvtH0/H3eRyjb4oPNIgCR/gJOSZtHYS
Bxb/2w9CU/8dhiLJVXX1xB9JZo/vGTv8Zd6acqBua4jn/zeo7vaRRBpq7xxXPz6a6jAHcjTqncKU
kGVJUYoyyYVWVnhpazYq0BrzqxU/S+tNNSryUHyAhveKbVF06siJXDvnh8e1evtFY9/oEUH+HyUB
Awa0S+sDfUKJ8kKRNGlJsa958GIhj8l5Qf6GD9K51SMd57K/WjKsqrhAGmHUP5FmcLuidb4qMjuq
WP8aq0TuF8w4H05uSHpe4/jATM5hq0V2ShzTEhEcWl/VTuO1NVUrZ+kxcSN2qyo/+D9SFClZyvPZ
B4ZiJEMd3OuwbJRjazUTFtZmNmabVljFwiwu0gdS2tXHXQd84a0ZXVCqsNVG1D3sRrcxpLEwoM+3
T3mJEv18P3BU51YQfNfexNg1ZPbRZqs2zPlshkpD+aWfcSV9ZP4AfwA9ykuC4BvO5ZjRXyoM44+y
pYaxfRMBjuJ/BX6305o0jBwxfG/j9FGzv2LtUHNTHXkyC8a8fB/QqGrT9R/19iKJ0zGvBOxGjOmr
KuXAxzc0q0VRUDmjSPlu/YLJ3UNCT4vbZK95+PYWD5tknY2QAKOT28z8WXs7gevEemhxtZBUh3+3
Gn6zbuUEMMg3X/c8FnfIavCoE+dwGnT1gXj6IUajv77LVO0MVMUedEYz9+ga32AxPJY896FF9T6q
NuA+P6KTH0RiKy3pVZNvhxp9266JE9ZjHZw0+RbM0fClUlBCquvgwJ7Hwc4IjG8yUIJXaEcPGd2h
ko4Fh2+Ee6xKknbJ+ZHLJZYV6KrqjjW7bOlAtXv40mkGdsbke3uMKAyyDUl7sV8gnBNxwnmIshe0
4r98UCM2J/o7a5e3zYVK+Bsj7bWT5eeoDTCAugL0D83XDxp6eyhgaESUtimUHJXnErU3/ZtzKglO
NrCwz8HF/7hkY4TdsWnbLDTebg2BQa3UaZ9UZX0+FBrlm9Jp4ZCD90hCpbjzZPVMyZ/DxSUJAlET
d4kd0CsrgnhL3BgLxeAsz51WFUUFRynvxBsBtNnKXFddbXdtSZIhyjDxyvlCel3DbPHHmdaUVHJ4
CIxYRFWgjKw15l2kW53Lt3lWd3MwTIOdhEF7PrAizyMk3JNC4ifWn7xVBlHI3492i9+Km6wa2NPv
g1jYO73x8CWZWBVhM009PjRtE73nXGjcomhUMckKHRnfQJUKxxx+JGEeaoyQsLrGM+seEdkIoS3c
/Jy+kPWCjX3QneSZ0hubNpLDCmWFYml/3LPcdeiujvQl95bQfwLIyfMPEI6XJKcGHCUN4BXOKmLp
/2TpETVYnYa1BXpPgCv6U5G54UH8tUEQvdc5b94TXiJeIs0Yaw+7eCwY1/22+oD/LtohJii+pslS
iCkE3limGcIJ5O72RBQXbfwYHi2TIr//efGVaJ1Si5U3gVypsR3h3edpwgGd2OSJUUJ4mui88ZA6
kJ6tF9jcC5sUm4BIV7hihzaozSLTdso2NMTeLS7ndRCtCOIfmi6F28HoIavbSkSACKrIhbRX0JlE
tz4urkHz5E8mOEbCy1iGcAmbrIafFMBQaRwHaQDhb6RmNLfUdh3OzWgGzawkEGAKpiII/WIbJoBP
GIAlM6oJm4LVTzYGHKi+HW9Een+XDoX1qmKSmrpFejf6g4FsFdpXZlL9Mi2KEaW+tDqV4Dh/s1wZ
j4DeLBioc2kCBeCtMNp2DChFjwzF61ckA4FcyoWUesg1juneMV2xFUXG1TikcHsmZ4Yqz+MDG2pi
bX7f2IOy2aZiDqmJek405O3OWts1Pu0pLCc3eJ25S/zDfsAwV9VkZBn+kr1Pgdn7ZhuAtzx8ulu/
T4ZZ/+Cq4LZjgvDueK5BUCyHcIEnztYlPWGNfqLaaXz/put7XIAeYaw1lMvZZ48/Onz41oG1H0nt
FpaVT5BcV7q03wcefRvRYQ342T6BC0vQ5xPIGec2bMCSJsFgSuPmmLyqu2VpSpD83xqD3fhD0iHV
j7a5vZxn5P3OyHA0joQUlTXUWfVjAjcH+e1gB99fwmd1nujjDIqW7dICV2Apmtxdlvb9Xaamd9LW
Em3Vz2VbT6Nq4mtp5ORn8FeKBrcgBjY8qf5jX9bqQKVVdEhsb+qhbVX7dgO8AJ6dOsmI17IeQ5wS
DOVT/f/bvX45PK67qB2C9hwzxPcvGGeNwwGPpDtiIGGjtyRIvuojPOjNHCSvSMPUTQ0w9IH6ZT6p
Cq7fNr/XgC1wtIcOSV73P7+8A5bDAHf+IgCwVBlY+lvxNDojrDLoniTn3lwPApgM6hT7qZksuADi
nR4TbsCCgizgmU2g7ufpXQUtft4I4Tav4jzV1bGdy8qOwwEeB6/mzz91QK/ndrmjztgnmlDD3PR7
QWixLOiYvxZOSbtT0lRfPdVp1fpqoOk4Pt4Rl/sPhTuvg99IdlZ5oacYmil57TumTSg8U/VbqtzY
KKaamvehNoUS3Wc0y5A7+8azFWy8EFA7JPBxSV5cooPQaRCnxuKOyzwUBntnLTyJZhS4LdiArbHP
4TUnYViYuU34ukL3++HGXjs9YzofN4303iKSK3TZaF14bheIZ1mUh2Ea/7b3fYU8FdNJHDTatJAH
AIo8UYxIm+fTdwBrCsFLL7tEOi7kYbEcR98wQNQmj1vXKtqyMIOd9bYLLzIIrVSYfOJmVnBMum8W
3rRpa6rfH1m3tG8WgUCI8xb56c3ihdl+PwgffAaWD/N5ZRLhYXZHT2O/rrX06IBNrW82Xyt6PDZg
Sr6c60FEmlMJkYWLWIcZJZPOCqrBfOXH1cd1XugZBuvlN9ZexgynzEzBlCXSCsOIoREq/31IO92w
g1wGdatqQslsjhohbeJ6kUv3lVHGL+GnBvuv3NXIBB32AMFyVjjCcsYKqKlnJfPbfkWvtOCg5PK/
CQFHBgGJEIgN22seVe1oIA/Sq1IrYCt/FDq5rtjVmw3wB5FwXB+MIuTjoZcf+JHTHnMHOEsWZvwy
74pjVg2eaNdsKAHNhsvVXhxQt7CmMfBACMxitPusk1vEhP7GLjGbK/s5s0FnRmtW0sFab7y8baZq
e9gnt1Pgq6DcAl20WUkAmVqjTNA8gngbQFsJfw5LrJ+fuUdfCSe5GQpOq9/0fPD26gJMSsUzNfEL
zoQO/6PsiKfoRqqbrZDut97WnvXPrH5JfPR+Ji+GPeR4A7rSAOp0sbMmFQ/5W6VCx3kgkaBr9RWp
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
