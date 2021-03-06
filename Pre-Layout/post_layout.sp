

.lib "/sky130_fd_pr/models/sky130.lib.spice tt"
.include "/sky130_fd_pr/models/sky130_fd_pr__model__pnp.model.spice"

* Resistor bank

.subckt resbank gnd vref qp2 qp3 rp1
X0 li_546_0# li_1084_1992# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X1 a_1628_20# li_1084_1992# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X2 rp1 a_4312_1992# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X3 li_2698_0# a_1628_20# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X4 li_2698_0# li_3236_1992# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X5 li_2696_n234# li_3236_1992# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X6 a_2166_n1148# a_4312_1992# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X7 li_1084_n3394# li_3236_n1168# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X8 li_2696_n234# li_4850_1992# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X9 li_1084_n3394# li_4850_n1168# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X10 qp2 a_2166_n1148# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X11 li_5388_0# li_4850_1992# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X12 li_5388_0# li_5104_2458# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X13 li_5670_n3160# li_4850_n1168# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X14 gnd gnd gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X15 gnd gnd gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X16 li_5670_n3160# li_5104_2458# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X17 qp3 li_546_n1168# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X18 gnd gnd gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X19 qp3 li_546_n1168# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X20 qp3 li_8_n702# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X21 qp2 a_2166_n1148# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X22 li_2698_n3160# li_8_n702# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X23 li_2698_n3160# li_3236_n1168# gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X24 gnd gnd gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
X25 li_546_0# vref gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
C0 li_1084_n3394# qp2 7.02fF
C1 li_8_n702# a_2166_n1148# 6.20fF
C2 li_2696_n234# a_2166_n1148# 4.78fF
C3 a_1628_20# a_4312_1992# 2.20fF
C4 rp1 a_2166_n1148# 2.36fF
C5 a_4312_1992# li_3236_1992# 2.33fF
C6 qp3 gnd 4.85fF
C7 vref gnd 2.43fF
C8 qp2 gnd 2.48fF
.ends

* Stater nfet
.subckt starternfet net6 gnd
X0 a_88_252# a_88_252# gnd gnd sky130_fd_pr__nfet_01v8_lvt w=1 l=7 m=1
X1 net6 net6 a_88_252# gnd sky130_fd_pr__nfet_01v8_lvt w=1 l=7 m=1
*C0 net6 gnd 2.30fF
.ends

* PNP BJT
.subckt pnpt1 Emitter Collector Base m=1
X0 Collector Base Emitter gnd sky130_fd_pr__pnp_05v5_W3p40L3p40 m=1
.ends

* PNP BJT subcircuit
.subckt pnp10 vq1 vq2 vq3 gnd
Xpnpt1_17 gnd gnd gnd pnpt1 m=1
Xpnpt1_18 gnd gnd gnd pnpt1 m=1
Xpnpt1_19 gnd gnd gnd pnpt1 m=1
Xpnpt1_1 vq2 gnd gnd pnpt1 m=1
Xpnpt1_0 vq2 gnd gnd pnpt1 m=1
Xpnpt1_2 vq1 gnd gnd pnpt1 m=1
Xpnpt1_3 vq2 gnd gnd pnpt1 m=1
Xpnpt1_4 vq2 gnd gnd pnpt1 m=1
Xpnpt1_5 vq2 gnd gnd pnpt1 m=1
Xpnpt1_6 vq2 gnd gnd pnpt1 m=1
Xpnpt1_7 vq3 gnd gnd pnpt1 m=1
Xpnpt1_8 vq2 gnd gnd pnpt1 m=1
Xpnpt1_9 vq2 gnd gnd pnpt1 m=1
Xpnpt1_20 gnd gnd gnd pnpt1 m=1
Xpnpt1_21 gnd gnd gnd pnpt1 m=1
Xpnpt1_10 gnd gnd gnd pnpt1 m=1
Xpnpt1_22 gnd gnd gnd pnpt1 m=1
Xpnpt1_11 gnd gnd gnd pnpt1 m=1
Xpnpt1_23 gnd gnd gnd pnpt1 m=1
Xpnpt1_12 gnd gnd gnd pnpt1 m=1
Xpnpt1_13 gnd gnd gnd pnpt1 m=1
Xpnpt1_24 gnd gnd gnd pnpt1 m=1
Xpnpt1_15 gnd gnd gnd pnpt1 m=1
Xpnpt1_26 gnd gnd gnd pnpt1 m=1
Xpnpt1_14 gnd gnd gnd pnpt1 m=1
Xpnpt1_25 gnd gnd gnd pnpt1 m=1
Xpnpt1_16 gnd gnd gnd pnpt1 m=1
Xpnpt1_27 gnd gnd gnd pnpt1 m=1
C0 vq2 gnd 16.74fF
C1 vq1 gnd 2.68fF
.ends


