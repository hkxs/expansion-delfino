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
Sheet 2 6
Title "Tarjeta de expansión para el launchpad LAUNCHXL-F28377S"
Date "2017-03-31"
Rev "V2"
Comp "LabDSP, UNAM"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Incluye el preamplificador y el amplificador"
$EndDescr
$Comp
L TL082 U2
U 1 1 58DB174A
P 4480 4100
AR Path="/59B9A6B7/58DB174A" Ref="U2"  Part="1" 
AR Path="/59B9DFC6/58DB174A" Ref="U3"  Part="1" 
F 0 "U2" H 4480 4300 50  0000 L CNN
F 1 "TL082" H 4480 3900 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 4480 4100 50  0001 C CNN
F 3 "" H 4480 4100 50  0001 C CNN
	1    4480 4100
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 58DB1860
P 5270 4100
AR Path="/59B9A6B7/58DB1860" Ref="R14"  Part="1" 
AR Path="/59B9DFC6/58DB1860" Ref="R24"  Part="1" 
F 0 "R14" V 5350 4100 50  0000 C CNN
F 1 "47" V 5270 4100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5200 4100 50  0001 C CNN
F 3 "" H 5270 4100 50  0001 C CNN
	1    5270 4100
	0    1    1    0   
$EndComp
$Comp
L CP C10
U 1 1 58DB1926
P 5890 4100
AR Path="/59B9A6B7/58DB1926" Ref="C10"  Part="1" 
AR Path="/59B9DFC6/58DB1926" Ref="C16"  Part="1" 
F 0 "C10" H 5915 4200 50  0000 L CNN
F 1 "2.2uF" H 5915 4000 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 5928 3950 50  0001 C CNN
F 3 "" H 5890 4100 50  0001 C CNN
	1    5890 4100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR039
U 1 1 58DB1E7D
P 4380 4530
AR Path="/59B9A6B7/58DB1E7D" Ref="#PWR039"  Part="1" 
AR Path="/59B9DFC6/58DB1E7D" Ref="#PWR051"  Part="1" 
F 0 "#PWR039" H 4380 4280 50  0001 C CNN
F 1 "GND" H 4380 4380 50  0000 C CNN
F 2 "" H 4380 4530 50  0001 C CNN
F 3 "" H 4380 4530 50  0001 C CNN
	1    4380 4530
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 58DB209C
P 5560 5650
AR Path="/59B9A6B7/58DB209C" Ref="R15"  Part="1" 
AR Path="/59B9DFC6/58DB209C" Ref="R25"  Part="1" 
F 0 "R15" V 5640 5650 50  0000 C CNN
F 1 "10K" V 5560 5650 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5490 5650 50  0001 C CNN
F 3 "" H 5560 5650 50  0001 C CNN
	1    5560 5650
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 58DB21A2
P 5560 6320
AR Path="/59B9A6B7/58DB21A2" Ref="R16"  Part="1" 
AR Path="/59B9DFC6/58DB21A2" Ref="R26"  Part="1" 
F 0 "R16" V 5640 6320 50  0000 C CNN
F 1 "10K" V 5560 6320 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5490 6320 50  0001 C CNN
F 3 "" H 5560 6320 50  0001 C CNN
	1    5560 6320
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 58DB2AB6
P 5430 6520
AR Path="/59B9A6B7/58DB2AB6" Ref="#PWR040"  Part="1" 
AR Path="/59B9DFC6/58DB2AB6" Ref="#PWR052"  Part="1" 
F 0 "#PWR040" H 5430 6270 50  0001 C CNN
F 1 "GND" H 5430 6370 50  0000 C CNN
F 2 "" H 5430 6520 50  0001 C CNN
F 3 "" H 5430 6520 50  0001 C CNN
	1    5430 6520
	1    0    0    -1  
$EndComp
$Comp
L CP C7
U 1 1 58DB31C6
P 3330 4200
AR Path="/59B9A6B7/58DB31C6" Ref="C7"  Part="1" 
AR Path="/59B9DFC6/58DB31C6" Ref="C13"  Part="1" 
F 0 "C7" H 3355 4300 50  0000 L CNN
F 1 "2.2uF" H 3355 4100 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 3368 4050 50  0001 C CNN
F 3 "" H 3330 4200 50  0001 C CNN
	1    3330 4200
	0    1    1    0   
