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
Sheet 6 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TL082 U1
U 1 1 599B6267
P 6150 2700
F 0 "U1" H 6150 2900 50  0000 L CNN
F 1 "TL082" H 6150 2500 50  0000 L CNN
F 2 "" H 6150 2700 50  0001 C CNN
F 3 "" H 6150 2700 50  0001 C CNN
	1    6150 2700
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 599B62D2
P 3600 2600
F 0 "C1" V 3540 2440 50  0000 L CNN
F 1 "220nF" V 3540 2660 50  0000 L CNN
F 2 "" H 3638 2450 50  0001 C CNN
F 3 "" H 3600 2600 50  0001 C CNN
	1    3600 2600
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 599B6345
P 3950 2840
F 0 "R1" V 4030 2840 50  0000 C CNN
F 1 "1.2M" V 3950 2840 50  0000 C CNN
F 2 "" V 3880 2840 50  0001 C CNN
F 3 "" H 3950 2840 50  0001 C CNN
	1    3950 2840
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 599B68B9
P 4260 2600
F 0 "R2" V 4340 2600 50  0000 C CNN
F 1 "5.1K" V 4260 2600 50  0000 C CNN
F 2 "" V 4190 2600 50  0001 C CNN
F 3 "" H 4260 2600 50  0001 C CNN
	1    4260 2600
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 599B6936
P 4850 2600
F 0 "R5" V 4930 2600 50  0000 C CNN
F 1 "10K" V 4850 2600 50  0000 C CNN
F 2 "" V 4780 2600 50  0001 C CNN
F 3 "" H 4850 2600 50  0001 C CNN
	1    4850 2600
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 599B69B0
P 5120 1940
F 0 "C4" V 5070 1780 50  0000 L CNN
F 1 "2.2nF" V 5070 2000 50  0000 L CNN
F 2 "" H 5158 1790 50  0001 C CNN
F 3 "" H 5120 1940 50  0001 C CNN
	1    5120 1940
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 599B6A43
P 5180 3040
F 0 "C3" H 5205 3140 50  0000 L CNN
F 1 "1nF" H 5205 2940 50  0000 L CNN
F 2 "" H 5218 2890 50  0001 C CNN
F 3 "" H 5180 3040 50  0001 C CNN
	1    5180 3040
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR02
U 1 1 599B8CD8
P 6050 2340
F 0 "#PWR02" H 6050 2190 50  0001 C CNN
F 1 "+12V" H 6050 2480 50  0000 C CNN
F 2 "" H 6050 2340 50  0001 C CNN
F 3 "" H 6050 2340 50  0001 C CNN
	1    6050 2340
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 599B928E
P 3950 3050
F 0 "#PWR04" H 3950 2800 50  0001 C CNN
F 1 "GND" H 3950 2900 50  0000 C CNN
F 2 "" H 3950 3050 50  0001 C CNN
F 3 "" H 3950 3050 50  0001 C CNN
	1    3950 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 599B93E2
P 5180 3260
F 0 "#PWR05" H 5180 3010 50  0001 C CNN
F 1 "GND" H 5180 3110 50  0000 C CNN
F 2 "" H 5180 3260 50  0001 C CNN
F 3 "" H 5180 3260 50  0001 C CNN
	1    5180 3260
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 599B9406
P 6050 3060
F 0 "#PWR06" H 6050 2810 50  0001 C CNN
F 1 "GND" H 6050 2910 50  0000 C CNN
F 2 "" H 6050 3060 50  0001 C CNN
F 3 "" H 6050 3060 50  0001 C CNN
	1    6050 3060
	1    0    0    -1  
