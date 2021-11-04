EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L MCU_ST_STM32F1:STM32F103C8Tx U3
U 1 1 6167D6EB
P 3650 5350
F 0 "U3" H 3600 3761 50  0000 C CNN
F 1 "STM32F103C8Tx" H 3600 3670 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 3050 3950 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 3650 5350 50  0001 C CNN
	1    3650 5350
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 616822EA
P 1450 1350
F 0 "U1" H 1450 1592 50  0000 C CNN
F 1 "AMS1117-3.3" H 1450 1501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1450 1550 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1550 1100 50  0001 C CNN
	1    1450 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 616844F7
P 850 1550
F 0 "C1" H 968 1596 50  0000 L CNN
F 1 "10 uF" H 968 1505 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 888 1400 50  0001 C CNN
F 3 "~" H 850 1550 50  0001 C CNN
	1    850  1550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 61685F7D
P 1900 1550
F 0 "C4" H 2018 1596 50  0000 L CNN
F 1 "10 uF" H 2018 1505 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 1938 1400 50  0001 C CNN
F 3 "~" H 1900 1550 50  0001 C CNN
	1    1900 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6168676B
P 850 1800
F 0 "#PWR01" H 850 1550 50  0001 C CNN
F 1 "GND" H 855 1627 50  0000 C CNN
F 2 "" H 850 1800 50  0001 C CNN
F 3 "" H 850 1800 50  0001 C CNN
	1    850  1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6168711A
P 1450 1750
F 0 "#PWR03" H 1450 1500 50  0001 C CNN
F 1 "GND" H 1455 1577 50  0000 C CNN
F 2 "" H 1450 1750 50  0001 C CNN
F 3 "" H 1450 1750 50  0001 C CNN
	1    1450 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 616874D3
P 1900 1800
F 0 "#PWR05" H 1900 1550 50  0001 C CNN
F 1 "GND" H 1905 1627 50  0000 C CNN
F 2 "" H 1900 1800 50  0001 C CNN
F 3 "" H 1900 1800 50  0001 C CNN
	1    1900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1350 850  1350
Wire Wire Line
	850  1350 850  1400
Wire Wire Line
	1450 1750 1450 1650
Wire Wire Line
	850  1700 850  1800
$Comp
L power:+3.3V #PWR04
U 1 1 6168D3C6
P 1900 1200
F 0 "#PWR04" H 1900 1050 50  0001 C CNN
F 1 "+3.3V" H 1915 1373 50  0000 C CNN
F 2 "" H 1900 1200 50  0001 C CNN
F 3 "" H 1900 1200 50  0001 C CNN
	1    1900 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1350 1900 1350
Wire Wire Line
	1900 1350 1900 1400
Wire Wire Line
	1900 1200 1900 1350
Connection ~ 1900 1350
Wire Wire Line
	1900 1700 1900 1800
Text Notes 650  650  0    50   ~ 0
REGÜLATÖR
$Comp
L Sensor_Humidity:SHT30-DIS U2
U 1 1 616E8BCD
P 3600 1750
F 0 "U2" H 3250 2200 50  0000 C CNN
F 1 "SHT30-DIS" H 3100 2100 50  0000 C CNN
F 2 "Sensor_Humidity:Sensirion_DFN-8-1EP_2.5x2.5mm_P0.5mm_EP1.1x1.7mm" H 3600 1800 50  0001 C CNN
F 3 "https://www.sensirion.com/fileadmin/user_upload/customers/sensirion/Dokumente/2_Humidity_Sensors/Datasheets/Sensirion_Humidity_Sensors_SHT3x_Datasheet_digital.pdf" H 3600 1800 50  0001 C CNN
	1    3600 1750
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Pressure:BMP280 U4
U 1 1 616EA590
P 6750 1750
F 0 "U4" H 6980 1846 50  0000 L CNN
F 1 "BMP280" H 6980 1755 50  0000 L CNN
F 2 "Package_LGA:Bosch_LGA-8_2x2.5mm_P0.65mm_ClockwisePinNumbering" H 6750 1050 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BMP280-DS001.pdf" H 6750 1750 50  0001 C CNN
	1    6750 1750
	1    0    0    -1  