$EndComp
Text Label 5890 5870 2    60   ~ 0
Voff
Text Label 3950 4000 0    60   ~ 0
Voff
Text Notes 5070 5230 0    60   ~ 0
Offset 6V
$Comp
L R R12
U 1 1 58DB599C
P 2940 3890
AR Path="/59B9A6B7/58DB599C" Ref="R12"  Part="1" 
AR Path="/59B9DFC6/58DB599C" Ref="R22"  Part="1" 
F 0 "R12" V 3020 3890 50  0000 C CNN
F 1 "10K" V 2940 3890 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2870 3890 50  0001 C CNN
F 3 "" H 2940 3890 50  0001 C CNN
	1    2940 3890
	1    0    0    -1  
$EndComp
Text Notes 2670 3400 0    60   ~ 0
Polarización del \nmicrófono
$Comp
L R R13
U 1 1 58DB799D
P 4390 3260
AR Path="/59B9A6B7/58DB799D" Ref="R13"  Part="1" 
AR Path="/59B9DFC6/58DB799D" Ref="R23"  Part="1" 
F 0 "R13" V 4470 3260 50  0000 C CNN
F 1 "68K" V 4390 3260 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4320 3260 50  0001 C CNN
F 3 "" H 4390 3260 50  0001 C CNN
	1    4390 3260
	0    1    1    0   
$EndComp
$Comp
L C C8
U 1 1 58DB801F
P 4380 2930
AR Path="/59B9A6B7/58DB801F" Ref="C8"  Part="1" 
AR Path="/59B9DFC6/58DB801F" Ref="C14"  Part="1" 
F 0 "C8" H 4405 3030 50  0000 L CNN
F 1 "10pF" H 4405 2830 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4418 2780 50  0001 C CNN
F 3 "" H 4380 2930 50  0001 C CNN
	1    4380 2930
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 58DB9255
P 6200 4300
AR Path="/59B9A6B7/58DB9255" Ref="R17"  Part="1" 
AR Path="/59B9DFC6/58DB9255" Ref="R27"  Part="1" 
F 0 "R17" V 6280 4300 50  0000 C CNN
F 1 "68K" V 6200 4300 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6130 4300 50  0001 C CNN
F 3 "" H 6200 4300 50  0001 C CNN
	1    6200 4300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR041
U 1 1 58DB93DB
P 6200 4510
AR Path="/59B9A6B7/58DB93DB" Ref="#PWR041"  Part="1" 
AR Path="/59B9DFC6/58DB93DB" Ref="#PWR053"  Part="1" 
F 0 "#PWR041" H 6200 4260 50  0001 C CNN
F 1 "GND" H 6200 4360 50  0000 C CNN
F 2 "" H 6200 4510 50  0001 C CNN
F 3 "" H 6200 4510 50  0001 C CNN
	1    6200 4510
	1    0    0    -1  
