EESchema Schematic File Version 2
LIBS:Delfino_Audio_Cape-rescue
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:My_Audio_Conn
LIBS:Delfino_Audio_Cape-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title "Tarjeta de expansión para el launchpad LAUNCHXL-F28377S"
Date "2017-09-26"
Rev "V2"
Comp "LabDSP, UNAM"
Comment1 ""
Comment2 ""
Comment3 "incluye entradas digitales y salidas  PWM"
Comment4 "Segunda versión de la tarjeta de expansión"
$EndDescr
$Sheet
S 1900 2430 1170 490 
U 59B9A6B7
F0 "Mic_Amp1" 60
F1 "Mic_Amp.sch" 60
F2 "Vin" I L 1900 2670 60 
F3 "Vout" O R 3070 2680 60 
$EndSheet
Text Label 1270 2670 0    60   ~ 0
Mic_1
Text Label 3450 2680 2    60   ~ 0
ADC_A2
$Sheet
S 1910 3110 1170 490 
U 59B9DFC6
F0 "Mic_Amp2" 60
F1 "Mic_Amp.sch" 60
F2 "Vin" I L 1910 3350 60 
F3 "Vout" O R 3080 3360 60 
$EndSheet
Text Label 3460 3360 2    60   ~ 0
ADC_A3
$Comp
L JACK_PJ324 J2
U 1 1 59B9FE81
P 890 2670
F 0 "J2" H 960 3120 50  0000 C CNN
F 1 "JACK_PJ324" H 950 2570 50  0000 C CNN
F 2 "My_Connectors:PJ-324" H 970 2650 50  0001 C CNN
F 3 "" H 970 2650 50  0001 C CNN
	1    890  2670
	1    0    0    1   
$EndComp
$Comp
L JACK_PJ324 J3
U 1 1 59BA0210
P 890 3350
F 0 "J3" H 960 3800 50  0000 C CNN
F 1 "JACK_PJ324" H 950 3250 50  0000 C CNN
F 2 "My_Connectors:PJ-324" H 970 3330 50  0001 C CNN
F 3 "" H 970 3330 50  0001 C CNN
	1    890  3350
	1    0    0    1   
$EndComp
Text Label 1270 3350 0    60   ~ 0
Mic_2
$Sheet
S 8400 1860 1360 580 
U 59BA7873
F0 "DAC_Filter1" 60
F1 "DAC_Filter.sch" 60
F2 "Vin" I L 8400 2120 60 
F3 "Vout" O R 9760 2130 60 
$EndSheet
$Comp
L JACK_PJ324 J8
U 1 1 59BA898E
P 10780 2320
F 0 "J8" H 10850 2770 50  0000 C CNN
F 1 "JACK_PJ324" H 10840 2220 50  0000 C CNN
F 2 "My_Connectors:PJ-324" H 10860 2300 50  0001 C CNN
F 3 "" H 10860 2300 50  0001 C CNN
	1    10780 2320
	-1   0    0    1   
$EndComp
$Sheet
S 8400 2610 1360 580 
U 59BA9CE1
F0 "DAC_Filter2" 60
F1 "DAC_Filter.sch" 60
F2 "Vin" I L 8400 2870 60 
F3 "Vout" O R 9760 2880 60 
$EndSheet
Text Notes 8360 5810 0    60   ~ 0
ADC_A0->DAC_A\nADC_A1->DAC_B\nADC_B1->DAC_C
$Comp
L GND #PWR01
U 1 1 59BAB3A0
P 5880 2400
F 0 "#PWR01" H 5880 2150 50  0001 C CNN
F 1 "GND" H 5880 2250 50  0000 C CNN
F 2 "" H 5880 2400 50  0001 C CNN
F 3 "" H 5880 2400 50  0001 C CNN
	1    5880 2400
	1    0    0    -1  
$EndComp
Text Label 4920 1550 0    60   ~ 0
GPIO_71
Text Label 4920 1650 0    60   ~ 0
SCIC_Rx
Text Label 4920 1750 0    60   ~ 0
SCIC_Tx
Text Label 4920 1850 0    60   ~ 0
GPIO_41
NoConn ~ 5330 1950
Text Label 4920 2050 0    60   ~ 0
SPIA_CLK
Text Label 4920 2150 0    60   ~ 0
GPIO_61
Text Label 4920 2250 0    60   ~ 0
I2CA_SCL
Text Label 4920 2350 0    60   ~ 0
I2CA_SDA
Text Label 6240 1650 2    60   ~ 0
ADC_14
Text Label 6240 1750 2    60   ~ 0
ADC_B1
Text Label 6240 1850 2    60   ~ 0
ADC_B4
Text Label 6240 1950 2    60   ~ 0
ADC_B2
Text Label 6240 2050 2    60   ~ 0
ADC_A0
Text Label 6240 2150 2    60   ~ 0
ADC_B0
Text Label 6240 2250 2    60   ~ 0
ADC_A1
NoConn ~ 5830 2350
$Comp
L GND #PWR02
U 1 1 59BB7AB5
P 7430 2400
F 0 "#PWR02" H 7430 2150 50  0001 C CNN
F 1 "GND" H 7430 2250 50  0000 C CNN
F 2 "" H 7430 2400 50  0001 C CNN
F 3 "" H 7430 2400 50  0001 C CNN
	1    7430 2400
	1    0    0    -1  
$EndComp
Text Label 6470 1550 0    60   ~ 0
GPIO_13
Text Label 6470 1750 0    60   ~ 0
GPIO_15
Text Label 6470 1950 0    60   ~ 0
GPIO_17
Text Label 6470 2050 0    60   ~ 0
GPIO_20
Text Label 6470 2250 0    60   ~ 0
PWM_11A
Text Label 6470 2350 0    60   ~ 0
PWM_11B
Text Label 7790 1650 2    60   ~ 0
GPIO_62
Text Label 7790 1950 2    60   ~ 0
SPIA_SIMO
Text Label 7790 2050 2    60   ~ 0
SPIA_SOMI
Text Label 7790 2150 2    60   ~ 0
GPIO_72
Text Label 7790 2250 2    60   ~ 0
GPIO_73
$Comp
L +5V #PWR03
U 1 1 59BB7FE1
P 5830 2840
F 0 "#PWR03" H 5830 2690 50  0001 C CNN
F 1 "+5V" H 5830 2980 50  0000 C CNN
F 2 "" H 5830 2840 50  0001 C CNN
F 3 "" H 5830 2840 50  0001 C CNN
	1    5830 2840
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 59BB7FE7
P 5330 2840
F 0 "#PWR04" H 5330 2690 50  0001 C CNN
F 1 "+3.3V" H 5330 2980 50  0000 C CNN
F 2 "" H 5330 2840 50  0001 C CNN
F 3 "" H 5330 2840 50  0001 C CNN
	1    5330 2840
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 59BB7FED
P 5880 3870
F 0 "#PWR05" H 5880 3620 50  0001 C CNN
F 1 "GND" H 5880 3720 50  0000 C CNN
F 2 "" H 5880 3870 50  0001 C CNN
F 3 "" H 5880 3870 50  0001 C CNN
	1    5880 3870
	1    0    0    -1  