$EndComp
NoConn ~ 4000 1850
NoConn ~ 3200 1750
$Comp
L power:GND #PWR06
U 1 1 616EEAD3
P 3600 2150
F 0 "#PWR06" H 3600 1900 50  0001 C CNN
F 1 "GND" H 3605 1977 50  0000 C CNN
F 2 "" H 3600 2150 50  0001 C CNN
F 3 "" H 3600 2150 50  0001 C CNN
	1    3600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2050 3600 2100
Wire Wire Line
	3200 1650 3100 1650
Wire Wire Line
	3100 1650 3100 1850
Wire Wire Line
	3100 1850 3200 1850
Wire Wire Line
	3100 1850 3100 2100
Wire Wire Line
	3100 2100 3600 2100
Connection ~ 3100 1850
Connection ~ 3600 2100
Wire Wire Line
	3600 2100 3600 2150
$Comp
L Device:C C5
U 1 1 616EFF41
P 3900 750
F 0 "C5" V 3750 750 50  0000 C CNN
F 1 "100 nF" V 4050 750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3938 600 50  0001 C CNN
F 3 "~" H 3900 750 50  0001 C CNN
	1    3900 750 
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 616F0AB2
P 4200 1450
F 0 "R5" H 4270 1496 50  0000 L CNN
F 1 "10k" H 4270 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4130 1450 50  0001 C CNN
F 3 "~" H 4200 1450 50  0001 C CNN
	1    4200 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 616F1D21
P 4550 1250
F 0 "#PWR010" H 4550 1100 50  0001 C CNN
F 1 "+3.3V" H 4565 1423 50  0000 C CNN
F 2 "" H 4550 1250 50  0001 C CNN
F 3 "" H 4550 1250 50  0001 C CNN
	1    4550 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 616F5B3C
P 4300 850
F 0 "#PWR09" H 4300 600 50  0001 C CNN
F 1 "GND" H 4305 677 50  0000 C CNN
F 2 "" H 4300 850 50  0001 C CNN
F 3 "" H 4300 850 50  0001 C CNN
	1    4300 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 616F661C
P 4650 1550
F 0 "R6" H 4720 1596 50  0000 L CNN
F 1 "10k" H 4720 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4580 1550 50  0001 C CNN
F 3 "~" H 4650 1550 50  0001 C CNN
	1    4650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1450 3600 1250
Wire Wire Line
	3600 1250 4200 1250
Wire Wire Line
	4650 1400 4650 1250
Wire Wire Line
	4650 1250 4550 1250
Connection ~ 4550 1250
Wire Wire Line
	4200 1300 4200 1250
Connection ~ 4200 1250
Wire Wire Line
	4200 1250 4550 1250
Wire Wire Line
	4000 1650 4200 1650
Wire Wire Line
	4200 1650 4200 1600
Wire Wire Line
	3750 750  3600 750 
Wire Wire Line
	3600 750  3600 1250
Connection ~ 3600 1250
Wire Wire Line
	4050 750  4300 750 
Wire Wire Line
	4300 750  4300 850 
Text Label 850  1350 0    50   ~ 0
VIN
Text Label 4200 1650 0    50   ~ 0
SDA_SHT
Wire Wire Line
	4650 1750 4000 1750
Wire Wire Line
	4650 1700 4650 1750
Text Label 4300 1750 0    50   ~ 0
SCL_SHT
$Comp
L Device:C C9
U 1 1 6170323E
P 6550 900
F 0 "C9" H 6700 800 50  0000 C CNN
F 1 "100 nF" H 6700 1000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6588 750 50  0001 C CNN
F 3 "~" H 6550 900 50  0001 C CNN
	1    6550 900 
	-1   0    0    1   
$EndComp
$Comp
L Device:C C10
U 1 1 617041EA
P 6850 900
F 0 "C10" H 6750 800 50  0000 C CNN
F 1 "100 nF" H 6650 1000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6888 750 50  0001 C CNN
F 3 "~" H 6850 900 50  0001 C CNN
	1    6850 900 
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 750  6550 650 
Wire Wire Line
	6550 650  6700 650 