$EndComp
Text Label 6200 4100 0    60   ~ 0
Vpre
$Comp
L CP C9
U 1 1 58DBC635
P 5280 6310
AR Path="/59B9A6B7/58DBC635" Ref="C9"  Part="1" 
AR Path="/59B9DFC6/58DBC635" Ref="C15"  Part="1" 
F 0 "C9" H 5305 6410 50  0000 L CNN
F 1 "2.2uF" H 5305 6210 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 5318 6160 50  0001 C CNN
F 3 "" H 5280 6310 50  0001 C CNN
	1    5280 6310
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR042
U 1 1 58DBEAEF
P 2940 3630
AR Path="/59B9A6B7/58DBEAEF" Ref="#PWR042"  Part="1" 
AR Path="/59B9DFC6/58DBEAEF" Ref="#PWR054"  Part="1" 
F 0 "#PWR042" H 2940 3480 50  0001 C CNN
F 1 "+12V" H 2940 3770 50  0000 C CNN
F 2 "" H 2940 3630 50  0001 C CNN
F 3 "" H 2940 3630 50  0001 C CNN
	1    2940 3630
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR043
U 1 1 58DBEBDE
P 4380 3670
AR Path="/59B9A6B7/58DBEBDE" Ref="#PWR043"  Part="1" 
AR Path="/59B9DFC6/58DBEBDE" Ref="#PWR055"  Part="1" 
F 0 "#PWR043" H 4380 3520 50  0001 C CNN
F 1 "+12V" H 4380 3810 50  0000 C CNN
F 2 "" H 4380 3670 50  0001 C CNN
F 3 "" H 4380 3670 50  0001 C CNN
	1    4380 3670
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR044
U 1 1 58DBEF77
P 5560 5440
AR Path="/59B9A6B7/58DBEF77" Ref="#PWR044"  Part="1" 
AR Path="/59B9DFC6/58DBEF77" Ref="#PWR056"  Part="1" 
F 0 "#PWR044" H 5560 5290 50  0001 C CNN
F 1 "+12V" H 5560 5580 50  0000 C CNN
F 2 "" H 5560 5440 50  0001 C CNN
F 3 "" H 5560 5440 50  0001 C CNN
	1    5560 5440
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR045
U 1 1 58DBFC70
P 9300 2730
AR Path="/59B9A6B7/58DBFC70" Ref="#PWR045"  Part="1" 
AR Path="/59B9DFC6/58DBFC70" Ref="#PWR057"  Part="1" 
F 0 "#PWR045" H 9300 2580 50  0001 C CNN
F 1 "+12V" H 9300 2870 50  0000 C CNN
F 2 "" H 9300 2730 50  0001 C CNN
F 3 "" H 9300 2730 50  0001 C CNN
	1    9300 2730
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 58DC019C
P 9300 3180
AR Path="/59B9A6B7/58DC019C" Ref="#PWR046"  Part="1" 
AR Path="/59B9DFC6/58DC019C" Ref="#PWR058"  Part="1" 
F 0 "#PWR046" H 9300 2930 50  0001 C CNN
F 1 "GND" H 9300 3030 50  0000 C CNN
F 2 "" H 9300 3180 50  0001 C CNN
F 3 "" H 9300 3180 50  0001 C CNN
	1    9300 3180
	1    0    0    -1  
$EndComp
$Comp
L CP C12
U 1 1 58DC033A
P 9300 2960
AR Path="/59B9A6B7/58DC033A" Ref="C12"  Part="1" 
AR Path="/59B9DFC6/58DC033A" Ref="C18"  Part="1" 
F 0 "C12" H 9325 3060 50  0000 L CNN
F 1 "2.2uF" H 9325 2860 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 9338 2810 50  0001 C CNN
F 3 "" H 9300 2960 50  0001 C CNN
	1    9300 2960
	1    0    0    -1  
$EndComp
$Comp
L TL082 U2
U 2 1 58DEB094
P 7400 4000
AR Path="/59B9A6B7/58DEB094" Ref="U2"  Part="2" 
AR Path="/59B9DFC6/58DEB094" Ref="U3"  Part="2" 
F 0 "U2" H 7400 4200 50  0000 L CNN
F 1 "TL082" H 7400 3800 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 7400 4000 50  0001 C CNN
F 3 "" H 7400 4000 50  0001 C CNN
	2    7400 4000
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 58DED4C1
P 6680 4100
AR Path="/59B9A6B7/58DED4C1" Ref="R18"  Part="1" 
AR Path="/59B9DFC6/58DED4C1" Ref="R28"  Part="1" 
F 0 "R18" V 6760 4100 50  0000 C CNN
F 1 "1.5K" V 6680 4100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6610 4100 50  0001 C CNN
F 3 "" H 6680 4100 50  0001 C CNN
	1    6680 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	4380 3670 4380 3800
Wire Wire Line
	4380 4400 4380 4530
Wire Wire Line
	5560 5800 5560 6170
Connection ~ 5560 5870
Wire Wire Line
	5280 6160 5280 5870