$EndComp
$Comp
L CP C5
U 1 1 599BC824
P 6750 2700
F 0 "C5" H 6775 2800 50  0000 L CNN
F 1 "10uF" H 6775 2600 50  0000 L CNN
F 2 "" H 6788 2550 50  0001 C CNN
F 3 "" H 6750 2700 50  0001 C CNN
	1    6750 2700
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 599BCFBB
P 4330 3840
F 0 "R3" V 4410 3840 50  0000 C CNN
F 1 "10K" V 4330 3840 50  0000 C CNN
F 2 "" V 4260 3840 50  0001 C CNN
F 3 "" H 4330 3840 50  0001 C CNN
	1    4330 3840
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 599BD02E
P 4330 4230
F 0 "R4" V 4410 4230 50  0000 C CNN
F 1 "10K" V 4330 4230 50  0000 C CNN
F 2 "" V 4260 4230 50  0001 C CNN
F 3 "" H 4330 4230 50  0001 C CNN
	1    4330 4230
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 599BD07F
P 4080 4260
F 0 "C2" H 4105 4360 50  0000 L CNN
F 1 "10uF" H 4105 4160 50  0000 L CNN
F 2 "" H 4118 4110 50  0001 C CNN
F 3 "" H 4080 4260 50  0001 C CNN
	1    4080 4260
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR08
U 1 1 599BD1C1
P 4330 3550
F 0 "#PWR08" H 4330 3400 50  0001 C CNN
F 1 "+12V" H 4330 3690 50  0000 C CNN
F 2 "" H 4330 3550 50  0001 C CNN
F 3 "" H 4330 3550 50  0001 C CNN
	1    4330 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 599BD1F3
P 4220 4500
F 0 "#PWR09" H 4220 4250 50  0001 C CNN
F 1 "GND" H 4220 4350 50  0000 C CNN
F 2 "" H 4220 4500 50  0001 C CNN
F 3 "" H 4220 4500 50  0001 C CNN
	1    4220 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2600 3450 2600
Wire Wire Line
	3750 2600 4110 2600
Wire Wire Line
	3950 2690 3950 2600
Connection ~ 3950 2600
Wire Wire Line
	4410 2600 4700 2600
Wire Wire Line
	5000 2600 5850 2600
Wire Wire Line
	5180 2890 5180 2600
Wire Wire Line
	4550 1940 4550 2600
Connection ~ 4550 2600
Wire Wire Line
	6050 2340 6050 2400
Wire Wire Line
	6050 3000 6050 3060
Wire Wire Line
	5180 3190 5180 3260
Wire Wire Line
	3950 2990 3950 3050
Wire Wire Line
	4330 3550 4330 3690
Wire Wire Line
	4080 4110 4080 4030
Wire Wire Line
	4080 4030 4730 4030
Wire Wire Line
	4330 3990 4330 4080
Connection ~ 4330 4030
Wire Wire Line
	4080 4410 4080 4450
Wire Wire Line
	4080 4450 4330 4450
Wire Wire Line
	4220 4450 4220 4500
Wire Wire Line
	4330 4450 4330 4380
Connection ~ 4220 4450
Text Label 5600 2600 0    60   ~ 0
Voff
$Comp
L R R?
U 1 1 59A5DF76
P 4880 4030
F 0 "R?" V 4960 4030 50  0000 C CNN
F 1 "1M" V 4880 4030 50  0000 C CNN
F 2 "" V 4810 4030 50  0001 C CNN
F 3 "" H 4880 4030 50  0001 C CNN
	1    4880 4030
	0    1    1    0   
$EndComp
Text Label 5320 4030 2    60   ~ 0
Voff
Wire Wire Line
	5320 4030 5030 4030
Wire Wire Line
	6600 2700 6450 2700
Connection ~ 5180 2600
Wire Wire Line
	4970 1940 4550 1940
Wire Wire Line
	5270 1940 6520 1940
Wire Wire Line
	5560 1940 5560 2800
Wire Wire Line
	5560 2800 5850 2800
Wire Wire Line
	6520 1940 6520 2700
Connection ~ 6520 2700
Connection ~ 5560 1940
Text HLabel 3050 2600 0    60   Input ~ 0
Vin
Text HLabel 7290 2700 2    60   Output ~ 0
Vout
Wire Wire Line
	7290 2700 6900 2700
$EndSCHEMATC