Wire Wire Line
	6850 650  6850 750 
Wire Wire Line
	6550 1050 6550 1150
Wire Wire Line
	6550 1150 6750 1150
Wire Wire Line
	6850 1150 6850 1050
Wire Wire Line
	6850 1350 6750 1350
Wire Wire Line
	6750 1150 6750 1350
Connection ~ 6750 1150
Wire Wire Line
	6750 1150 6850 1150
Connection ~ 6750 1350
$Comp
L power:GND #PWR018
U 1 1 61706598
P 7200 600
F 0 "#PWR018" H 7200 350 50  0001 C CNN
F 1 "GND" H 7205 427 50  0000 C CNN
F 2 "" H 7200 600 50  0001 C CNN
F 3 "" H 7200 600 50  0001 C CNN
	1    7200 600 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 600  7200 550 
Wire Wire Line
	7200 550  6700 550 
Wire Wire Line
	6700 550  6700 650 
Connection ~ 6700 650 
Wire Wire Line
	6700 650  6850 650 
$Comp
L power:+3.3V #PWR014
U 1 1 617074E1
P 6300 1300
F 0 "#PWR014" H 6300 1150 50  0001 C CNN
F 1 "+3.3V" H 6315 1473 50  0000 C CNN
F 2 "" H 6300 1300 50  0001 C CNN
F 3 "" H 6300 1300 50  0001 C CNN
	1    6300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1300 6300 1350
Wire Wire Line
	6300 1350 6750 1350
Wire Wire Line
	6350 1550 5900 1550
Wire Wire Line
	6350 1650 5900 1650
Wire Wire Line
	6350 1750 5900 1750
Wire Wire Line
	6350 1850 5900 1850
Text Label 5900 1550 0    50   ~ 0
SCK_BMP
Text Label 5900 1650 0    50   ~ 0
SDI_BMP
Text Label 5900 1750 0    50   ~ 0
SDO_BMP
Text Label 5900 1850 0    50   ~ 0
CSB_BMP
$Comp
L power:GND #PWR016
U 1 1 6170F306
P 6800 2200
F 0 "#PWR016" H 6800 1950 50  0001 C CNN
F 1 "GND" H 6805 2027 50  0000 C CNN
F 2 "" H 6800 2200 50  0001 C CNN
F 3 "" H 6800 2200 50  0001 C CNN
	1    6800 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2050 6800 2050
Wire Wire Line
	6800 2050 6800 2200
Wire Wire Line
	6850 2050 6800 2050
Connection ~ 6800 2050
$Comp
L Device:Crystal Y1
U 1 1 6171269A
P 2000 4500
F 0 "Y1" V 1954 4631 50  0000 L CNN
F 1 "8 MHz" V 2045 4631 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 2000 4500 50  0001 C CNN
F 3 "~" H 2000 4500 50  0001 C CNN
	1    2000 4500
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 61712ED8
P 1500 4300
F 0 "C2" V 1400 4200 50  0000 C CNN
F 1 "12 pF" V 1400 4500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1538 4150 50  0001 C CNN
F 3 "~" H 1500 4300 50  0001 C CNN
	1    1500 4300
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 61713D07
P 1500 4700
F 0 "C3" V 1600 4600 50  0000 C CNN
F 1 "12 pF" V 1600 4900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1538 4550 50  0001 C CNN
F 3 "~" H 1500 4700 50  0001 C CNN
	1    1500 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 4300 2000 4300
Wire Wire Line
	2000 4300 2000 4350
Wire Wire Line
	1650 4700 2000 4700
Wire Wire Line
	2000 4700 2000 4650
Wire Wire Line
	2950 4550 2450 4550
Wire Wire Line
	2450 4550 2450 4700
Wire Wire Line
	2450 4700 2000 4700
Connection ~ 2000 4700
Wire Wire Line
	1350 4300 1150 4300
Wire Wire Line
	1150 4700 1350 4700