$EndComp
Text Label 4920 3120 0    60   ~ 0
SCIB_Rx
Text Label 4920 3220 0    60   ~ 0
SCIB_Tx
NoConn ~ 5330 3420
Text Label 4920 3520 0    60   ~ 0
SPIB_CLK
Text Label 4920 3720 0    60   ~ 0
I2CB_SCL
Text Label 4920 3820 0    60   ~ 0
I2CB_SDA
Text Label 6240 3120 2    60   ~ 0
ADC_15
Text Label 6240 3220 2    60   ~ 0
ADC_A2
Text Label 6240 3320 2    60   ~ 0
ADC_A5
Text Label 6240 3420 2    60   ~ 0
ADC_B5
Text Label 6240 3520 2    60   ~ 0
ADC_A3
Text Label 6240 3620 2    60   ~ 0
ADC_B3
Text Label 6240 3720 2    60   ~ 0
ADC_A4
NoConn ~ 5830 3820
$Comp
L GND #PWR06
U 1 1 59BB80D9
P 7430 3870
F 0 "#PWR06" H 7430 3620 50  0001 C CNN
F 1 "GND" H 7430 3720 50  0000 C CNN
F 2 "" H 7430 3870 50  0001 C CNN
F 3 "" H 7430 3870 50  0001 C CNN
	1    7430 3870
	1    0    0    -1  
$EndComp
Text Label 6470 2920 0    60   ~ 0
GPIO_2
Text Label 6470 3020 0    60   ~ 0
GPIO_3
Text Label 6470 3220 0    60   ~ 0
GPIO_11
Text Label 6470 3420 0    60   ~ 0
GPIO_19
Text Label 6470 3720 0    60   ~ 0
PWM_10A
Text Label 7790 3020 2    60   ~ 0
GPIO_91
Text Label 7790 3420 2    60   ~ 0
GPIO_63
Text Label 7790 3520 2    60   ~ 0
GPIO_64
Text Label 7790 3620 2    60   ~ 0
GPIO_99
NoConn ~ 7380 3820
Text Label 7790 1550 2    60   ~ 0
GPIO_4
Text Label 7790 2350 2    60   ~ 0
GPIO_78
Text Label 6470 2150 0    60   ~ 0
GPIO_21
Text Notes 7020 6180 0    60   ~ 0
GPIO20->PWM_11A\nGPIO21->PWM_11B\nGPIO18->PWM_10A\nGPIO19->PWM_10B\n\nEstas salidas tienen un filtro LP\ncon fc=1.6 KHz
NoConn ~ 5330 3020
NoConn ~ 5330 3320
NoConn ~ 5330 3620
Text Label 6470 3320 0    60   ~ 0
GPIO_18
Text Label 6470 3820 0    60   ~ 0
PWM_10B
Text Label 7790 3720 2    60   ~ 0
GPIO_92
NoConn ~ 7380 3220
NoConn ~ 7380 3120
Text Label 8040 2120 0    60   ~ 0
ADC_A0
Text Label 8030 2870 0    60   ~ 0
ADC_A1
Text Label 8030 3990 0    60   ~ 0
ADC_B1
$Sheet
S 8410 3730 1360 580 
U 59BC9EFF
F0 "DAC_Filter3" 60
F1 "DAC_Filter.sch" 60
F2 "Vin" I L 8410 3990 60 
F3 "Vout" O R 9770 4000 60 
$EndSheet
$Comp
L SW_Push SW1
U 1 1 59BCBA98
P 1000 6910
F 0 "SW1" H 1050 7010 50  0000 L CNN
F 1 "SW_Push" H 1000 6850 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 1000 7110 50  0001 C CNN
F 3 "" H 1000 7110 50  0001 C CNN
	1    1000 6910
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59BCC155
P 1470 6910
F 0 "R1" V 1550 6910 50  0000 C CNN
F 1 "1K" V 1470 6910 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1400 6910 50  0001 C CNN
F 3 "" H 1470 6910 50  0001 C CNN
	1    1470 6910
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 59BCC762
P 770 7010
F 0 "#PWR07" H 770 6760 50  0001 C CNN
F 1 "GND" H 770 6860 50  0000 C CNN
F 2 "" H 770 7010 50  0001 C CNN
F 3 "" H 770 7010 50  0001 C CNN
	1    770  7010
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 59BCD449
P 1770 6430
F 0 "#PWR08" H 1770 6280 50  0001 C CNN
F 1 "+3.3V" H 1770 6570 50  0000 C CNN
F 2 "" H 1770 6430 50  0001 C CNN
F 3 "" H 1770 6430 50  0001 C CNN
	1    1770 6430
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 59BCE75B
P 1770 6660
F 0 "R2" V 1850 6660 50  0000 C CNN
F 1 "10K" V 1770 6660 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1700 6660 50  0001 C CNN
F 3 "" H 1770 6660 50  0001 C CNN
	1    1770 6660
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 59BCE90D
P 1770 7230
F 0 "C1" H 1795 7330 50  0000 L CNN
F 1 "220nF" H 1795 7130 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1808 7080 50  0001 C CNN
F 3 "" H 1770 7230 50  0001 C CNN
	1    1770 7230
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 59BD0493
P 1770 7480
F 0 "#PWR09" H 1770 7230 50  0001 C CNN
F 1 "GND" H 1770 7330 50  0000 C CNN
F 2 "" H 1770 7480 50  0001 C CNN
F 3 "" H 1770 7480 50  0001 C CNN
	1    1770 7480
	1    0    0    -1  
$EndComp
Text Label 2140 6910 2    60   ~ 0
GPIO_2
$Comp
L GND #PWR010
U 1 1 59BD2959
P 2540 7040
F 0 "#PWR010" H 2540 6790 50  0001 C CNN
F 1 "GND" H 2540 6890 50  0000 C CNN
F 2 "" H 2540 7040 50  0001 C CNN
F 3 "" H 2540 7040 50  0001 C CNN
	1    2540 7040
	1    0    0    -1  