Wire Wire Line
	5280 6460 5280 6520
Wire Wire Line
	5280 6520 5560 6520
Wire Wire Line
	5560 6520 5560 6470
Connection ~ 5430 6520
Wire Wire Line
	5560 5440 5560 5500
Wire Wire Line
	5280 5870 5890 5870
Wire Wire Line
	4180 4000 3950 4000
Wire Notes Line
	5070 5230 5070 6730
Wire Notes Line
	5070 6730 6070 6730
Wire Notes Line
	6070 6730 6070 5230
Wire Notes Line
	6070 5230 5070 5230
Wire Wire Line
	3480 4200 4180 4200
Wire Wire Line
	2940 3630 2940 3740
Connection ~ 2940 4200
Wire Notes Line
	2750 3420 2750 4070
Wire Notes Line
	2750 4070 3100 4070
Wire Notes Line
	3100 3420 2750 3420
Wire Notes Line
	3100 4070 3100 3420
Wire Wire Line
	3690 2930 3690 4200
Wire Wire Line
	3690 3260 4240 3260
Connection ~ 3690 4200
Wire Wire Line
	4540 3260 4930 3260
Wire Wire Line
	4930 2930 4930 4100
Wire Wire Line
	4780 4100 5120 4100
Wire Wire Line
	4230 2930 3690 2930
Connection ~ 3690 3260
Wire Wire Line
	4530 2930 4930 2930
Connection ~ 4930 3260
Connection ~ 4930 4100
Wire Wire Line
	5740 4100 5420 4100
Wire Wire Line
	6200 4100 6200 4150
Wire Wire Line
	6200 4450 6200 4510
Connection ~ 6200 4100
Wire Wire Line
	9300 2730 9300 2810
Wire Wire Line
	9300 3110 9300 3180
Wire Wire Line
	2940 4040 2940 4200
Wire Wire Line
	6040 4100 6530 4100
Wire Wire Line
	7100 4100 6830 4100
Text Label 6850 3900 0    60   ~ 0
Voff
Wire Wire Line
	6850 3900 7100 3900
$Comp
L GND #PWR047
U 1 1 58DEF140
P 7300 4420
AR Path="/59B9A6B7/58DEF140" Ref="#PWR047"  Part="1" 
AR Path="/59B9DFC6/58DEF140" Ref="#PWR059"  Part="1" 
F 0 "#PWR047" H 7300 4170 50  0001 C CNN
F 1 "GND" H 7300 4270 50  0000 C CNN
F 2 "" H 7300 4420 50  0001 C CNN
F 3 "" H 7300 4420 50  0001 C CNN
	1    7300 4420
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4420 7300 4300
$Comp
L +12V #PWR048
U 1 1 58DEF817
P 7300 3600
AR Path="/59B9A6B7/58DEF817" Ref="#PWR048"  Part="1" 
AR Path="/59B9DFC6/58DEF817" Ref="#PWR060"  Part="1" 
F 0 "#PWR048" H 7300 3450 50  0001 C CNN
F 1 "+12V" H 7300 3740 50  0000 C CNN
F 2 "" H 7300 3600 50  0001 C CNN
F 3 "" H 7300 3600 50  0001 C CNN
	1    7300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3600 7300 3700
$Comp
L R R19
U 1 1 58DF4567
P 7300 4850
AR Path="/59B9A6B7/58DF4567" Ref="R19"  Part="1" 
AR Path="/59B9DFC6/58DF4567" Ref="R29"  Part="1" 
F 0 "R19" V 7380 4850 50  0000 C CNN
F 1 "15K" V 7300 4850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7230 4850 50  0001 C CNN
F 3 "" H 7300 4850 50  0001 C CNN
	1    7300 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 4850 6950 4850
Wire Wire Line
	6950 4850 6950 4100
Connection ~ 6950 4100
Wire Wire Line
	7700 4000 8050 4000
Wire Wire Line
	7800 4000 7800 4850
Wire Wire Line
	7800 4850 7450 4850