$Comp
L power:GND #PWR02
U 1 1 61719CA9
P 1000 4550
F 0 "#PWR02" H 1000 4300 50  0001 C CNN
F 1 "GND" H 1005 4377 50  0000 C CNN
F 2 "" H 1000 4550 50  0001 C CNN
F 3 "" H 1000 4550 50  0001 C CNN
	1    1000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4450 2450 4450
Wire Wire Line
	2450 4450 2450 4300
Wire Wire Line
	2450 4300 2000 4300
Connection ~ 2000 4300
Wire Wire Line
	1150 4300 1150 4450
Wire Wire Line
	1000 4550 1000 4450
Wire Wire Line
	1000 4450 1150 4450
Connection ~ 1150 4450
Wire Wire Line
	1150 4450 1150 4700
Wire Wire Line
	2950 5850 2450 5850
Wire Wire Line
	2950 5750 2450 5750
Text Label 2450 5750 0    50   ~ 0
SCL_SHT
Text Label 2450 5850 0    50   ~ 0
SDA_SHT
Wire Wire Line
	3450 6850 3450 6900
Wire Wire Line
	3450 6900 3550 6900
Wire Wire Line
	3750 6900 3750 6850
Wire Wire Line
	3650 6850 3650 6900
Connection ~ 3650 6900
Wire Wire Line
	3650 6900 3750 6900
Wire Wire Line
	3550 6850 3550 6900
Connection ~ 3550 6900
Wire Wire Line
	3550 6900 3600 6900
$Comp
L power:GND #PWR07
U 1 1 6172E4AE
P 3600 7100
F 0 "#PWR07" H 3600 6850 50  0001 C CNN
F 1 "GND" H 3605 6927 50  0000 C CNN
F 2 "" H 3600 7100 50  0001 C CNN
F 3 "" H 3600 7100 50  0001 C CNN
	1    3600 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 7100 3600 6900
Connection ~ 3600 6900
Wire Wire Line
	3600 6900 3650 6900
Wire Wire Line
	3550 3850 3550 3750
Wire Wire Line
	3550 3750 3650 3750
Wire Wire Line
	3850 3750 3850 3850
Wire Wire Line
	3750 3850 3750 3750
Connection ~ 3750 3750
Wire Wire Line
	3750 3750 3850 3750
Wire Wire Line
	3650 3850 3650 3750
Connection ~ 3650 3750
Wire Wire Line
	3650 3750 3700 3750
$Comp
L power:+3.3V #PWR08
U 1 1 61736105
P 3700 3600
F 0 "#PWR08" H 3700 3450 50  0001 C CNN
F 1 "+3.3V" H 3715 3773 50  0000 C CNN
F 2 "" H 3700 3600 50  0001 C CNN
F 3 "" H 3700 3600 50  0001 C CNN
	1    3700 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3600 3700 3650
Connection ~ 3700 3750
Wire Wire Line
	3700 3750 3750 3750
Wire Wire Line
	2950 4050 2550 4050
Text Label 2550 4050 0    50   ~ 0
RESET
$Comp
L Device:R R4
U 1 1 6173ACE0
P 2650 4250
F 0 "R4" V 2550 4250 50  0000 C CNN
F 1 "100k" V 2750 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2580 4250 50  0001 C CNN
F 3 "~" H 2650 4250 50  0001 C CNN
	1    2650 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 4250 2950 4250
Wire Wire Line
	2500 4250 2500 4200
Wire Wire Line
	2500 4200 2100 4200
Text Label 2100 4200 0    50   ~ 0
BOOT0
Wire Wire Line
	4250 5350 5050 5350
Wire Wire Line
	4250 5450 5050 5450
Wire Wire Line
	4250 5550 5050 5550
Wire Wire Line
	4250 5650 5050 5650
Wire Wire Line
	4250 5750 5050 5750
Wire Wire Line
	4250 5850 5050 5850
Text Label 5050 5350 2    50   ~ 0
ESP_RX
Text Label 5050 5450 2    50   ~ 0
ESP_TX
Text Label 5050 5550 2    50   ~ 0
CSB_BMP
Text Label 5050 5650 2    50   ~ 0
SCK_BMP
Text Label 5050 5750 2    50   ~ 0
SDO_BMP
Text Label 5050 5850 2    50   ~ 0
SDI_BMP
Wire Wire Line
	4250 6450 5050 6450