$EndComp
Text Label 3910 6940 2    60   ~ 0
GPIO_3
$Comp
L R R9
U 1 1 59BD66DC
P 5190 6290
F 0 "R9" V 5270 6290 50  0000 C CNN
F 1 "330" V 5190 6290 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5120 6290 50  0001 C CNN
F 3 "" H 5190 6290 50  0001 C CNN
	1    5190 6290
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 59BD697D
P 5190 6460
F 0 "R10" V 5270 6460 50  0000 C CNN
F 1 "330" V 5190 6460 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5120 6460 50  0001 C CNN
F 3 "" H 5190 6460 50  0001 C CNN
	1    5190 6460
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 59BD6A2F
P 5190 6630
F 0 "R11" V 5270 6630 50  0000 C CNN
F 1 "330" V 5190 6630 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5120 6630 50  0001 C CNN
F 3 "" H 5190 6630 50  0001 C CNN
	1    5190 6630
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR011
U 1 1 59BD9284
P 5700 7200
F 0 "#PWR011" H 5700 6950 50  0001 C CNN
F 1 "GND" H 5700 7050 50  0000 C CNN
F 2 "" H 5700 7200 50  0001 C CNN
F 3 "" H 5700 7200 50  0001 C CNN
	1    5700 7200
	1    0    0    -1  
$EndComp
Text Label 4660 6630 0    60   ~ 0
PWM_9A
Text Label 4650 6460 0    60   ~ 0
PWM_7A
Text Label 4650 6290 0    60   ~ 0
PWM_8A
Text Label 6470 3120 0    60   ~ 0
PWM_6A
Text Label 6470 1650 0    60   ~ 0
PWM_8A
Text Label 6470 1850 0    60   ~ 0
PWM_9A
$Comp
L SW_Push SW2
U 1 1 59BE1953
P 2770 6940
F 0 "SW2" H 2820 7040 50  0000 L CNN
F 1 "SW_Push" H 2770 6880 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 2770 7140 50  0001 C CNN
F 3 "" H 2770 7140 50  0001 C CNN
	1    2770 6940
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 59BE1959
P 3240 6940
F 0 "R5" V 3320 6940 50  0000 C CNN
F 1 "1K" V 3240 6940 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3170 6940 50  0001 C CNN
F 3 "" H 3240 6940 50  0001 C CNN
	1    3240 6940
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR012
U 1 1 59BE195F
P 3540 6460
F 0 "#PWR012" H 3540 6310 50  0001 C CNN
F 1 "+3.3V" H 3540 6600 50  0000 C CNN
F 2 "" H 3540 6460 50  0001 C CNN
F 3 "" H 3540 6460 50  0001 C CNN
	1    3540 6460
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 59BE1965
P 3540 6690
F 0 "R6" V 3620 6690 50  0000 C CNN
F 1 "10K" V 3540 6690 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3470 6690 50  0001 C CNN
F 3 "" H 3540 6690 50  0001 C CNN
	1    3540 6690
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 59BE196B
P 3540 7260
F 0 "C4" H 3565 7360 50  0000 L CNN
F 1 "220nF" H 3565 7160 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3578 7110 50  0001 C CNN
F 3 "" H 3540 7260 50  0001 C CNN
	1    3540 7260
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 59BE1976
P 3540 7510
F 0 "#PWR013" H 3540 7260 50  0001 C CNN
F 1 "GND" H 3540 7360 50  0000 C CNN
F 2 "" H 3540 7510 50  0001 C CNN
F 3 "" H 3540 7510 50  0001 C CNN
	1    3540 7510
	1    0    0    -1  
$EndComp
Text Notes 1540 6090 0    60   ~ 0
Debouncing\nTau  = 2 ms
$Comp
L GND #PWR014
U 1 1 59BEB1DD
P 1400 3100
F 0 "#PWR014" H 1400 2850 50  0001 C CNN
F 1 "GND" H 1400 2950 50  0000 C CNN
F 2 "" H 1400 3100 50  0001 C CNN
F 3 "" H 1400 3100 50  0001 C CNN
	1    1400 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 59BEB8DF
P 1400 3800
F 0 "#PWR015" H 1400 3550 50  0001 C CNN
F 1 "GND" H 1400 3650 50  0000 C CNN
F 2 "" H 1400 3800 50  0001 C CNN
F 3 "" H 1400 3800 50  0001 C CNN
	1    1400 3800
	1    0    0    -1  
$EndComp
Text Label 10010 2130 2    60   ~ 0
Out_L
Text Label 10030 2880 2    60   ~ 0
Out_R
Text Label 10040 4000 2    60   ~ 0
Out_M
Text Label 10130 2370 0    60   ~ 0
Out_L
Text Label 10130 2570 0    60   ~ 0
Out_R
$Comp
L JACK_PJ324 J5
U 1 1 59BF7332
P 10610 4000
F 0 "J5" H 10680 4450 50  0000 C CNN
F 1 "JACK_PJ324" H 10670 3900 50  0000 C CNN
F 2 "My_Connectors:PJ-324" H 10690 3980 50  0001 C CNN
F 3 "" H 10690 3980 50  0001 C CNN
	1    10610 4000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR016
U 1 1 59BF90F8
P 10400 2800
F 0 "#PWR016" H 10400 2550 50  0001 C CNN
F 1 "GND" H 10400 2650 50  0000 C CNN
F 2 "" H 10400 2800 50  0001 C CNN
F 3 "" H 10400 2800 50  0001 C CNN
	1    10400 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 59BF9526
P 10230 4470
F 0 "#PWR017" H 10230 4220 50  0001 C CNN
F 1 "GND" H 10230 4320 50  0000 C CNN
F 2 "" H 10230 4470 50  0001 C CNN
F 3 "" H 10230 4470 50  0001 C CNN
	1    10230 4470
	1    0    0    -1  
$EndComp
Text Notes 3080 6140 0    60   ~ 0
Debouncing\nTau  = 2 ms
$Comp
L JACK_PJ324 J1
U 1 1 59C02916
P 820 4860
F 0 "J1" H 890 5310 50  0000 C CNN
F 1 "JACK_PJ324" H 880 4760 50  0000 C CNN
F 2 "My_Connectors:PJ-324" H 900 4840 50  0001 C CNN
F 3 "" H 900 4840 50  0001 C CNN
	1    820  4860
	1    0    0    1   
