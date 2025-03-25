subtitle "Microchip MPLAB XC8 C Compiler v2.50 (Free license) build 20240725155939 Og1 "

pagewidth 120

	opt flic

	processor	16F877A
include "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_door_status
	FNCALL	_main,_lcd_init
	FNCALL	_lcd_init,_lcd_cmd
	FNCALL	_door_status,_lcd_cmd
	FNCALL	_door_status,_lcd_string
	FNCALL	_lcd_string,_lcd_data
	FNROOT	_main
	global	_PORTDbits
_PORTDbits	set	0x8
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_TRISD
_TRISD	set	0x88
	global	_TRISC
_TRISC	set	0x87
	global	_TRISB
_TRISB	set	0x86
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	
STR_5:	
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	70	;'F'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_7:	
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_9:	
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_3:	
	retlw	70	;'F'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	0
psect	strings
	
STR_2:	
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	80	;'P'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	0
psect	strings
STR_4	equ	STR_2+0
STR_6	equ	STR_2+0
STR_8	equ	STR_2+0
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "OFF"
	config PWRTE = "OFF"
	config BOREN = "ON"
	config LVP = "ON"
	config CPD = "OFF"
	config WRT = "OFF"
	config CP = "ON"
	file	"dist/default/production\PIC_AUTOMATIC_DOOR.X.production.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_door_status:	; 1 bytes @ 0x0
?_lcd_data:	; 1 bytes @ 0x0
?_lcd_cmd:	; 1 bytes @ 0x0
?_lcd_init:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
??_lcd_data:	; 1 bytes @ 0x0
??_lcd_cmd:	; 1 bytes @ 0x0
	ds	2
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x2
	global	lcd_cmd@cmd
lcd_cmd@cmd:	; 1 bytes @ 0x2
	ds	1
?_lcd_string:	; 1 bytes @ 0x3
	global	lcd_string@str
lcd_string@str:	; 1 bytes @ 0x3
??_lcd_init:	; 1 bytes @ 0x3
	ds	1
	global	lcd_string@Num
lcd_string@Num:	; 2 bytes @ 0x4
	ds	2
	global	lcd_string@i
lcd_string@i:	; 2 bytes @ 0x6
??_lcd_string:	; 1 bytes @ 0x6
	ds	2
	global	door_status@door_open
door_status@door_open:	; 1 bytes @ 0x8
??_door_status:	; 1 bytes @ 0x8
	ds	1