Wire Wire Line
	4250 6550 5050 6550
Text Label 5050 6450 2    50   ~ 0
SWDIO
Text Label 5050 6550 2    50   ~ 0
SWDCLK
$Comp
L Device:C C6
U 1 1 61757BF3
P 4450 3550
F 0 "C6" V 4500 3650 50  0000 C CNN
F 1 "100 nF" V 4500 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4488 3400 50  0001 C CNN
F 3 "~" H 4450 3550 50  0001 C CNN
	1    4450 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C7
U 1 1 6175896C
P 4450 3800
F 0 "C7" V 4500 3900 50  0000 C CNN
F 1 "100 nF" V 4500 3600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4488 3650 50  0001 C CNN
F 3 "~" H 4450 3800 50  0001 C CNN
	1    4450 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 3550 4200 3550
Wire Wire Line
	4200 3550 4200 3650
Wire Wire Line
	4200 3800 4300 3800
Wire Wire Line
	4200 3650 3700 3650
Connection ~ 4200 3650
Wire Wire Line
	4200 3650 4200 3800
Connection ~ 3700 3650
Wire Wire Line
	3700 3650 3700 3750
Wire Wire Line
	4600 3550 4850 3550
Wire Wire Line
	4850 3800 4600 3800
$Comp
L power:GND #PWR011
U 1 1 617619C2
P 5200 3700
F 0 "#PWR011" H 5200 3450 50  0001 C CNN
F 1 "GND" H 5205 3527 50  0000 C CNN
F 2 "" H 5200 3700 50  0001 C CNN
F 3 "" H 5200 3700 50  0001 C CNN
	1    5200 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 61765733
P 2550 5350
F 0 "R3" V 2450 5350 50  0000 C CNN
F 1 "100k" V 2650 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2480 5350 50  0001 C CNN
F 3 "~" H 2550 5350 50  0001 C CNN
	1    2550 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 5350 2950 5350
Wire Wire Line
	2400 5350 1950 5350
Text Label 1950 5350 0    50   ~ 0
BOOT1
$Comp
L Device:R R2
U 1 1 6176CACF
P 2550 5000
F 0 "R2" V 2450 5000 50  0000 C CNN
F 1 "50k" V 2650 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2480 5000 50  0001 C CNN
F 3 "~" H 2550 5000 50  0001 C CNN
	1    2550 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 6176CEEE
P 2050 5000
F 0 "R1" V 1950 5000 50  0000 C CNN
F 1 "50k" V 2150 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1980 5000 50  0001 C CNN
F 3 "~" H 2050 5000 50  0001 C CNN
	1    2050 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 5000 2750 5000
Wire Wire Line
	2750 5000 2750 5150
Wire Wire Line
	2750 5150 2950 5150
Wire Wire Line
	2200 5000 2400 5000
Wire Wire Line
	1900 5000 1800 5000
Wire Wire Line
	1800 5000 1800 5100
Wire Wire Line
	1800 5100 1400 5100
Text Label 1400 5100 0    50   ~ 0
VIN
$Comp
L Connector:Conn_01x02_Female G1
U 1 1 61778C90
P 8750 1900
F 0 "G1" H 8778 1876 50  0000 L CNN
F 1 "1x2" H 8778 1785 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8750 1900 50  0001 C CNN
F 3 "~" H 8750 1900 50  0001 C CNN
	1    8750 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even BOOT1
U 1 1 6177971F
P 10350 2350
F 0 "BOOT1" H 10400 2667 50  0000 C CNN
F 1 "2x3" H 10400 2576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10350 2350 50  0001 C CNN
F 3 "~" H 10350 2350 50  0001 C CNN
	1    10350 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male KOD1