$EndComp
$Comp
L R R3
U 1 1 59C02E7D
P 2470 4870
F 0 "R3" V 2550 4870 50  0000 C CNN
F 1 "10k" V 2470 4870 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2400 4870 50  0001 C CNN
F 3 "" H 2470 4870 50  0001 C CNN
	1    2470 4870
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 59C02F30
P 2470 5330
F 0 "R4" V 2550 5330 50  0000 C CNN
F 1 "1.5k" V 2470 5330 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2400 5330 50  0001 C CNN
F 3 "" H 2470 5330 50  0001 C CNN
	1    2470 5330
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 59C031FB
P 2070 5100
F 0 "C2" H 2095 5200 50  0000 L CNN
F 1 "10uF" H 2095 5000 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 2108 4950 50  0001 C CNN
F 3 "" H 2070 5100 50  0001 C CNN
	1    2070 5100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR018
U 1 1 59C036EE
P 2470 5550
F 0 "#PWR018" H 2470 5300 50  0001 C CNN
F 1 "GND" H 2470 5400 50  0000 C CNN
F 2 "" H 2470 5550 50  0001 C CNN
F 3 "" H 2470 5550 50  0001 C CNN
	1    2470 5550
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR019
U 1 1 59C03D63
P 2470 4640
F 0 "#PWR019" H 2470 4490 50  0001 C CNN
F 1 "+12V" H 2470 4780 50  0000 C CNN
F 2 "" H 2470 4640 50  0001 C CNN
F 3 "" H 2470 4640 50  0001 C CNN
	1    2470 4640
	1    0    0    -1  
$EndComp
Text Label 1490 4860 2    60   ~ 0
Aux_L
Text Label 1490 5060 2    60   ~ 0
Aux_R
$Comp
L GND #PWR020
U 1 1 59C06235
P 1200 5340
F 0 "#PWR020" H 1200 5090 50  0001 C CNN
F 1 "GND" H 1200 5190 50  0000 C CNN
F 2 "" H 1200 5340 50  0001 C CNN
F 3 "" H 1200 5340 50  0001 C CNN
	1    1200 5340
	1    0    0    -1  
$EndComp
Text Label 1680 5100 0    60   ~ 0
Aux_L
Text Label 2930 5100 2    60   ~ 0
ADC_B4
$Comp
L L7812 U1
U 1 1 59C0B4E5
P 3380 1190
F 0 "U1" H 3230 1315 50  0000 C CNN
F 1 "L7812" H 3380 1315 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Horizontal" H 3405 1040 50  0001 L CIN
F 3 "" H 3380 1140 50  0001 C CNN
	1    3380 1190
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR021
U 1 1 59C0B6AC
P 3860 1120
F 0 "#PWR021" H 3860 970 50  0001 C CNN
F 1 "+12V" H 3860 1260 50  0000 C CNN
F 2 "" H 3860 1120 50  0001 C CNN
F 3 "" H 3860 1120 50  0001 C CNN
	1    3860 1120
	1    0    0    -1  
$EndComp
Text Notes 1640 4390 0    60   ~ 0
Offset para entrada auxiliar
$Comp
L R R7
U 1 1 59C0F64E
P 4350 4870
F 0 "R7" V 4430 4870 50  0000 C CNN
F 1 "10k" V 4350 4870 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4280 4870 50  0001 C CNN
F 3 "" H 4350 4870 50  0001 C CNN
	1    4350 4870
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 59C0F654
P 4350 5330
F 0 "R8" V 4430 5330 50  0000 C CNN
F 1 "1.5k" V 4350 5330 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4280 5330 50  0001 C CNN
F 3 "" H 4350 5330 50  0001 C CNN
	1    4350 5330
	1    0    0    -1  
$EndComp
$Comp
L CP C6
U 1 1 59C0F65A
P 3950 5100
F 0 "C6" H 3975 5200 50  0000 L CNN
F 1 "10uF" H 3975 5000 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 3988 4950 50  0001 C CNN
F 3 "" H 3950 5100 50  0001 C CNN
	1    3950 5100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR022
U 1 1 59C0F660
P 4350 5550
F 0 "#PWR022" H 4350 5300 50  0001 C CNN
F 1 "GND" H 4350 5400 50  0000 C CNN
F 2 "" H 4350 5550 50  0001 C CNN
F 3 "" H 4350 5550 50  0001 C CNN
	1    4350 5550
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR023
U 1 1 59C0F666
P 4350 4640
F 0 "#PWR023" H 4350 4490 50  0001 C CNN
F 1 "+12V" H 4350 4780 50  0000 C CNN
F 2 "" H 4350 4640 50  0001 C CNN
F 3 "" H 4350 4640 50  0001 C CNN
	1    4350 4640
	1    0    0    -1  
$EndComp
Text Label 3560 5100 0    60   ~ 0
Aux_R
Text Label 4810 5100 2    60   ~ 0
ADC_B2
Text Notes 3520 4390 0    60   ~ 0
Offset para entrada auxiliar
$Comp
L Conn_01x03 J4
U 1 1 59C119B4
P 1070 1290
F 0 "J4" H 1070 1490 50  0000 C CNN
F 1 "PWR" H 1070 1090 50  0000 C CNN
F 2 "Connectors:bornier3" H 1070 1290 50  0001 C CNN
F 3 "" H 1070 1290 50  0001 C CNN
	1    1070 1290
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR024
U 1 1 59C13811
P 1370 1130
F 0 "#PWR024" H 1370 980 50  0001 C CNN
F 1 "VCC" H 1370 1280 50  0000 C CNN
F 2 "" H 1370 1130 50  0001 C CNN
F 3 "" H 1370 1130 50  0001 C CNN
	1    1370 1130
	1    0    0    -1  
$EndComp
$Comp
L CP C3
U 1 1 59C15C47
P 2940 1380
F 0 "C3" H 2965 1480 50  0000 L CNN
F 1 "10uF" H 2965 1280 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 2978 1230 50  0001 C CNN
F 3 "" H 2940 1380 50  0001 C CNN
	1    2940 1380
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 59C166A8
P 1370 1490
F 0 "#PWR025" H 1370 1240 50  0001 C CNN
F 1 "GND" H 1370 1340 50  0000 C CNN
F 2 "" H 1370 1490 50  0001 C CNN
F 3 "" H 1370 1490 50  0001 C CNN
	1    1370 1490
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 59C170C2
P 2940 1590
F 0 "#PWR026" H 2940 1340 50  0001 C CNN
F 1 "GND" H 2940 1440 50  0000 C CNN
F 2 "" H 2940 1590 50  0001 C CNN
F 3 "" H 2940 1590 50  0001 C CNN
	1    2940 1590
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 59C183D1
P 3380 1570
F 0 "#PWR027" H 3380 1320 50  0001 C CNN
F 1 "GND" H 3380 1420 50  0000 C CNN
F 2 "" H 3380 1570 50  0001 C CNN
F 3 "" H 3380 1570 50  0001 C CNN
	1    3380 1570
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 59C18CBB
P 3860 1390
F 0 "C5" H 3885 1490 50  0000 L CNN
F 1 "100nF" H 3885 1290 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3898 1240 50  0001 C CNN
F 3 "" H 3860 1390 50  0001 C CNN
	1    3860 1390
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 59C196ED
P 3860 1600
F 0 "#PWR028" H 3860 1350 50  0001 C CNN
F 1 "GND" H 3860 1450 50  0000 C CNN
F 2 "" H 3860 1600 50  0001 C CNN
F 3 "" H 3860 1600 50  0001 C CNN
	1    3860 1600
	1    0    0    -1  