* pfets
.subckt pfets net1 vref net2 net6 vdd
X0 pfet_1/a_n60_0# net2 net6 vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X1 vdd net2 pfet_1/a_n60_0# vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X2 vref net2 vdd vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X3 vdd net2 vref vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X4 net1 net2 vdd vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X5 vdd net2 net1 vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X6 net2 net2 vdd vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X7 vdd net2 net2 vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X8 net1 net2 vdd vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X9 net2 net2 vdd vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X10 vdd net2 net1 vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X11 vdd net2 net2 vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X12 vref net2 vdd vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X13 vdd net2 vref vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X14 net1 vdd vdd vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X15 vdd net6 net1 vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
X16 net1 net6 vdd vdd sky130_fd_pr__pfet_01v8_lvt w=5 l=2
C0 net6 net2 6.13fF
C1 vref net1 8.07fF
C2 net6 vdd 11.70fF
C3 net1 vdd 10.77fF
C4 vref vdd 4.20fF
C5 net2 gnd 4.81fF
C6 vdd gnd 112.12fF
.ends


* nfets
.subckt nfets net1 qp1 gnd rp1 net2
X0 rp1 gnd gnd gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X1 gnd gnd qp1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X2 gnd gnd gnd gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X3 net2 net1 rp1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X4 rp1 gnd gnd gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X5 qp1 gnd gnd gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X6 gnd gnd rp1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X7 rp1 net1 net2 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X8 net1 net1 qp1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X9 gnd gnd qp1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X10 qp1 net1 net1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X11 gnd gnd gnd gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X12 net1 net1 qp1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X13 gnd gnd rp1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X14 qp1 net1 net1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X15 gnd gnd rp1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X16 gnd gnd gnd gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X17 qp1 gnd gnd gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X18 qp1 gnd gnd gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X19 net1 net1 qp1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X20 gnd gnd gnd gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X21 qp1 net1 net1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X22 net1 net1 qp1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X23 gnd gnd qp1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X24 qp1 net1 net1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X25 rp1 gnd gnd gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X26 net2 net1 rp1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X27 rp1 net1 net2 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X28 net2 net1 rp1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X29 rp1 net1 net2 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X30 net2 net1 rp1 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
X31 rp1 net1 net2 gnd sky130_fd_pr__nfet_01v8_lvt w=5 l=1
C0 qp1 net2 2.02fF
C1 rp1 net1 4.06fF
C2 net2 net1 2.30fF
C3 rp1 net2 7.43fF
C4 qp1 net1 9.71fF
C5 qp1 gnd 2.25fF
C6 net1 gnd 32.28fF
C7 rp1 gnd 2.25fF
.ends


Xpfets_0 net1 vref net2 net6 vdd pfets
Xstarternfet_0 net6 gnd starternfet
Xnfets_0 net1 qp1 gnd rp1 net2 nfets
Xresbank_0 gnd vref qp2 qp3 rp1 resbank
Xpnp10_0 qp1 qp2 qp3 gnd pnp10

C1 rp1 net1 4.06fF
C2 vdd net1 15.65fF
C4 qp1 net2 2.02fF
C7 net2 net1 2.37fF
C8 qp1 vref 5.85fF
C9 rp1 qp2 9.69fF
C10 net6 vdd 11.97fF
C12 rp1 net2 14.93fF
C13 vref net1 13.67fF
C14 qp1 net1 11.22fF
C15 qp3 qp1 13.88fF
C17 vref vdd 5.97fF
C19 qp1 vdd 18.84fF
C20 net6 net2 16.12fF
C21 net1 gnd 27.46fF
C23 vdd gnd 127.89fF


* Biasing
v1 vdd gnd 2

*.tran 5n 10u
.dc	temp	-40	125	5

.control
run
plot v(vdd) v(net1) v(net2) v(qp1)  v(qp2) v(vref) v(qp3)
plot  vid2#branch vid3#branch vid4#branch vid5#branch

.endc

.end