U 1 1 6177A545
P 10100 950
F 0 "KOD1" H 10208 1231 50  0000 C CNN
F 1 "1x4" H 10208 1140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10100 950 50  0001 C CNN
F 3 "~" H 10100 950 50  0001 C CNN
	1    10100 950 
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 6177D2E0
P 6900 4500
F 0 "SW1" V 6854 4648 50  0000 L CNN
F 1 "SW_Push" V 6945 4648 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 6900 4700 50  0001 C CNN
F 3 "~" H 6900 4700 50  0001 C CNN
	1    6900 4500
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 6177E7C0
P 7050 2850
F 0 "D1" H 7043 2595 50  0000 C CNN
F 1 "LED" H 7043 2686 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 7050 2850 50  0001 C CNN
F 3 "~" H 7050 2850 50  0001 C CNN
	1    7050 2850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 61799E73
P 9200 850
F 0 "#PWR022" H 9200 600 50  0001 C CNN
F 1 "GND" H 9205 677 50  0000 C CNN
F 2 "" H 9200 850 50  0001 C CNN
F 3 "" H 9200 850 50  0001 C CNN
	1    9200 850 
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 1050 9200 1050
Wire Wire Line
	9200 1050 9200 850 
$Comp
L power:+3.3V #PWR019
U 1 1 6179EA32
P 7950 1100
F 0 "#PWR019" H 7950 950 50  0001 C CNN
F 1 "+3.3V" H 7965 1273 50  0000 C CNN
F 2 "" H 7950 1100 50  0001 C CNN
F 3 "" H 7950 1100 50  0001 C CNN
	1    7950 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1150 7950 1100
Wire Wire Line
	7950 1150 8450 1150
Wire Wire Line
	7950 1350 7950 1150
Wire Wire Line
	7950 1350 8450 1350
Connection ~ 7950 1150
Wire Wire Line
	8450 1050 8100 1050
Text Label 8100 1050 0    50   ~ 0
ESP_TX
Wire Wire Line
	8950 1350 9400 1350
Text Label 9400 1350 2    50   ~ 0
ESP_RX
$Comp
L Connector_Generic:Conn_02x04_Odd_Even ESP1
U 1 1 6177B84C
P 8650 1150
F 0 "ESP1" H 8700 1467 50  0000 C CNN
F 1 "2x4" H 8700 1376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 8650 1150 50  0001 C CNN
F 3 "~" H 8650 1150 50  0001 C CNN
	1    8650 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 617D5A37
P 10550 750
F 0 "#PWR026" H 10550 500 50  0001 C CNN
F 1 "GND" H 10555 577 50  0000 C CNN
F 2 "" H 10550 750 50  0001 C CNN
F 3 "" H 10550 750 50  0001 C CNN
	1    10550 750 
	-1   0    0    1   
$EndComp
Wire Wire Line
	10300 850  10550 850 
Wire Wire Line
	10550 850  10550 750 
Wire Wire Line
	10300 950  10750 950 
Wire Wire Line
	10300 1050 10750 1050
$Comp
L power:+3.3V #PWR025
U 1 1 617E47A8
P 10450 1250
F 0 "#PWR025" H 10450 1100 50  0001 C CNN
F 1 "+3.3V" H 10465 1423 50  0000 C CNN
F 2 "" H 10450 1250 50  0001 C CNN
F 3 "" H 10450 1250 50  0001 C CNN
	1    10450 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	10300 1150 10450 1150
Wire Wire Line
	10450 1150 10450 1250
Text Label 10750 950  2    50   ~ 0
SWDCLK
Text Label 10750 1050 2    50   ~ 0
SWDIO
Wire Wire Line
	8550 1900 8200 1900
$Comp
L power:GND #PWR021
U 1 1 617F0CB9
P 8400 2100
F 0 "#PWR021" H 8400 1850 50  0001 C CNN
F 1 "GND" H 8405 1927 50  0000 C CNN
F 2 "" H 8400 2100 50  0001 C CNN
F 3 "" H 8400 2100 50  0001 C CNN
	1    8400 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2100 8400 2000
Wire Wire Line
	8400 2000 8550 2000
Text Label 8200 1900 0    50   ~ 0
VIN
Wire Wire Line
	10150 2250 10150 1950
Wire Wire Line
	10150 1950 10400 1950
Wire Wire Line
	10650 1950 10650 2250
Wire Wire Line
	10150 2450 10150 2650
Wire Wire Line
	10150 2650 10400 2650