$EndComp
Text Notes 2790 890  0    60   ~ 0
Fuente de alimentación
NoConn ~ 1270 1290
NoConn ~ 4920 1550
NoConn ~ 4920 1650
NoConn ~ 4920 1750
NoConn ~ 4920 1850
NoConn ~ 4920 2150
NoConn ~ 6240 1650
NoConn ~ 6240 3620
NoConn ~ 6240 2150
NoConn ~ 4920 3120
NoConn ~ 4920 3220
NoConn ~ 4920 3520
NoConn ~ 4920 3720
NoConn ~ 4920 3820
NoConn ~ 6240 3120
NoConn ~ 6240 3320
NoConn ~ 6240 3420
NoConn ~ 6240 3720
NoConn ~ 6470 3220
NoConn ~ 6470 3320
NoConn ~ 6470 3420
NoConn ~ 6880 3520
NoConn ~ 6880 3620
NoConn ~ 6470 3720
NoConn ~ 6470 3820
NoConn ~ 7790 3020
NoConn ~ 7790 3420
NoConn ~ 7790 3520
NoConn ~ 7790 3620
NoConn ~ 7790 3720
NoConn ~ 7790 2150
NoConn ~ 7790 2250
NoConn ~ 7790 2350
NoConn ~ 7790 1650
NoConn ~ 7790 1550
NoConn ~ 6470 1550
NoConn ~ 6470 1750
NoConn ~ 6470 1950
NoConn ~ 6470 2050
NoConn ~ 6470 2150
NoConn ~ 6470 2250
NoConn ~ 6470 2350
$Comp
L Jumper JP1
U 1 1 59C2BD2A
P 1960 1190
F 0 "JP1" H 1960 1340 50  0000 C CNN
F 1 "Jumper" H 1960 1110 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1960 1190 50  0001 C CNN
F 3 "" H 1960 1190 50  0001 C CNN
	1    1960 1190
	1    0    0    -1  
$EndComp
$Comp
L TEST TP7
U 1 1 59C2E364
P 4090 1180
F 0 "TP7" H 4090 1480 50  0000 C BNN
F 1 "TEST" H 4090 1430 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 4090 1180 50  0001 C CNN
F 3 "" H 4090 1180 50  0001 C CNN
	1    4090 1180
	1    0    0    -1  
$EndComp
$Comp
L TEST TP3
U 1 1 59C2FD08
P 3550 2680
F 0 "TP3" H 3550 2980 50  0000 C BNN
F 1 "TEST" H 3550 2930 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 3550 2680 50  0001 C CNN
F 3 "" H 3550 2680 50  0001 C CNN
	1    3550 2680
	1    0    0    -1  
$EndComp
$Comp
L TEST TP4
U 1 1 59C30384
P 3580 3360
F 0 "TP4" H 3580 3660 50  0000 C BNN
F 1 "TEST" H 3580 3610 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 3580 3360 50  0001 C CNN
F 3 "" H 3580 3360 50  0001 C CNN
	1    3580 3360
	1    0    0    -1  
$EndComp
$Comp
L TEST TP1
U 1 1 59C3090C
P 3020 5090
F 0 "TP1" H 3020 5390 50  0000 C BNN
F 1 "TEST" H 3020 5340 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 3020 5090 50  0001 C CNN
F 3 "" H 3020 5090 50  0001 C CNN
	1    3020 5090
	1    0    0    -1  
$EndComp
$Comp
L TEST TP13
U 1 1 59C30A32
P 4910 5090
F 0 "TP13" H 4910 5390 50  0000 C BNN
F 1 "TEST" H 4910 5340 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 4910 5090 50  0001 C CNN
F 3 "" H 4910 5090 50  0001 C CNN
	1    4910 5090
	1    0    0    -1  
$EndComp
$Comp
L TEST TP11
U 1 1 59C30D3D
P 4570 6270
F 0 "TP11" H 4570 6570 50  0000 C BNN
F 1 "TEST" H 4570 6520 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 4570 6270 50  0001 C CNN
F 3 "" H 4570 6270 50  0001 C CNN
	1    4570 6270
	1    0    0    -1  
$EndComp
$Comp
L TEST TP17
U 1 1 59C34F0F
P 10090 2120
F 0 "TP17" H 10090 2420 50  0000 C BNN
F 1 "TEST" H 10090 2370 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 10090 2120 50  0001 C CNN
F 3 "" H 10090 2120 50  0001 C CNN
	1    10090 2120
	1    0    0    -1  
$EndComp
$Comp
L TEST TP18
U 1 1 59C35307
P 10090 2880
F 0 "TP18" H 10090 3180 50  0000 C BNN
F 1 "TEST" H 10090 3130 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 10090 2880 50  0001 C CNN
F 3 "" H 10090 2880 50  0001 C CNN
	1    10090 2880
	1    0    0    -1  
$EndComp
$Comp
L TEST TP20
U 1 1 59C3564E
P 10100 3970
F 0 "TP20" H 10100 4270 50  0000 C BNN
F 1 "TEST" H 10100 4220 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 10100 3970 50  0001 C CNN
F 3 "" H 10100 3970 50  0001 C CNN
	1    10100 3970
	1    0    0    -1  
$EndComp
$Comp
L TEST TP10
U 1 1 59C3BC06
P 4440 6450
F 0 "TP10" H 4440 6750 50  0000 C BNN
F 1 "TEST" H 4440 6700 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 4440 6450 50  0001 C CNN
F 3 "" H 4440 6450 50  0001 C CNN
	1    4440 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3070 2680 3550 2680
Wire Wire Line
	1270 2670 1900 2670
