# VSDOpen21_BGR_Workshop

![vsdopentutorial](Images/Vsd.png)

![Size](https://img.shields.io/github/repo-size/Nalinkumar2002/VSDOpen21_BGR_Workshop?color=red)
![Last Commit](https://img.shields.io/github/last-commit/Nalinkumar2002/VSDOpen21_BGR_Workshop?color=green)





# Table of Contents
- [Introduction](#introduction)
- [EDA Tools Used](#eda-tools-used)
- [Pre-layout](#Pre-layout)
- [Post-layout](#Post-Layout)
- [ Report by](#Report-by)
- [ Acknowledgments](#acknowledgments)
- [References](#References)


# Introduction

- Temperature-Independent voltage reference circuits are  widely used in ICs.
- It Produces constant voltage regardless of vcc variation, temp. changes.
- Power supply like battery is unsuitable for use as a reference voltage source and its voltage drops over time. so, it is also not suitable.
- A Bandgap reference circuit that can be integrated into CMOS, Bi-CMOS, or Bipolar technologies without the use of external components. So, BGR is more prefered.

![image](Images/p1.png)
![image](Images/p2.png)

## CTAT

![image](Images/p3.PNG)

## PTAT
![image](Images/p4.png)

## Self-Bias Current Mirror
![image](Images/p5.png)

## Startup Circuit
![image](Images/p6.png)

## BGR Circuit
![image](Images/p7.png)


# EDA Tools Used 
The design has been built using open-source EDA tools. The library used is osu180nm. 

🌟 Ngspice
 
   * Ngspice is a mixed-level/mixed-signal electronic circuit simulator.
   * Ngspice is based on three open-source free-software packages: 
      * Spice3f5
      * Xspice
      * Cider1b1
   
      🔗 http://ngspice.sourceforge.net/
      
 🌟 Magic
 
  * Magic is a venerable VLSI layout tool, written in the 1980's at Berkeley by John Ousterhout, now famous primarily for writing the scripting interpreter language Tcl. Due largely in part to its liberal Berkeley open-source license, magic has remained popular with universities and small companies.
  * The open-source license has allowed VLSI engineers with a bent toward programming to implement clever ideas and help magic stay abreast of fabrication technology. However, it is the well thought-out core algorithms which lend to magic the greatest part of its popularity.
  * Magic is widely cited as being the easiest tool to use for circuit layout, even for people who ultimately rely on commercial tools for their product design flow.
  
    🔗 http://opencircuitdesign.com/magic/


# Pre-layout 

## BGR tt Corner

![image](Images/bgr_lvt_rpolyh_3p40.png)



![image](Images/bgr_lvt_rpolyh_3p40_1.png)


## BGR ff Corner
![image](Images/bgr_lvt_rpolyh_3p40_ff.png)



![image](Images/bgr_lvt_rpolyh_3p40_ff_1.png)

## BGR ss Corner

![image](Images/bgr_lvt_rpolyh_3p40_ss.png)

![image](Images/bgr_lvt_rpolyh_3p40_ss_1.png)

## BGR various Supply

![image](Images/bgr_lvt_rpolyh_3p40_var_supply.png)

![image](Images/bgr_lvt_rpolyh_3p40_var_supply_1.png)

## Ideal opamp BGR

![image](Images/bgr_using_ideal_opamp.png)

![image](Images/bgr_using_ideal_opamp_1.png)

## CTAT

![image](Images/ctat_voltage_gen.png)

![image](Images/ctat_voltage_gen_mul_bjt.png)

![image](Images/ctat_voltage_gen_var_current.png)

## FET 

![image](Images/fet_tempco.png)

## PTAT

![image](Images/ptat_voltage_gen.png)

![image](Images/ptat_voltage_gen_1.png)

![image](Images/ptat_voltage_gen_ideal_current_source.png)

## Resistor

![image](Images/res_tempco.png)

![image](Images/res_tempco_1.png)

![image](Images/res_tempco_var_current.png)

![image](Images/res_tempco_var_current_1.png)

# Post-layout 

## Nfet
![image](Images/nfet.png)

## Nfets
![image](Images/nfets.png)

## Pfet
![image](Images/pfet.png)

## Pfets
![image](Images/pfets.png)

## PNP
![image](Images/pnp10.png)

![image](Images/pnp1.png)

## Resistors
![image](Images/res.png)

## Resistor bank
![image](Images/resb.png)

# Startup Circuit
![image](Images/str.png)

## BGR Circuit
![image](Images/top.png)

## Post layout Simulation

![image](Images/topp.png)

## LVS Check

To perform the lvs check give the following command

``` 
lvs pre_layout.spice post_layout.spice <netgen_rule.tcl> 
```




## Report By

🖊️  Nalinkumar S , B.E (Electronics and Communication Engineering), Madras Institute of Technology, Anna University, Tamil Nadu 

##  Acknowledgments


- Dr. Saroj Rout, Adjunct Prof., SIT Bhubaneswar
- Dr. Santunu Sarangi, Asst Prof., SIT Bhubaneswar
- Kunal Ghosh, Co-founder, VLSI System Design (VSD) Corp. Pvt. Ltd. - kunalpghosh@gmail.com

##  References

- https://github.com/vsdip/vsdopen2021_bgr.git