$Comp
L CP C11
U 1 1 58DF4C3E
P 8200 4000
AR Path="/59B9A6B7/58DF4C3E" Ref="C11"  Part="1" 
AR Path="/59B9DFC6/58DF4C3E" Ref="C17"  Part="1" 
F 0 "C11" H 8225 4100 50  0000 L CNN
F 1 "2.2uF" H 8225 3900 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 8238 3850 50  0001 C CNN
F 3 "" H 8200 4000 50  0001 C CNN
	1    8200 4000
	0    -1   -1   0   
$EndComp
Connection ~ 7800 4000
$Comp
L R R20
U 1 1 58DF71F9
P 8580 3820
AR Path="/59B9A6B7/58DF71F9" Ref="R20"  Part="1" 
AR Path="/59B9DFC6/58DF71F9" Ref="R30"  Part="1" 
F 0 "R20" V 8660 3820 50  0000 C CNN
F 1 "10K" V 8580 3820 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8510 3820 50  0001 C CNN
F 3 "" H 8580 3820 50  0001 C CNN
	1    8580 3820
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 58DF7DE8
P 8580 4240
AR Path="/59B9A6B7/58DF7DE8" Ref="R21"  Part="1" 
AR Path="/59B9DFC6/58DF7DE8" Ref="R31"  Part="1" 
F 0 "R21" V 8660 4240 50  0000 C CNN
F 1 "1.5K" V 8580 4240 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8510 4240 50  0001 C CNN
F 3 "" H 8580 4240 50  0001 C CNN
	1    8580 4240
	-1   0    0    1   
$EndComp
Wire Wire Line
	8580 4090 8580 3970
Connection ~ 8580 4000
$Comp
L GND #PWR049
U 1 1 58DF81C8
P 8580 4470
AR Path="/59B9A6B7/58DF81C8" Ref="#PWR049"  Part="1" 
AR Path="/59B9DFC6/58DF81C8" Ref="#PWR061"  Part="1" 
F 0 "#PWR049" H 8580 4220 50  0001 C CNN
F 1 "GND" H 8580 4320 50  0000 C CNN
F 2 "" H 8580 4470 50  0001 C CNN
F 3 "" H 8580 4470 50  0001 C CNN
	1    8580 4470
	1    0    0    -1  
$EndComp
Wire Wire Line
	8580 4470 8580 4390
$Comp
L +12V #PWR050
U 1 1 58DFAC5D
P 8580 3590
AR Path="/59B9A6B7/58DFAC5D" Ref="#PWR050"  Part="1" 
AR Path="/59B9DFC6/58DFAC5D" Ref="#PWR062"  Part="1" 
F 0 "#PWR050" H 8580 3440 50  0001 C CNN
F 1 "+12V" H 8580 3730 50  0000 C CNN
F 2 "" H 8580 3590 50  0001 C CNN
F 3 "" H 8580 3590 50  0001 C CNN
	1    8580 3590
	1    0    0    -1  
$EndComp
Wire Wire Line
	8580 3590 8580 3670
Wire Notes Line
	8450 3370 8450 4720
Wire Notes Line
	8450 4720 8780 4720
Wire Notes Line
	8780 4720 8780 3370
Wire Notes Line
	8780 3370 8450 3370
Text Notes 8430 3360 0    60   ~ 0
Offset 1.5V
Wire Wire Line
	8350 4000 9370 4000
Wire Notes Line
	3570 2720 3570 4860
Wire Notes Line
	3570 4860 5110 4860
Wire Notes Line
	5110 4860 5110 2720
Wire Notes Line
	5110 2720 3570 2720
Text Notes 3700 2700 0    60   ~ 0
Preamplificador
Wire Notes Line
	6470 3240 6470 4980
Wire Notes Line
	6470 4980 8010 4980
Wire Notes Line
	8010 4980 8010 3240
Wire Notes Line
	8010 3240 6470 3240
Text Notes 6500 3220 0    60   ~ 0
Amplificador
Wire Wire Line
	2650 4200 3180 4200
Text HLabel 2650 4200 0    60   Input ~ 0
Vin
Text HLabel 9370 4000 2    60   Output ~ 0
Vout
$EndSCHEMATC