Wire Wire Line
	3080 3360 3580 3360
Wire Wire Line
	1270 3350 1910 3350
Wire Wire Line
	5330 2350 4920 2350
Wire Wire Line
	4920 2250 5330 2250
Wire Wire Line
	4920 2150 5330 2150
Wire Wire Line
	4920 2050 5330 2050
Wire Wire Line
	4920 1850 5330 1850
Wire Wire Line
	4920 1550 5330 1550
Wire Wire Line
	4920 1650 5330 1650
Wire Wire Line
	5330 1750 4920 1750
Wire Wire Line
	5830 2250 6240 2250
Wire Wire Line
	6240 2150 5830 2150
Wire Wire Line
	5830 2050 6240 2050
Wire Wire Line
	5830 1950 6240 1950
Wire Wire Line
	5830 1850 6240 1850
Wire Wire Line
	5830 1750 6240 1750
Wire Wire Line
	5830 1650 6240 1650
Wire Wire Line
	5880 2400 5880 1550
Wire Wire Line
	5880 1550 5830 1550
Wire Wire Line
	6880 2250 6470 2250
Wire Wire Line
	6470 2150 6880 2150
Wire Wire Line
	6470 2050 6880 2050
Wire Wire Line
	6470 1950 6880 1950
Wire Wire Line
	6470 1750 6880 1750
Wire Wire Line
	6470 1450 6880 1450
Wire Wire Line
	6470 1550 6880 1550
Wire Wire Line
	6880 1650 6470 1650
Wire Wire Line
	7380 2250 7790 2250
Wire Wire Line
	7790 2150 7380 2150
Wire Wire Line
	7380 2050 7790 2050
Wire Wire Line
	7380 1950 7790 1950
Wire Wire Line
	7380 1850 7790 1850
Wire Wire Line
	7380 1650 7790 1650
Wire Wire Line
	5330 3820 4920 3820
Wire Wire Line
	4920 3720 5330 3720
Wire Wire Line
	4920 3520 5330 3520
Wire Wire Line
	4920 3120 5330 3120
Wire Wire Line
	5330 3220 4920 3220
Wire Wire Line
	5330 2920 5330 2840
Wire Wire Line
	5830 2840 5830 2920
Wire Wire Line
	5830 3720 6240 3720
Wire Wire Line
	6240 3620 5830 3620
Wire Wire Line
	5830 3520 6240 3520
Wire Wire Line
	5830 3420 6240 3420
Wire Wire Line
	5830 3320 6240 3320
Wire Wire Line
	5830 3220 6240 3220
Wire Wire Line
	5830 3120 6240 3120
Wire Wire Line
	5880 3870 5880 3020
Wire Wire Line
	5880 3020 5830 3020
Wire Wire Line
	6880 3720 6470 3720
Wire Wire Line
	6470 3420 6880 3420
Wire Wire Line
	6470 3220 6880 3220
Wire Wire Line
	6470 2920 6880 2920
Wire Wire Line
	6470 3020 6880 3020
Wire Wire Line
	6880 3120 6470 3120
Wire Wire Line
	7380 3620 7790 3620
Wire Wire Line
	7790 3520 7380 3520
Wire Wire Line
	7380 3420 7790 3420
Wire Wire Line
	7380 3320 7790 3320
Wire Wire Line
	7380 3020 7790 3020
Wire Wire Line
	7430 2920 7430 3870
Wire Wire Line
	6470 1850 6880 1850
Wire Wire Line
	7380 1450 7430 1450
Wire Wire Line
	7430 1450 7430 2400
Wire Wire Line
	7380 1550 7790 1550
Wire Wire Line
	7380 2350 7790 2350
Wire Wire Line
	6880 2350 6470 2350
Wire Wire Line
	6880 3320 6470 3320
Wire Wire Line
	6880 3820 6470 3820
Wire Wire Line
	7380 2920 7430 2920
Wire Wire Line
	7380 3720 7790 3720
Wire Wire Line
	1320 6910 1200 6910
Wire Wire Line
	800  6910 770  6910
Wire Wire Line
	770  6910 770  7010
Wire Wire Line
	1770 6430 1770 6510
Wire Wire Line
	1770 6810 1770 7080
Wire Wire Line
	1620 6910 2140 6910
Connection ~ 1770 6910
Wire Wire Line
	1770 7480 1770 7380
Wire Wire Line
	1770 6910 1770 6900
Wire Wire Line
	2570 6940 2540 6940
Wire Wire Line
	2540 6940 2540 7040
Wire Wire Line
	5340 6630 5500 6630
Wire Wire Line
	5500 6630 5500 6740
Wire Wire Line
	5340 6460 5700 6460
Wire Wire Line
	5700 6460 5700 6740
Wire Wire Line
	5340 6290 5900 6290
Wire Wire Line
	5900 6290 5900 6740
Wire Wire Line
	4570 6290 5040 6290
Wire Wire Line
	4440 6460 5040 6460
Wire Wire Line
	5040 6630 4660 6630
Wire Notes Line
	1240 6150 1240 7690
Wire Notes Line
	1240 7690 2230 7690
Wire Notes Line
	2230 7690 2230 6150
Wire Notes Line
	2230 6150 1240 6150
Wire Wire Line
	3090 6940 2970 6940
Wire Wire Line
	3540 6460 3540 6540
Wire Wire Line
	3540 6840 3540 7110
Wire Wire Line
	3390 6940 3910 6940
Connection ~ 3540 6940
Wire Wire Line
	3540 7510 3540 7410
Wire Wire Line
	3540 6940 3540 6930
Wire Notes Line
	3010 6180 3010 7720
Wire Notes Line
	3010 7720 4000 7720
Wire Notes Line
	4000 7720 4000 6180
Wire Notes Line
	4000 6180 3010 6180
Wire Wire Line
	1270 2770 1400 2770
Wire Wire Line
	1400 2670 1400 2970
Connection ~ 1400 2670
Wire Wire Line
	1400 2870 1270 2870
Connection ~ 1400 2770
Wire Wire Line
	1400 2970 1270 2970
Connection ~ 1400 2870
Wire Wire Line
	1270 3450 1410 3450
Wire Wire Line
	1410 3350 1410 3650
Connection ~ 1410 3350
Wire Wire Line
	1410 3550 1270 3550
Connection ~ 1410 3450
Wire Wire Line
	1410 3650 1270 3650
Connection ~ 1410 3550
Wire Wire Line
	1400 3800 1400 3750
Wire Wire Line
	1400 3750 1270 3750
Wire Wire Line
	1400 3100 1400 3070
