EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:mechanical
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:modules
LIBS:motor_drivers
LIBS:motorola
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:zetex
LIBS:Zilog
LIBS:random-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Decision Improvement Contraption"
Date "2017-07-24"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY13A-SSU U1
U 1 1 59783053
P 5700 3900
F 0 "U1" H 4900 4300 50  0000 C CNN
F 1 "ATTINY13A-SSU" H 6350 3500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6300 3900 50  0001 C CIN
F 3 "" H 4900 4250 50  0001 C CNN
	1    5700 3900
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 59783161
P 4100 4150
F 0 "R3" V 4180 4150 50  0000 C CNN
F 1 "330" V 4100 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4030 4150 50  0001 C CNN
F 3 "" H 4100 4150 50  0001 C CNN
	1    4100 4150
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 597832B1
P 4100 3850
F 0 "R2" V 4180 3850 50  0000 C CNN
F 1 "180" V 4100 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4030 3850 50  0001 C CNN
F 3 "" H 4100 3850 50  0001 C CNN
	1    4100 3850
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 597832C8
P 3650 3850
F 0 "D1" H 3650 3950 50  0000 C CNN
F 1 "LED_GREEN" H 3650 3750 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3650 3850 50  0001 C CNN
F 3 "" H 3650 3850 50  0001 C CNN
	1    3650 3850
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 59783339
P 3650 4150
F 0 "D2" H 3650 4250 50  0000 C CNN
F 1 "LED_RED" H 3650 4050 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3650 4150 50  0001 C CNN
F 3 "" H 3650 4150 50  0001 C CNN
	1    3650 4150
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 597835A8
P 3700 3550
F 0 "SW1" H 3750 3650 50  0000 L CNN
F 1 "SW_Push" H 3700 3490 50  0000 C CNN
F 2 "myLib:button_SMD" H 3700 3750 50  0001 C CNN
F 3 "" H 3700 3750 50  0001 C CNN
	1    3700 3550
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59783671
P 4100 3250
F 0 "R1" V 4180 3250 50  0000 C CNN
F 1 "10k" V 4100 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4030 3250 50  0001 C CNN
F 3 "" H 4100 3250 50  0001 C CNN
	1    4100 3250
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 597836DA
P 6900 3900
F 0 "C1" H 6925 4000 50  0000 L CNN
F 1 "0.1uF" H 6925 3800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6938 3750 50  0001 C CNN
F 3 "" H 6900 3900 50  0001 C CNN
	1    6900 3900
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT1
U 1 1 59783865
P 7400 3950
F 0 "BT1" H 7500 4050 50  0000 L CNN
F 1 "CR2032" H 7500 3950 50  0000 L CNN
F 2 "" V 7400 4010 50  0001 C CNN
F 3 "" V 7400 4010 50  0001 C CNN
	1    7400 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 59783CC4
P 3350 4350
F 0 "#PWR01" H 3350 4100 50  0001 C CNN
F 1 "GND" H 3350 4200 50  0000 C CNN
F 2 "" H 3350 4350 50  0001 C CNN
F 3 "" H 3350 4350 50  0001 C CNN
	1    3350 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59783DE6
P 6900 4350
F 0 "#PWR02" H 6900 4100 50  0001 C CNN
F 1 "GND" H 6900 4200 50  0000 C CNN
F 2 "" H 6900 4350 50  0001 C CNN
F 3 "" H 6900 4350 50  0001 C CNN
	1    6900 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3550 4500 3550
$Comp
L +BATT #PWR03
U 1 1 59784702
P 6900 3550
F 0 "#PWR03" H 6900 3400 50  0001 C CNN
F 1 "+BATT" H 6900 3690 50  0000 C CNN
F 2 "" H 6900 3550 50  0001 C CNN
F 3 "" H 6900 3550 50  0001 C CNN
	1    6900 3550
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR04
U 1 1 59784B2A
P 4100 3000
F 0 "#PWR04" H 4100 2850 50  0001 C CNN
F 1 "+BATT" H 4100 3140 50  0000 C CNN
F 2 "" H 4100 3000 50  0001 C CNN
F 3 "" H 4100 3000 50  0001 C CNN
	1    4100 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3650 6900 3650
Wire Wire Line
	6900 3550 6900 3750
Connection ~ 6900 3650
Wire Wire Line
	6700 4150 6900 4150
Wire Wire Line
	6900 4050 6900 4350
Connection ~ 6900 4150
Wire Wire Line
	3500 3550 3350 3550
Wire Wire Line
	3350 3550 3350 4350
Wire Wire Line
	3500 3850 3350 3850
Connection ~ 3350 3850
Wire Wire Line
	3500 4150 3350 4150
Connection ~ 3350 4150
Wire Wire Line
	3800 3850 3950 3850
Wire Wire Line
	3800 4150 3950 4150
Wire Wire Line
	4100 3400 4100 3550
Wire Wire Line
	4100 3100 4100 3000
Connection ~ 4100 3550
Wire Wire Line
	4500 3550 4500 3750
Wire Wire Line
	4500 3750 4700 3750
Wire Wire Line
	4700 3950 4500 3950
Wire Wire Line
	4500 3950 4500 3850
Wire Wire Line
	4500 3850 4250 3850
Wire Wire Line
	4700 4050 4500 4050
Wire Wire Line
	4500 4050 4500 4150
Wire Wire Line
	4500 4150 4250 4150
$Comp
L GND #PWR05
U 1 1 5978636B
P 7400 4350
F 0 "#PWR05" H 7400 4100 50  0001 C CNN
F 1 "GND" H 7400 4200 50  0000 C CNN
F 2 "" H 7400 4350 50  0001 C CNN
F 3 "" H 7400 4350 50  0001 C CNN
	1    7400 4350
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR06
U 1 1 5978639A
P 7400 3550
F 0 "#PWR06" H 7400 3400 50  0001 C CNN
F 1 "+BATT" H 7400 3690 50  0000 C CNN
F 2 "" H 7400 3550 50  0001 C CNN
F 3 "" H 7400 3550 50  0001 C CNN
	1    7400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3550 7400 3750
Wire Wire Line
	7400 4050 7400 4350
NoConn ~ 4700 3650
NoConn ~ 4700 3850
NoConn ~ 4700 4150
Text Notes 2900 3900 0    60   ~ 0
"YES"
Text Notes 2900 4200 0    60   ~ 0
"NO"
$EndSCHEMATC