Wire Wire Line
	10650 2650 10650 2450
$Comp
L power:+3.3V #PWR023
U 1 1 61801304
P 10400 1850
F 0 "#PWR023" H 10400 1700 50  0001 C CNN
F 1 "+3.3V" H 10415 2023 50  0000 C CNN
F 2 "" H 10400 1850 50  0001 C CNN
F 3 "" H 10400 1850 50  0001 C CNN
	1    10400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1850 10400 1950
Connection ~ 10400 1950
Wire Wire Line
	10400 1950 10650 1950
$Comp
L power:GND #PWR024
U 1 1 61806ED4
P 10400 2750
F 0 "#PWR024" H 10400 2500 50  0001 C CNN
F 1 "GND" H 10405 2577 50  0000 C CNN
F 2 "" H 10400 2750 50  0001 C CNN
F 3 "" H 10400 2750 50  0001 C CNN
	1    10400 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 2650 10400 2750
Connection ~ 10400 2650
Wire Wire Line
	10400 2650 10650 2650
Wire Wire Line
	10150 2350 9700 2350
Wire Wire Line
	10650 2350 11150 2350
Text Label 9700 2350 0    50   ~ 0
BOOT0
Text Label 11150 2350 2    50   ~ 0
BOOT1
Wire Notes Line
	7550 2500 7550 500 
Wire Notes Line
	5250 2500 5250 500 
Wire Notes Line
	2400 2500 2400 500 
Wire Notes Line
	500  2500 9550 2500
Wire Notes Line
	7550 1550 11200 1550
Wire Notes Line
	11200 3100 11200 3050
Wire Notes Line
	5600 2550 5600 7700
$Comp
L Device:R R8
U 1 1 6186FA08
P 7650 2850
F 0 "R8" V 7550 2850 50  0000 C CNN
F 1 "510 R" V 7750 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7580 2850 50  0001 C CNN
F 3 "~" H 7650 2850 50  0001 C CNN
	1    7650 2850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 61870045
P 8250 2950
F 0 "#PWR020" H 8250 2700 50  0001 C CNN
F 1 "GND" H 8255 2777 50  0000 C CNN
F 2 "" H 8250 2950 50  0001 C CNN
F 3 "" H 8250 2950 50  0001 C CNN
	1    8250 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 61870483
P 6350 2750
F 0 "#PWR015" H 6350 2600 50  0001 C CNN
F 1 "+3.3V" H 6365 2923 50  0000 C CNN
F 2 "" H 6350 2750 50  0001 C CNN
F 3 "" H 6350 2750 50  0001 C CNN
	1    6350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2750 6350 2850
Wire Wire Line
	6350 2850 6900 2850
Wire Wire Line
	7200 2850 7500 2850
Wire Wire Line
	7800 2850 8250 2850
Wire Wire Line
	8250 2850 8250 2950
$Comp
L Device:C C8
U 1 1 61889C6A
P 6200 4600
F 0 "C8" H 6100 4700 50  0000 C CNN
F 1 "100 nF" H 6000 4500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6238 4450 50  0001 C CNN
F 3 "~" H 6200 4600 50  0001 C CNN
	1    6200 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 6188A5A7
P 6200 4050
F 0 "R7" H 6270 4096 50  0000 L CNN
F 1 "10k" H 6270 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6130 4050 50  0001 C CNN
F 3 "~" H 6200 4050 50  0001 C CNN
	1    6200 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR012
U 1 1 6188BA44
P 6200 3700
F 0 "#PWR012" H 6200 3550 50  0001 C CNN
F 1 "+3.3V" H 6215 3873 50  0000 C CNN
F 2 "" H 6200 3700 50  0001 C CNN
F 3 "" H 6200 3700 50  0001 C CNN
	1    6200 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 6188CD6C
P 6200 4950
F 0 "#PWR013" H 6200 4700 50  0001 C CNN
F 1 "GND" H 6205 4777 50  0000 C CNN
F 2 "" H 6200 4950 50  0001 C CNN
F 3 "" H 6200 4950 50  0001 C CNN
	1    6200 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6188D132