Wire Wire Line
	1400 3070 1270 3070
Wire Wire Line
	8400 2120 8040 2120
Wire Wire Line
	8400 2870 8030 2870
Wire Wire Line
	8410 3990 8030 3990
Wire Wire Line
	9770 4000 10230 4000
Wire Wire Line
	9760 2880 10090 2880
Wire Wire Line
	9760 2130 10090 2130
Wire Wire Line
	10400 2320 10400 2420
Wire Wire Line
	10400 2520 10400 2620
Wire Wire Line
	10130 2370 10400 2370
Connection ~ 10400 2370
Wire Wire Line
	10130 2570 10400 2570
Connection ~ 10400 2570
Wire Wire Line
	10230 4000 10230 4300
Connection ~ 10230 4100
Connection ~ 10230 4200
Wire Wire Line
	10230 4400 10230 4470
Wire Wire Line
	10400 2720 10400 2800
Wire Wire Line
	5700 7200 5700 7140
Wire Wire Line
	2470 5020 2470 5180
Wire Wire Line
	2220 5100 3020 5100
Connection ~ 2470 5100
Wire Wire Line
	2470 5550 2470 5480
Wire Wire Line
	2470 4640 2470 4720
Wire Wire Line
	1490 4860 1200 4860
Wire Wire Line
	1200 4860 1200 4960
Wire Wire Line
	1490 5060 1200 5060
Wire Wire Line
	1200 5060 1200 5160
Wire Wire Line
	1200 5340 1200 5260
Wire Wire Line
	1680 5100 1920 5100
Wire Notes Line
	1640 4400 1640 5790
Wire Notes Line
	1640 5790 3070 5790
Wire Notes Line
	3070 5790 3070 4400
Wire Notes Line
	3070 4400 1640 4400
Wire Wire Line
	4350 5020 4350 5180
Wire Wire Line
	4100 5100 4910 5100
Connection ~ 4350 5100
Wire Wire Line
	4350 5550 4350 5480
Wire Wire Line
	4350 4640 4350 4720
Wire Wire Line
	3560 5100 3800 5100
Wire Notes Line
	3520 4400 3520 5790
Wire Notes Line
	3520 5790 4950 5790
Wire Notes Line
	4950 5790 4950 4400
Wire Notes Line
	4950 4400 3520 4400
Wire Wire Line
	1370 1130 1370 1190
Wire Wire Line
	2260 1190 3080 1190
Connection ~ 1370 1190
Wire Wire Line
	2940 1230 2940 1190
Connection ~ 2940 1190
Wire Wire Line
	1370 1490 1370 1390
Wire Wire Line
	1370 1390 1270 1390
Wire Wire Line
	3380 1570 3380 1490
Wire Wire Line
	2940 1590 2940 1530
Wire Wire Line
	3860 1120 3860 1240
Wire Wire Line
	3680 1190 4090 1190
Connection ~ 3860 1190
Wire Wire Line
	3860 1600 3860 1540
Wire Notes Line
	2780 910  2780 1850
Wire Notes Line
	2780 1850 4170 1850
Wire Notes Line
	4170 1850 4170 910 
Wire Notes Line
	4170 910  2780 910 
Wire Wire Line
	1270 1190 1660 1190
Wire Wire Line
	4090 1190 4090 1180
Wire Wire Line
	3020 5100 3020 5090
Wire Wire Line
	4910 5100 4910 5090
Wire Wire Line
	4570 6290 4570 6270
Wire Wire Line
	4440 6460 4440 6450
Wire Wire Line
	10090 2130 10090 2120
Wire Wire Line
	10100 3970 10100 4000
Connection ~ 10100 4000
$Comp
L TEST TP8
U 1 1 59C48D0F
P 4310 1190
F 0 "TP8" H 4310 1490 50  0000 C BNN
F 1 "TEST" H 4310 1440 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 4310 1190 50  0001 C CNN
F 3 "" H 4310 1190 50  0001 C CNN
	1    4310 1190
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 59C4911E
P 4310 1260
F 0 "#PWR029" H 4310 1010 50  0001 C CNN
F 1 "GND" H 4310 1110 50  0000 C CNN
F 2 "" H 4310 1260 50  0001 C CNN
F 3 "" H 4310 1260 50  0001 C CNN
	1    4310 1260
	1    0    0    -1  
$EndComp
Wire Wire Line
	4310 1260 4310 1190
$Comp
L TEST TP5
U 1 1 59C4989E
P 3830 2630
F 0 "TP5" H 3830 2930 50  0000 C BNN
F 1 "TEST" H 3830 2880 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 3830 2630 50  0001 C CNN
F 3 "" H 3830 2630 50  0001 C CNN
	1    3830 2630
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 59C498A4
P 3830 2700
F 0 "#PWR030" H 3830 2450 50  0001 C CNN
F 1 "GND" H 3830 2550 50  0000 C CNN
F 2 "" H 3830 2700 50  0001 C CNN
F 3 "" H 3830 2700 50  0001 C CNN
	1    3830 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3830 2700 3830 2630
$Comp
L TEST TP6
U 1 1 59C499E7
P 3830 3370
F 0 "TP6" H 3830 3670 50  0000 C BNN
F 1 "TEST" H 3830 3620 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 3830 3370 50  0001 C CNN
F 3 "" H 3830 3370 50  0001 C CNN
	1    3830 3370
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 59C499ED
P 3830 3440
F 0 "#PWR031" H 3830 3190 50  0001 C CNN
F 1 "GND" H 3830 3290 50  0000 C CNN
F 2 "" H 3830 3440 50  0001 C CNN
F 3 "" H 3830 3440 50  0001 C CNN
	1    3830 3440
	1    0    0    -1  
$EndComp
Wire Wire Line
	3830 3440 3830 3370
$Comp
L TEST TP2
U 1 1 59C4A307
P 3230 5090
F 0 "TP2" H 3230 5390 50  0000 C BNN
F 1 "TEST" H 3230 5340 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 3230 5090 50  0001 C CNN
F 3 "" H 3230 5090 50  0001 C CNN
	1    3230 5090
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 59C4A30D
P 3230 5160
F 0 "#PWR032" H 3230 4910 50  0001 C CNN
F 1 "GND" H 3230 5010 50  0000 C CNN
F 2 "" H 3230 5160 50  0001 C CNN
F 3 "" H 3230 5160 50  0001 C CNN
	1    3230 5160
	1    0    0    -1  
$EndComp
Wire Wire Line
	3230 5160 3230 5090