??_main:	; 1 bytes @ 0x9
;!
;!Data Sizes:
;!    Strings     93
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9       9
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    lcd_string@str	PTR unsigned char  size(1) Largest target is 17
;!		 -> STR_1(CODE[17]), STR_2(CODE[8]), STR_3(CODE[17]), STR_4(CODE[8]), 
;!		 -> STR_5(CODE[17]), STR_6(CODE[8]), STR_7(CODE[17]), STR_8(CODE[8]), 
;!		 -> STR_9(CODE[17]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_door_status
;!    _lcd_init->_lcd_cmd
;!    _door_status->_lcd_string
;!    _lcd_string->_lcd_data
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0     180
;!                        _door_status
;!                           _lcd_init
;! ---------------------------------------------------------------------------------
;! (1) _lcd_init                                             2     2      0      15
;!                                              3 COMMON     2     2      0
;!                            _lcd_cmd
;! ---------------------------------------------------------------------------------
;! (1) _door_status                                          1     1      0     165
;!                                              8 COMMON     1     1      0
;!                            _lcd_cmd
;!                         _lcd_string
;! ---------------------------------------------------------------------------------
;! (2) _lcd_string                                           5     2      3     123
;!                                              3 COMMON     5     2      3
;!                           _lcd_data
;! ---------------------------------------------------------------------------------
;! (3) _lcd_data                                             3     3      0      15
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _lcd_cmd                                              3     3      0      15
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _door_status
;!     _lcd_cmd
;!     _lcd_string
;!       _lcd_data
;!   _lcd_init
;!     _lcd_cmd
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON           14      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BITBANK3            96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!COMMON              14      9       9     64.3%
;!BANK0               80      0       0      0.0%
;!BANK1               80      0       0      0.0%
;!BANK3               96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0       9      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 64 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_door_status
;;		_lcd_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	64
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	64
	
_main:	
;incstack = 0
	callstack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	65
	
l766:	
;main.c: 65:     TRISB = 0xF0;
	movlw	0F0h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	66
	
l768:	
;main.c: 66:     TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	67
	
l770:	
;main.c: 67:     TRISD = 0xFF;
	movlw	0FFh
	movwf	(136)^080h	;volatile
	line	69
	
l772:	
;main.c: 69:     lcd_init();
	fcall	_lcd_init
	line	72
	
l774:	
;main.c: 72:         door_status();
	fcall	_door_status
	line	75
	
l776:	
;main.c: 75:         if (PORTBbits.RB4 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),4	;volatile
	goto	u201
	goto	u200
u201:
	goto	l37
u200:
	line	76
	
l778:	
;main.c: 76:             PORTBbits.RB3 = 1;
	bsf	(6),3	;volatile
	line	77
;main.c: 77:         } else if (PORTBbits.RB5 == 1) {
	goto	l774
	
l37:	
	btfss	(6),5	;volatile
	goto	u211
	goto	u210
u211:
	goto	l39
u210:
	line	78
	
l780:	
;main.c: 78:             if (PORTDbits.RD0 || PORTDbits.RD1 || PORTDbits.RD2 || PORTDbits.RD3) {
	btfsc	(8),0	;volatile
	goto	u221
	goto	u220
u221:
	goto	l42
u220:
	
l782:	
	btfsc	(8),1	;volatile
	goto	u231
	goto	u230
u231:
	goto	l42
u230:
	
l784:	
	btfsc	(8),2	;volatile
	goto	u241
	goto	u240
u241:
	goto	l42
u240:
	
l786:	
	btfss	(8),3	;volatile
	goto	u251
	goto	u250
u251:
	goto	l40
u250:
	
l42:	
	line	79
;main.c: 79:                 PORTBbits.RB3 = 1;
	bsf	(6),3	;volatile
	line	80
;main.c: 80:             } else {
	goto	l774
	
l40:	
	line	81
;main.c: 81:                 PORTBbits.RB3 = 0;
	bcf	(6),3	;volatile
	goto	l774
	line	83
	
l39:	
	btfss	(6),6	;volatile
	goto	u261
	goto	u260
u261:
	goto	l38
u260:
	line	84
	
l788:	
;main.c: 84:             PORTBbits.RB3 = 0;
	bcf	(6),3	;volatile
	goto	l774
	line	85
	
l38:	
	goto	l774
	global	start
	ljmp	start
	callstack 0
	line	87
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_lcd_init

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 55 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	55
global __ptext1
__ptext1:	;psect for function _lcd_init
psect	text1
	file	"main.c"
	line	55
	
_lcd_init:	
;incstack = 0
	callstack 6
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l628:	
;main.c: 56:     lcd_cmd(0x38);
	movlw	low(038h)
	fcall	_lcd_cmd
	line	57
	
l630:	
;main.c: 57:     _delay((unsigned long)((20)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw	130
movwf	((??_lcd_init+0)+0+1)
	movlw	221
movwf	((??_lcd_init+0)+0)
	u277:
decfsz	((??_lcd_init+0)+0),f
	goto	u277
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u277
	nop2
asmopt pop

	line	58
	
l632:	
;main.c: 58:     lcd_cmd(0x0C);
	movlw	low(0Ch)
	fcall	_lcd_cmd
	line	59
	
l634:	
;main.c: 59:     lcd_cmd(0x06);
	movlw	low(06h)
	fcall	_lcd_cmd
	line	60
	
l636:	
;main.c: 60:     lcd_cmd(0x01);
	movlw	low(01h)
	fcall	_lcd_cmd
	line	61
;main.c: 61:     _delay((unsigned long)((20)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw	130
movwf	((??_lcd_init+0)+0+1)
	movlw	221
movwf	((??_lcd_init+0)+0)
	u287:
decfsz	((??_lcd_init+0)+0),f
	goto	u287
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u287
	nop2
asmopt pop

	line	62
	
l31:	
	return
	callstack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
	signat	_lcd_init,89
	global	_door_status

;; *************** function _door_status *****************
;; Defined at:
;;		line 89 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  door_open       1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_lcd_cmd
;;		_lcd_string
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	89
global __ptext2
__ptext2:	;psect for function _door_status
psect	text2
	file	"main.c"
	line	89
	
_door_status:	
;incstack = 0
	callstack 5
; Regs used in _door_status: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	90
	
l718:	
;main.c: 90:     unsigned char door_open = 0;
	clrf	(door_status@door_open)
	line	92
	
l720:	
;main.c: 92:     if (PORTDbits.RD0 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(8),0	;volatile
	goto	u151
	goto	u150
u151:
	goto	l730
u150:
	line	93
	
l722:	
;main.c: 93:         lcd_cmd(0x80);
	movlw	low(080h)
	fcall	_lcd_cmd
	line	94
	
l724:	
;main.c: 94:         lcd_string("FRONT LEFT DOOR ", 16);
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(lcd_string@str)
	movlw	010h
	movwf	(lcd_string@Num)
	movlw	0
	movwf	((lcd_string@Num))+1
	fcall	_lcd_string
	line	95
	
l726:	
;main.c: 95:         lcd_cmd(0xC5);
	movlw	low(0C5h)
	fcall	_lcd_cmd
	line	96
;main.c: 96:         lcd_string("IS OPEN", 7);
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	movwf	(lcd_string@str)
	movlw	07h
	movwf	(lcd_string@Num)
	movlw	0
	movwf	((lcd_string@Num))+1
	fcall	_lcd_string
	line	97
	
l728:	
;main.c: 97:         door_open = 1;
	movlw	01h
	movwf	(door_status@door_open)
	line	100
	
l730:	
;main.c: 100:     if (PORTDbits.RD1 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(8),1	;volatile
	goto	u161
	goto	u160
u161:
	goto	l740
u160:
	line	101
	
l732:	
;main.c: 101:         lcd_cmd(0x80);
	movlw	low(080h)
	fcall	_lcd_cmd
	line	102
	
l734:	
;main.c: 102:         lcd_string("FRONT RIGHT DOOR", 16);
	movlw	(low((((STR_3)-__stringbase)|8000h)))&0ffh
	movwf	(lcd_string@str)
	movlw	010h
	movwf	(lcd_string@Num)
	movlw	0
	movwf	((lcd_string@Num))+1
	fcall	_lcd_string
	line	103
	
l736:	
;main.c: 103:         lcd_cmd(0xC5);
	movlw	low(0C5h)
	fcall	_lcd_cmd
	line	104
;main.c: 104:         lcd_string("IS OPEN", 7);
	movlw	(low((((STR_4)-__stringbase)|8000h)))&0ffh
	movwf	(lcd_string@str)
	movlw	07h
	movwf	(lcd_string@Num)
	movlw	0
	movwf	((lcd_string@Num))+1
	fcall	_lcd_string
	line	105
	
l738:	
;main.c: 105:         door_open = 1;
	movlw	01h
	movwf	(door_status@door_open)
	line	108
	
l740:	
;main.c: 108:     if (PORTDbits.RD2 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(8),2	;volatile
	goto	u171
	goto	u170
u171:
	goto	l750
u170:
	line	109
	
l742:	
;main.c: 109:         lcd_cmd(0x80);
	movlw	low(080h)
	fcall	_lcd_cmd
	line	110
	
l744:	
;main.c: 110:         lcd_string("REAR LEFT DOOR  ", 16);
	movlw	(low((((STR_5)-__stringbase)|8000h)))&0ffh
	movwf	(lcd_string@str)
	movlw	010h
	movwf	(lcd_string@Num)
	movlw	0
	movwf	((lcd_string@Num))+1
	fcall	_lcd_string
	line	111
	
l746:	
;main.c: 111:         lcd_cmd(0xC5);
	movlw	low(0C5h)
	fcall	_lcd_cmd
	line	112
;main.c: 112:         lcd_string("IS OPEN", 7);
	movlw	(low((((STR_6)-__stringbase)|8000h)))&0ffh
	movwf	(lcd_string@str)
	movlw	07h
	movwf	(lcd_string@Num)
	movlw	0
	movwf	((lcd_string@Num))+1
	fcall	_lcd_string
	line	113
	
l748:	
;main.c: 113:         door_open = 1;
	movlw	01h
	movwf	(door_status@door_open)
	line	116
	
l750:	
;main.c: 116:     if (PORTDbits.RD3 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(8),3	;volatile
	goto	u181
	goto	u180
u181:
	goto	l760
u180:
	line	117
	
l752:	
;main.c: 117:         lcd_cmd(0x80);
	movlw	low(080h)
	fcall	_lcd_cmd
	line	118
	
l754:	
;main.c: 118:         lcd_string("REAR RIGHT DOOR ", 16);
	movlw	(low((((STR_7)-__stringbase)|8000h)))&0ffh
	movwf	(lcd_string@str)
	movlw	010h
	movwf	(lcd_string@Num)
	movlw	0
	movwf	((lcd_string@Num))+1
	fcall	_lcd_string
	line	119
	
l756:	
;main.c: 119:         lcd_cmd(0xC5);
	movlw	low(0C5h)
	fcall	_lcd_cmd
	line	120
;main.c: 120:         lcd_string("IS OPEN", 7);
	movlw	(low((((STR_8)-__stringbase)|8000h)))&0ffh
	movwf	(lcd_string@str)
	movlw	07h
	movwf	(lcd_string@Num)
	movlw	0
	movwf	((lcd_string@Num))+1
	fcall	_lcd_string
	line	121
	
l758:	
;main.c: 121:         door_open = 1;
	movlw	01h
	movwf	(door_status@door_open)
	line	124
	
l760:	
;main.c: 124:     if (!door_open) {
	movf	((door_status@door_open)),w
	btfss	status,2
	goto	u191
	goto	u190
u191:
	goto	l56
u190:
	line	125
	
l762:	
;main.c: 125:         lcd_cmd(0x01);
	movlw	low(01h)
	fcall	_lcd_cmd
	line	126
;main.c: 126:         lcd_cmd(0x80);
	movlw	low(080h)
	fcall	_lcd_cmd
	line	127
	
l764:	
;main.c: 127:         lcd_string("ALL DOORS CLOSED", 16);
	movlw	(low((((STR_9)-__stringbase)|8000h)))&0ffh
	movwf	(lcd_string@str)
	movlw	010h
	movwf	(lcd_string@Num)
	movlw	0
	movwf	((lcd_string@Num))+1
	fcall	_lcd_string
	line	129
	
l56:	
	return
	callstack 0
GLOBAL	__end_of_door_status
	__end_of_door_status:
	signat	_door_status,89
	global	_lcd_string

;; *************** function _lcd_string *****************
;; Defined at:
;;		line 49 in file "main.c"
;; Parameters:    Size  Location     Type
;;  str             1    3[COMMON] PTR unsigned char 
;;		 -> STR_9(17), STR_8(8), STR_7(17), STR_6(8), 
;;		 -> STR_5(17), STR_4(8), STR_3(17), STR_2(8), 
;;		 -> STR_1(17), 
;;  Num             2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_lcd_data
;; This function is called by:
;;		_door_status
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	49
global __ptext3
__ptext3:	;psect for function _lcd_string
psect	text3
	file	"main.c"
	line	49
	
_lcd_string:	
;incstack = 0
	callstack 5
; Regs used in _lcd_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	50
	
l710:	
;main.c: 50:     for (unsigned int i = 0; i < Num; i++) {
	clrf	(lcd_string@i)
	clrf	(lcd_string@i+1)
	goto	l716
	line	51
	
l712:	
;main.c: 51:         lcd_data(str[i]);
	movf	(lcd_string@i),w
	addwf	(lcd_string@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	52
	
l714:	
;main.c: 52:     }
	movlw	01h
	addwf	(lcd_string@i),f
	skipnc
	incf	(lcd_string@i+1),f
	movlw	0
	addwf	(lcd_string@i+1),f
	
l716:	
	movf	(lcd_string@Num+1),w
	subwf	(lcd_string@i+1),w
	skipz
	goto	u145
	movf	(lcd_string@Num),w
	subwf	(lcd_string@i),w
u145:
	skipc
	goto	u141
	goto	u140
u141:
	goto	l712
u140:
	line	53
	
l28:	
	return
	callstack 0
GLOBAL	__end_of_lcd_string
	__end_of_lcd_string:
	signat	_lcd_string,8313
	global	_lcd_data

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 31 in file "main.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_string
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	31
global __ptext4
__ptext4:	;psect for function _lcd_data
psect	text4
	file	"main.c"
	line	31
	
_lcd_data:	
;incstack = 0
	callstack 5
; Regs used in _lcd_data: [wreg]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	32
	
l600:	
;main.c: 32:     PORTC = data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	33
	
l602:	
;main.c: 33:     PORTBbits.RB0 = 1;
	bsf	(6),0	;volatile
	line	34
	
l604:	
;main.c: 34:     PORTBbits.RB1 = 0;
	bcf	(6),1	;volatile
	line	35
	
l606:	
;main.c: 35:     PORTBbits.RB2 = 1;
	bsf	(6),2	;volatile
	line	36
;main.c: 36:     _delay((unsigned long)((5)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw	33
movwf	((??_lcd_data+0)+0+1)
	movlw	118
movwf	((??_lcd_data+0)+0)
	u297:
decfsz	((??_lcd_data+0)+0),f
	goto	u297
	decfsz	((??_lcd_data+0)+0+1),f
	goto	u297
	nop
asmopt pop

	line	37
	
l608:	
;main.c: 37:     PORTBbits.RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),2	;volatile
	line	38
	
l19:	
	return
	callstack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
	signat	_lcd_data,4217
	global	_lcd_cmd

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 40 in file "main.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_door_status
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	40
global __ptext5
__ptext5:	;psect for function _lcd_cmd
psect	text5
	file	"main.c"
	line	40
	
_lcd_cmd:	
;incstack = 0
	callstack 6
; Regs used in _lcd_cmd: [wreg]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	41
	
l610:	
;main.c: 41:     PORTC = cmd;
	movf	(lcd_cmd@cmd),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	42
	
l612:	
;main.c: 42:     PORTBbits.RB0 = 0;
	bcf	(6),0	;volatile
	line	43
	
l614:	
;main.c: 43:     PORTBbits.RB1 = 0;
	bcf	(6),1	;volatile
	line	44
	
l616:	
;main.c: 44:     PORTBbits.RB2 = 1;
	bsf	(6),2	;volatile
	line	45
;main.c: 45:     _delay((unsigned long)((5)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw	33
movwf	((??_lcd_cmd+0)+0+1)
	movlw	118
movwf	((??_lcd_cmd+0)+0)
	u307:
decfsz	((??_lcd_cmd+0)+0),f
	goto	u307
	decfsz	((??_lcd_cmd+0)+0+1),f
	goto	u307
	nop
asmopt pop

	line	46
	
l618:	
;main.c: 46:     PORTBbits.RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),2	;volatile
	line	47
	
l22:	
	return
	callstack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
	signat	_lcd_cmd,4217
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