P 6900 4950
F 0 "#PWR017" H 6900 4700 50  0001 C CNN
F 1 "GND" H 6905 4777 50  0000 C CNN
F 2 "" H 6900 4950 50  0001 C CNN
F 3 "" H 6900 4950 50  0001 C CNN
	1    6900 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3700 6200 3900
Wire Wire Line
	6200 4200 6200 4300
Wire Wire Line
	6200 4750 6200 4950
Wire Wire Line
	6900 4700 6900 4950
Wire Wire Line
	6200 4300 6700 4300
Wire Wire Line
	6700 4300 6700 4200
Wire Wire Line
	6700 4200 6900 4200
Wire Wire Line
	6900 4200 6900 4300
Connection ~ 6200 4300
Wire Wire Line
	6200 4300 6200 4450
Wire Wire Line
	6200 4300 5700 4300
Text Label 5700 4300 0    50   ~ 0
RESET
Wire Notes Line
	5600 5350 7650 5350
Wire Notes Line
	7650 5350 7650 3300
Wire Notes Line
	5600 3300 11150 3300
Text Notes 2550 650  0    50   ~ 0
SICAKLIK SENSÖRÜ
Text Notes 5400 650  0    50   ~ 0
BASINÇ SENSÖRÜ
Text Notes 7600 1500 0    50   ~ 0
ESP8266
Text Notes 9650 3100 0    50   ~ 0
BOOT
Text Notes 5850 3200 0    50   ~ 0
LED
Text Notes 6850 3550 0    50   ~ 0
RESET
Text Notes 800  7250 0    50   ~ 0
MİKRODENETLEYİCİ
Wire Notes Line
	9550 450  9550 3300
Text Notes 9600 1450 0    50   ~ 0
KOD/DEBUG
Text Notes 7650 2350 0    50   ~ 0
GÜÇ
NoConn ~ 2950 4750
NoConn ~ 2950 4850
NoConn ~ 2950 4950
NoConn ~ 4250 5150
NoConn ~ 4250 5250
NoConn ~ 3450 3850
NoConn ~ 2950 5250
NoConn ~ 2950 5450
NoConn ~ 2950 5550
NoConn ~ 2950 5650
NoConn ~ 2950 5950
NoConn ~ 2950 6050
NoConn ~ 2950 6150
NoConn ~ 2950 6250
NoConn ~ 2950 6350
NoConn ~ 2950 6450
NoConn ~ 2950 6550
NoConn ~ 2950 6650
NoConn ~ 4250 6650
NoConn ~ 4250 6350
NoConn ~ 4250 6250
NoConn ~ 4250 6150
NoConn ~ 4250 6050
NoConn ~ 4250 5950
NoConn ~ 8450 1250
NoConn ~ 8950 1250
NoConn ~ 8950 1150
$Comp
L Device:C C12
U 1 1 61830C4E
P 4450 3300
F 0 "C12" V 4500 3400 50  0000 C CNN
F 1 "100 nF" V 4500 3100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4488 3150 50  0001 C CNN
F 3 "~" H 4450 3300 50  0001 C CNN
	1    4450 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C11
U 1 1 61831022
P 4450 3050
F 0 "C11" V 4500 3150 50  0000 C CNN
F 1 "100 nF" V 4500 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4488 2900 50  0001 C CNN
F 3 "~" H 4450 3050 50  0001 C CNN
	1    4450 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 3550 4200 3300
Wire Wire Line
	4200 3300 4300 3300
Connection ~ 4200 3550
Wire Wire Line
	4200 3300 4200 3050
Wire Wire Line
	4200 3050 4300 3050
Connection ~ 4200 3300
Wire Wire Line
	4600 3050 4850 3050
Wire Wire Line
	4850 3050 4850 3300
Connection ~ 4850 3550
Wire Wire Line
	4600 3300 4850 3300
Connection ~ 4850 3300
Wire Wire Line
	4850 3300 4850 3550
Wire Wire Line
	4850 3550 4850 3800
Wire Wire Line
	5200 3300 4850 3300
Wire Wire Line
	5200 3300 5200 3700
$EndSCHEMATC