$Comp
L TEST TP14
U 1 1 59C4A768
P 5090 5090
F 0 "TP14" H 5090 5390 50  0000 C BNN
F 1 "TEST" H 5090 5340 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 5090 5090 50  0001 C CNN
F 3 "" H 5090 5090 50  0001 C CNN
	1    5090 5090
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 59C4A76E
P 5090 5160
F 0 "#PWR033" H 5090 4910 50  0001 C CNN
F 1 "GND" H 5090 5010 50  0000 C CNN
F 2 "" H 5090 5160 50  0001 C CNN
F 3 "" H 5090 5160 50  0001 C CNN
	1    5090 5160
	1    0    0    -1  
$EndComp
Wire Wire Line
	5090 5160 5090 5090
$Comp
L TEST TP9
U 1 1 59C4AE3E
P 4390 7170
F 0 "TP9" H 4390 7470 50  0000 C BNN
F 1 "TEST" H 4390 7420 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 4390 7170 50  0001 C CNN
F 3 "" H 4390 7170 50  0001 C CNN
	1    4390 7170
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 59C4AE44
P 4390 7240
F 0 "#PWR034" H 4390 6990 50  0001 C CNN
F 1 "GND" H 4390 7090 50  0000 C CNN
F 2 "" H 4390 7240 50  0001 C CNN
F 3 "" H 4390 7240 50  0001 C CNN
	1    4390 7240
	1    0    0    -1  
$EndComp
Wire Wire Line
	4390 7240 4390 7170
$Comp
L TEST TP12
U 1 1 59C4AF8D
P 4590 7170
F 0 "TP12" H 4590 7470 50  0000 C BNN
F 1 "TEST" H 4590 7420 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 4590 7170 50  0001 C CNN
F 3 "" H 4590 7170 50  0001 C CNN
	1    4590 7170
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 59C4AF93
P 4590 7240
F 0 "#PWR035" H 4590 6990 50  0001 C CNN
F 1 "GND" H 4590 7090 50  0000 C CNN
F 2 "" H 4590 7240 50  0001 C CNN
F 3 "" H 4590 7240 50  0001 C CNN
	1    4590 7240
	1    0    0    -1  
$EndComp
Wire Wire Line
	4590 7240 4590 7170
$Comp
L TEST TP16
U 1 1 59C4B6D9
P 10070 1390
F 0 "TP16" H 10070 1690 50  0000 C BNN
F 1 "TEST" H 10070 1640 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 10070 1390 50  0001 C CNN
F 3 "" H 10070 1390 50  0001 C CNN
	1    10070 1390
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 59C4B6DF
P 10070 1460
F 0 "#PWR036" H 10070 1210 50  0001 C CNN
F 1 "GND" H 10070 1310 50  0000 C CNN
F 2 "" H 10070 1460 50  0001 C CNN
F 3 "" H 10070 1460 50  0001 C CNN
	1    10070 1460
	1    0    0    -1  
$EndComp
Wire Wire Line
	10070 1460 10070 1390
$Comp
L TEST TP19
U 1 1 59C4B864
P 10100 3260
F 0 "TP19" H 10100 3560 50  0000 C BNN
F 1 "TEST" H 10100 3510 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 10100 3260 50  0001 C CNN
F 3 "" H 10100 3260 50  0001 C CNN
	1    10100 3260
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 59C4B86A
P 10100 3330
F 0 "#PWR037" H 10100 3080 50  0001 C CNN
F 1 "GND" H 10100 3180 50  0000 C CNN
F 2 "" H 10100 3330 50  0001 C CNN
F 3 "" H 10100 3330 50  0001 C CNN
	1    10100 3330
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3330 10100 3260
$Comp
L TEST TP15
U 1 1 59C4BEC5
P 9910 4390
F 0 "TP15" H 9910 4690 50  0000 C BNN
F 1 "TEST" H 9910 4640 50  0000 C CNN
F 2 "Connectors_TestPoints:Test_Point_THTPad_4.0x4.0mm_Drill2.0mm" H 9910 4390 50  0001 C CNN
F 3 "" H 9910 4390 50  0001 C CNN
	1    9910 4390
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 59C4BECB
P 9910 4460
F 0 "#PWR038" H 9910 4210 50  0001 C CNN
F 1 "GND" H 9910 4310 50  0000 C CNN
F 2 "" H 9910 4460 50  0001 C CNN
F 3 "" H 9910 4460 50  0001 C CNN
	1    9910 4460
	1    0    0    -1  
$EndComp
Wire Wire Line
	9910 4460 9910 4390
NoConn ~ 7380 1750
$Comp
L LED_RCBG D1
U 1 1 59C9A974
P 5700 6940
F 0 "D1" H 5700 7310 50  0000 C CNN
F 1 "LED-RGB5D-AC-R30/4P" H 5700 6590 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm-4" H 5700 6890 50  0001 C CNN
F 3 "" H 5700 6890 50  0001 C CNN
	1    5700 6940
	0    -1   -1   0   
$EndComp
$Comp
L Conn_02x10_Odd_Even J1-J1
U 1 1 59CAA393
P 5530 1850
F 0 "J1-J1" H 5580 2350 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 5580 1250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x10_Pitch2.00mm" H 5530 1850 50  0001 C CNN
F 3 "" H 5530 1850 50  0001 C CNN
	1    5530 1850
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x10_Odd_Even J1-J3
U 1 1 59CABA15
P 7080 1850
F 0 "J1-J3" H 7130 2350 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 7130 1250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x10_Pitch2.00mm" H 7080 1850 50  0001 C CNN
F 3 "" H 7080 1850 50  0001 C CNN
	1    7080 1850
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x10_Odd_Even J1-J2
U 1 1 59CABB77
P 5530 3320
F 0 "J1-J2" H 5580 3820 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 5580 2720 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x10_Pitch2.00mm" H 5530 3320 50  0001 C CNN
F 3 "" H 5530 3320 50  0001 C CNN
	1    5530 3320
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x10_Odd_Even J1-J4
U 1 1 59CABCE0
P 7080 3320
F 0 "J1-J4" H 7130 3820 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 7130 2720 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x10_Pitch2.00mm" H 7080 3320 50  0001 C CNN
F 3 "" H 7080 3320 50  0001 C CNN
	1    7080 3320
	1    0    0    -1  
$EndComp
NoConn ~ 6470 3120
Text Label 6470 1450 0    60   ~ 0
PWM_7A
NoConn ~ 7790 1850
NoConn ~ 7790 3320
NoConn ~ 5830 1450
NoConn ~ 5330 1450
$EndSCHEMATC
