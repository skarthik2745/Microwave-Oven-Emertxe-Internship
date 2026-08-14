subtitle "Microchip MPLAB XC8 C Compiler v3.10 (Free license) build 20250813170317 Og1 "

pagewidth 120

	opt flic

	processor	16F877A
include "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\16f877a.cgen.inc"
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
# 54 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_clcd_print
	FNCALL	_main,_clear_screen
	FNCALL	_main,_display_modes
	FNCALL	_main,_display_power_screen
	FNCALL	_main,_display_time
	FNCALL	_main,_heat_food
	FNCALL	_main,_init_config
	FNCALL	_main,_read_matrix_keypad
	FNCALL	_main,_set_temp
	FNCALL	_main,_set_time
	FNCALL	_set_time,___awdiv
	FNCALL	_set_time,___awmod
	FNCALL	_set_time,___bmul
	FNCALL	_set_time,_clcd_print
	FNCALL	_set_time,_clcd_putch
	FNCALL	_set_time,_clear_screen
	FNCALL	_set_temp,___awdiv
	FNCALL	_set_temp,___awmod
	FNCALL	_set_temp,___lwdiv
	FNCALL	_set_temp,___lwmod
	FNCALL	_set_temp,___wmul
	FNCALL	_set_temp,_clcd_print
	FNCALL	_set_temp,_clcd_putch
	FNCALL	_set_temp,_clear_screen
	FNCALL	_read_matrix_keypad,_scan_keypad
	FNCALL	_scan_keypad,_alarm
	FNCALL	_init_config,_init_clcd
	FNCALL	_init_config,_init_matrix_keypad
	FNCALL	_init_config,_init_timer2
	FNCALL	_init_clcd,_init_display_controller
	FNCALL	_init_display_controller,_clcd_write
	FNCALL	_display_time,___awdiv
	FNCALL	_display_time,___awmod
	FNCALL	_display_time,_clcd_print
	FNCALL	_display_time,_clcd_putch
	FNCALL	_display_time,_clear_screen
	FNCALL	_display_power_screen,_alarm
	FNCALL	_display_power_screen,_clcd_print
	FNCALL	_display_power_screen,_clcd_putch
	FNCALL	_display_power_screen,_clear_screen
	FNCALL	_clear_screen,_clcd_write
	FNCALL	_clcd_putch,_clcd_write
	FNCALL	_display_modes,_clcd_print
	FNCALL	_clcd_print,_clcd_write
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	read_matrix_keypad@once
	global	_screen_flag
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"matrix_keypad.c"
	line	129

;initializer for read_matrix_keypad@once
	retlw	01h
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"main.c"
	line	15

;initializer for _screen_flag
	retlw	010h
	global	isr@count
	global	_temp
	global	set_temp@key_count
	global	set_temp@display_blank
	global	set_temp@delay
	global	set_time@key_count
	global	set_time@display_blank
	global	set_time@delay
	global	set_time@blink_pos
	global	_pre_heat
	global	_minn
	global	_sec
	global	_PORTD
_PORTD	set	0x8
	global	_TMR2IF
_TMR2IF	set	0x61
	global	_RC1
_RC1	set	0x39
	global	_RB2
_RB2	set	0x32
	global	_RB1
_RB1	set	0x31
	global	_RB0
_RB0	set	0x30
	global	_RD0
_RD0	set	0x40
	global	_RD1
_RD1	set	0x41
	global	_RD2
_RD2	set	0x42
	global	_RD3
_RD3	set	0x43
	global	_RC2
_RC2	set	0x3A
	global	_TMR2ON
_TMR2ON	set	0x92
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RE1
_RE1	set	0x49
	global	_RE2
_RE2	set	0x4A
	global	_PR2
_PR2	set	0x92
	global	_TRISB
_TRISB	set	0x86
	global	_TRISD
_TRISD	set	0x88
	global	_TMR2IE
_TMR2IE	set	0x461
	global	_nRBPU
_nRBPU	set	0x40F
	global	_TRISC1
_TRISC1	set	0x439
	global	_TRISC2
_TRISC2	set	0x43A
	global	_TRISE1
_TRISE1	set	0x449
	global	_TRISE2
_TRISE2	set	0x44A
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
	global __stringbase
__stringbase:
	global    __end_of__stringtab
__end_of__stringtab:
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
	
STR_26:	
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	106	;'j'
	retlw	111	;'o'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	33	;'!'
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	40	;'('
	retlw	77	;'M'
	retlw	77	;'M'
	retlw	58	;':'
	retlw	83	;'S'
	retlw	83	;'S'
	retlw	41	;')'
	retlw	0
psect	stringtext
	
STR_15:	
	retlw	42	;'*'
	retlw	58	;':'
	retlw	67	;'C'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	35	;'#'
	retlw	58	;':'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	69	;'E'
	retlw	109	;'m'
	retlw	98	;'b'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	121	;'y'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	0
psect	stringtext
	
STR_22:	
	retlw	52	;'4'
	retlw	46	;'.'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	47	;'/'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	85	;'U'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	77	;'M'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	119	;'w'
	retlw	97	;'a'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	0
psect	stringtext
	
STR_16:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	77	;'M'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	40	;'('
	retlw	39	;'''
	retlw	67	;'C'
	retlw	41	;')'
	retlw	0
psect	stringtext
	
STR_19:	
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	45	;'-'
	retlw	72	;'H'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	51	;'3'
	retlw	46	;'.'
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	68	;'D'
	retlw	101	;'e'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	66	;'B'
	retlw	121	;'y'
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	80	;'P'
	retlw	111	;'o'
	retlw	119	;'w'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	57	;'9'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	87	;'W'
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	80	;'P'
	retlw	111	;'o'
	retlw	119	;'w'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	stringtext
	
STR_20:	
	retlw	84	;'T'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	102	;'f'
	retlw	116	;'t'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	112	;'p'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	75	;'K'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	73	;'I'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	0
psect	stringtext
	
STR_23:	
	retlw	53	;'5'
	retlw	46	;'.'
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	69	;'E'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	88	;'X'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_25:	
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	85	;'U'
	retlw	80	;'P'
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	50	;'2'
	retlw	46	;'.'
	retlw	71	;'G'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	49	;'1'
	retlw	46	;'.'
	retlw	77	;'M'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	0
psect	stringtext
	
STR_12:	
	retlw	52	;'4'
	retlw	46	;'.'
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	0
psect	stringtext
	
STR_21:	
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_24:	
	retlw	54	;'6'
	retlw	46	;'.'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	80	;'P'
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_17:	
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	77	;'M'
	retlw	80	;'P'
	retlw	58	;':'
	retlw	0
psect	stringtext
STR_18	equ	STR_15+0
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config WDTE = "OFF"
	file	"dist/default/production\Microwave_Oven.X.production.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
isr@count:
       ds      2

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"matrix_keypad.c"
	line	129
read_matrix_keypad@once:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_temp:
       ds      2

set_temp@key_count:
       ds      1

set_temp@display_blank:
       ds      1

set_temp@delay:
       ds      1

set_time@key_count:
       ds      1

set_time@display_blank:
       ds      1

set_time@delay:
       ds      1

set_time@blink_pos:
       ds      1

_pre_heat:
       ds      1

_minn:
       ds      1

_sec:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"main.c"
	line	15
_screen_flag:
       ds      1

	file	"dist/default/production\Microwave_Oven.X.production.s"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
?_init_matrix_keypad:	; 1 bytes @ 0x0
?_init_timer2:	; 1 bytes @ 0x0
?_read_matrix_keypad:	; 1 bytes @ 0x0
?_display_power_screen:	; 1 bytes @ 0x0
?_display_modes:	; 1 bytes @ 0x0
?_display_time:	; 1 bytes @ 0x0
?_heat_food:	; 1 bytes @ 0x0
?_alarm:	; 1 bytes @ 0x0
?_init_display_controller:	; 1 bytes @ 0x0
?_init_clcd:	; 1 bytes @ 0x0
?_clear_screen:	; 1 bytes @ 0x0
?_init_config:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_scan_keypad:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
??_isr:	; 1 bytes @ 0x0
	ds	2
?_clcd_write:	; 1 bytes @ 0x2
?___bmul:	; 1 bytes @ 0x2
	global	?___wmul
?___wmul:	; 2 bytes @ 0x2
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	clcd_write@mode
clcd_write@mode:	; 1 bytes @ 0x2
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x2
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
??_init_matrix_keypad:	; 1 bytes @ 0x2
??_init_timer2:	; 1 bytes @ 0x2
??_heat_food:	; 1 bytes @ 0x2
??_alarm:	; 1 bytes @ 0x2
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x3
??_clcd_write:	; 1 bytes @ 0x3
??___bmul:	; 1 bytes @ 0x3
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x4
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x4
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	ds	1
	global	clcd_write@byte
clcd_write@byte:	; 1 bytes @ 0x5
	global	scan_keypad@i
scan_keypad@i:	; 2 bytes @ 0x5
??_scan_keypad:	; 1 bytes @ 0x5
	ds	1
?_clcd_print:	; 1 bytes @ 0x6
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x6
	global	clcd_print@str
clcd_print@str:	; 2 bytes @ 0x6
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
??_init_display_controller:	; 1 bytes @ 0x6
??_clear_screen:	; 1 bytes @ 0x6
??___wmul:	; 1 bytes @ 0x6
??___awdiv:	; 1 bytes @ 0x6
??___awmod:	; 1 bytes @ 0x6
??___lwdiv:	; 1 bytes @ 0x6
	ds	1
	global	read_matrix_keypad@mode
read_matrix_keypad@mode:	; 1 bytes @ 0x7
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x7
??_read_matrix_keypad:	; 1 bytes @ 0x7
	ds	1
	global	clcd_print@addr
clcd_print@addr:	; 1 bytes @ 0x8
	global	read_matrix_keypad@key
read_matrix_keypad@key:	; 1 bytes @ 0x8
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x8
??_init_clcd:	; 1 bytes @ 0x8
??_init_config:	; 1 bytes @ 0x8
	ds	1
??_display_modes:	; 1 bytes @ 0x9
??_clcd_putch:	; 1 bytes @ 0x9
??_clcd_print:	; 1 bytes @ 0x9
??___lwmod:	; 1 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	?___awmod
?___awmod:	; 2 bytes @ 0x4
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x4
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x4
	ds	2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x6
	ds	2
?_clcd_putch:	; 1 bytes @ 0x8
	global	clcd_putch@addr
clcd_putch@addr:	; 1 bytes @ 0x8
	ds	1
	global	clcd_putch@data
clcd_putch@data:	; 1 bytes @ 0x9
	ds	1
?_set_time:	; 1 bytes @ 0xA
?_set_temp:	; 1 bytes @ 0xA
	global	set_time@reset_flag
set_time@reset_flag:	; 1 bytes @ 0xA
	global	set_temp@reset_flag
set_temp@reset_flag:	; 1 bytes @ 0xA
??_display_power_screen:	; 1 bytes @ 0xA
??_display_time:	; 1 bytes @ 0xA
	ds	1
??_set_time:	; 1 bytes @ 0xB
??_set_temp:	; 1 bytes @ 0xB
	ds	2
	global	display_power_screen@i
display_power_screen@i:	; 1 bytes @ 0xD
	global	set_time@key
set_time@key:	; 1 bytes @ 0xD
	ds	1
	global	display_power_screen@i_161
display_power_screen@i_161:	; 1 bytes @ 0xE
	global	set_temp@key
set_temp@key:	; 1 bytes @ 0xE
	ds	1
	global	display_power_screen@i_162
display_power_screen@i_162:	; 1 bytes @ 0xF
	ds	1
	global	display_power_screen@i_165
display_power_screen@i_165:	; 1 bytes @ 0x10
	ds	1
	global	display_power_screen@i_166
display_power_screen@i_166:	; 1 bytes @ 0x11
	ds	1
??_main:	; 1 bytes @ 0x12
	ds	3
	global	main@reset_flag
main@reset_flag:	; 1 bytes @ 0x15
	ds	1
	global	main@key
main@key:	; 1 bytes @ 0x16
	ds	1
;!
;!Data Sizes:
;!    Strings     280
;!    Constant    0
;!    Data        2
;!    BSS         14
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      12
;!    BANK0            80     23      36
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    clcd_print@str	PTR const unsigned char  size(2) Largest target is 17
;!		 -> STR_1(CODE[13]), STR_10(CODE[8]), STR_11(CODE[13]), STR_12(CODE[8]), 
;!		 -> STR_13(CODE[17]), STR_14(CODE[6]), STR_15(CODE[16]), STR_16(CODE[14]), 
;!		 -> STR_17(CODE[6]), STR_18(CODE[16]), STR_19(CODE[13]), STR_2(CODE[12]), 
;!		 -> STR_20(CODE[11]), STR_21(CODE[7]), STR_22(CODE[15]), STR_23(CODE[8]), 
;!		 -> STR_24(CODE[7]), STR_25(CODE[8]), STR_26(CODE[17]), STR_3(CODE[15]), 
;!		 -> STR_4(CODE[13]), STR_5(CODE[10]), STR_6(CODE[8]), STR_7(CODE[16]), 
;!		 -> STR_8(CODE[11]), STR_9(CODE[8]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_clcd_print
;!    _main->_read_matrix_keypad
;!    _set_time->_clcd_print
;!    _set_temp->___lwdiv
;!    _set_temp->_clcd_print
;!    ___lwmod->___lwdiv
;!    _read_matrix_keypad->_scan_keypad
;!    _scan_keypad->_alarm
;!    _init_clcd->_init_display_controller
;!    _init_display_controller->_clcd_write
;!    _display_time->_clcd_print
;!    ___awmod->___awdiv
;!    _display_power_screen->_clcd_print
;!    _clear_screen->_clcd_write
;!    _clcd_putch->___lwdiv
;!    _display_modes->_clcd_print
;!    _clcd_print->_clcd_write
;!
;!Critical Paths under _isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_display_power_screen
;!    _set_time->_clcd_putch
;!    _set_temp->_clcd_putch
;!    _display_time->_clcd_putch
;!    ___awmod->___awdiv
;!    _display_power_screen->_clcd_putch
;!    _clcd_putch->___awmod
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 5     5      0    7513
;!                                             18 BANK0      5     5      0
;!                         _clcd_print
;!                       _clear_screen
;!                      _display_modes
;!               _display_power_screen
;!                       _display_time
;!                          _heat_food
;!                        _init_config
;!                 _read_matrix_keypad
;!                           _set_temp
;!                           _set_time
;! ---------------------------------------------------------------------------------
;! (1) _set_time                                             4     3      1    1764
;!                                             10 BANK0      4     3      1
;!                            ___awdiv
;!                            ___awmod
;!                             ___bmul
;!                         _clcd_print
;!                         _clcd_putch
;!                       _clear_screen
;! ---------------------------------------------------------------------------------
;! (2) ___bmul                                               3     2      1       6
;!                                              2 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _set_temp                                             5     4      1    2215
;!                                             10 BANK0      5     4      1
;!                            ___awdiv
;!                            ___awmod
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                         _clcd_print
;!                         _clcd_putch
;!                       _clear_screen
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4      94
;!                                              2 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     244
;!                                              0 BANK0      5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     166
;!                                              2 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _read_matrix_keypad                                   2     2      0     279
;!                                              7 COMMON     2     2      0
;!                        _scan_keypad
;! ---------------------------------------------------------------------------------
;! (2) _scan_keypad                                          2     2      0     161
;!                                              5 COMMON     2     2      0
;!                              _alarm
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          0     0      0      92
;!                          _init_clcd
;!                 _init_matrix_keypad
;!                        _init_timer2
;! ---------------------------------------------------------------------------------
;! (2) _init_timer2                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_matrix_keypad                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_clcd                                            0     0      0      92
;!            _init_display_controller
;! ---------------------------------------------------------------------------------
;! (3) _init_display_controller                              2     2      0      92
;!                                              6 COMMON     2     2      0
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (1) _heat_food                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _display_time                                         3     3      0    1386
;!                                             10 BANK0      3     3      0
;!                            ___awdiv
;!                            ___awmod
;!                         _clcd_print
;!                         _clcd_putch
;!                       _clear_screen
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              6     2      4     453
;!                                              6 COMMON     2     2      0
;!                                              4 BANK0      4     0      4
;!                            ___awdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              8     4      4     459
;!                                              2 COMMON     4     0      4
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _display_power_screen                                 8     8      0     814
;!                                             10 BANK0      8     8      0
;!                              _alarm
;!                         _clcd_print
;!                         _clcd_putch
;!                       _clear_screen
;! ---------------------------------------------------------------------------------
;! (2) _clear_screen                                         2     2      0      92
;!                                              6 COMMON     2     2      0
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _clcd_putch                                           2     1      1     171
;!                                              8 BANK0      2     1      1
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                            ___lwdiv (ARG)
;!                            ___lwmod (ARG)
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (3) _alarm                                                3     3      0       0
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _display_modes                                        0     0      0     211
;!                         _clcd_print
;! ---------------------------------------------------------------------------------
;! (2) _clcd_print                                           3     0      3     211
;!                                              6 COMMON     3     0      3
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (4) _clcd_write                                           4     3      1      92
;!                                              2 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _isr                                                  2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _clcd_print
;!     _clcd_write
;!   _clear_screen
;!     _clcd_write
;!   _display_modes
;!     _clcd_print
;!   _display_power_screen
;!     _alarm
;!     _clcd_print
;!     _clcd_putch
;!       ___awdiv (ARG)
;!       ___awmod (ARG)
;!         ___awdiv (ARG)
;!       ___lwdiv (ARG)
;!       ___lwmod (ARG)
;!         ___lwdiv (ARG)
;!       _clcd_write (ARG)
;!     _clear_screen
;!   _display_time
;!     ___awdiv
;!     ___awmod
;!     _clcd_print
;!     _clcd_putch
;!     _clear_screen
;!   _heat_food
;!   _init_config
;!     _init_clcd
;!       _init_display_controller
;!         _clcd_write
;!     _init_matrix_keypad
;!     _init_timer2
;!   _read_matrix_keypad
;!     _scan_keypad
;!       _alarm
;!   _set_temp
;!     ___awdiv
;!     ___awmod
;!     ___lwdiv
;!     ___lwmod
;!     ___wmul
;!     _clcd_print
;!     _clcd_putch
;!     _clear_screen
;!   _set_time
;!     ___awdiv
;!     ___awmod
;!     ___bmul
;!     _clcd_print
;!     _clcd_putch
;!     _clear_screen
;!
;! _isr (ROOT)
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BANK3               96      0       0      0.0%
;!BITBANK3            96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!BANK1               80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BANK0               80     23      36     45.0%
;!BITBANK0            80      0       0      0.0%
;!COMMON              14      9      12     85.7%
;!BITCOMMON           14      0       0      0.0%
;!DATA                 0      0      48      0.0%
;!STACK                0      0       0      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 29 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key             1   22[BANK0 ] unsigned char 
;;  reset_flag      1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, btemp1, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_clcd_print
;;		_clear_screen
;;		_display_modes
;;		_display_power_screen
;;		_display_time
;;		_heat_food
;;		_init_config
;;		_read_matrix_keypad
;;		_set_temp
;;		_set_time
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	29
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	29
	
_main:	
;incstack = 0
	callstack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+btemp1+cstack]
	line	30
	
l2759:	
;main.c: 30:                 _delay((unsigned long)((1200)*(20000000/4000.0)));
	fcall	_init_config
	line	37
	
l2761:	
;main.c: 37:                 reset_flag=0x31;
	movlw	low(01h)
	fcall	_read_matrix_keypad
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@key)
	line	38
	
l2763:	
;main.c: 38:                 clear_screen();
		movlw	32
	xorwf	((_screen_flag)),w
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l2797
u2780:
	line	40
	
l2765:	
;main.c: 39:             };main.c: 40:             else if(key==3)
		decf	((main@key)),w
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l2779
u2790:
	line	42
	
l2767:	
;main.c: 41:             {;main.c: 42:                 screen_flag=0x50;
	movlw	030h
	movwf	(_screen_flag)
	line	43
	
l2769:	
;main.c: 43:                 reset_flag=0x31;
	fcall	_clear_screen
	line	44
	
l2771:	
;main.c: 44:                 clear_screen();
	movlw	low(((STR_1)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_1)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0C2h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	45
	
l2773:	
;main.c: 45:             }
	asmopt push
asmopt off
movlw  31
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main)+2)
movlw	113
movwf	((??_main)+1)
	movlw	29
movwf	((??_main))
	u2907:
decfsz	((??_main)),f
	goto	u2907
	decfsz	((??_main)+1),f
	goto	u2907
	decfsz	((??_main)+2),f
	goto	u2907
	nop2
asmopt pop

	line	46
	
l2775:	
;main.c: 46:             else if(key==4)
	fcall	_clear_screen
	line	47
	
l2777:	
;main.c: 47:             {
	movlw	031h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@reset_flag)
	line	49
;main.c: 49:                 clear_screen();
	goto	l2843
	line	50
	
l2779:	
		movlw	2
	xorwf	((main@key)),w
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l2785
u2800:
	line	51
	
l2781:	
;main.c: 51:         }
	movlw	040h
	movwf	(_screen_flag)
	line	52
;main.c: 52:         else if(screen_flag==0x70)
	movlw	031h
	movwf	(main@reset_flag)
	line	53
	
l2783:	
;main.c: 53:         {
	fcall	_clear_screen
	line	54
;main.c: 54:             if(key==4)
	goto	l2843
	line	55
	
l2785:	
		movlw	3
	xorwf	((main@key)),w
	btfss	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l2791
u2810:
	line	57
	
l2787:	
;main.c: 56:                 sec=sec+30;;main.c: 57:                 if(sec>59)
	movlw	050h
	movwf	(_screen_flag)
	line	58
;main.c: 58:                 {
	movlw	031h
	movwf	(main@reset_flag)
	goto	l2783
	line	61
	
l2791:	
		movlw	4
	xorwf	((main@key)),w
	btfss	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l2843
u2820:
	line	63
	
l2793:	
;main.c: 62:             };main.c: 63:             if(key==5)
	movlw	060h
	movwf	(_screen_flag)
	goto	l2783
	line	67
	
l2797:	
		movlw	112
	xorwf	((_screen_flag)),w
	btfss	status,2
	goto	u2831
	goto	u2830
u2831:
	goto	l2813
u2830:
	line	69
	
l2799:	
;main.c: 68:             {;main.c: 69:                 screen_flag=0x90;
		movlw	4
	xorwf	((main@key)),w
	btfss	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l98
u2840:
	line	71
	
l2801:	
;main.c: 70: ;main.c: 71:             }
	movf	(_sec),w
	addlw	01Eh
	movwf	(_sec)
	line	72
	
l2803:	
;main.c: 72: 
	movlw	low(03Ch)
	subwf	(_sec),w
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l98
u2850:
	line	74
	
l2805:	
;main.c: 73:         };main.c: 74:         else if(screen_flag== 0x80)
	movlw	low(01h)
	addwf	(_minn),f
	line	75
;main.c: 75:         {
	movf	(_sec),w
	addlw	0C4h
	movwf	(_sec)
	line	77
;main.c: 77:             {
	
l98:	
	line	78
;main.c: 78: 
		movlw	5
	xorwf	((main@key)),w
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l2809
u2860:
	line	80
	
l2807:	
;main.c: 79:                 TMR2ON=1;;main.c: 80:                 RC2=1;
	movlw	080h
	movwf	(_screen_flag)
	line	81
;main.c: 81:                 screen_flag=0x70;
	goto	l2843
	line	82
	
l2809:	
		movlw	6
	xorwf	((main@key)),w
	btfss	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l2843
u2870:
	line	84
	
l2811:	
;main.c: 83: ;main.c: 84:         }
	movlw	090h
	movwf	(_screen_flag)
	goto	l2843
	line	89
	
l2813:	
		movlw	128
	xorwf	((_screen_flag)),w
	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l2843
u2880:
	line	91
	
l2815:	
;main.c: 90:                 clear_screen();;main.c: 91:                 screen_flag= 0x20;
		movlw	4
	xorwf	((main@key)),w
	btfss	status,2
	goto	u2891
	goto	u2890
u2891:
	goto	l2843
u2890:
	line	94
	
l2817:	
;main.c: 92:                 break;;main.c: 94:             case 0x20:
	bsf	(146/8),(146)&7	;volatile
	line	95
;main.c: 95:                 display_modes();
	bsf	(58/8),(58)&7	;volatile
	line	96
;main.c: 96:                 break;
	movlw	070h
	movwf	(_screen_flag)
	goto	l2843
	line	104
	
l2819:	
;main.c: 104:             case 0x40:
	fcall	_display_power_screen
	line	105
	
l2821:	
;main.c: 105: 
	fcall	_clear_screen
	line	106
	
l2823:	
;main.c: 106:                 set_time(key,reset_flag);
	movlw	020h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_screen_flag)
	line	107
;main.c: 107:                 break;
	goto	l108
	line	110
	
l2825:	
;main.c: 110:                 set_temp(key,reset_flag);
	fcall	_display_modes
	line	111
;main.c: 111: 
	goto	l108
	line	114
	
l2827:	
;main.c: 114:             case 0x60:
	movf	(main@reset_flag),w
	movwf	(set_time@reset_flag)
	movf	(main@key),w
	fcall	_set_time
	line	115
;main.c: 115:                 heat_food();
	goto	l108
	line	117
	
l2829:	
;main.c: 117:             case 0x80:
	fcall	_display_time
	line	118
;main.c: 118:                 TMR2ON=0;
	goto	l108
	line	121
	
l2831:	
;main.c: 121:             case 0x90:
	movf	(main@reset_flag),w
	movwf	(set_time@reset_flag)
	movf	(main@key),w
	fcall	_set_time
	line	122
;main.c: 122:                 TMR2ON=0;
	goto	l108
	line	125
	
l2833:	
;main.c: 125:                 screen_flag= 0x20;
	movf	(main@reset_flag),w
	movwf	(set_temp@reset_flag)
	movf	(main@key),w
	fcall	_set_temp
	line	128
;main.c: 128: 
	goto	l108
	line	130
	
l2835:	
;main.c: 130: 
	fcall	_heat_food
	line	131
;main.c: 131: 
	goto	l108
	line	132
;main.c: 132: 
	
l115:	
	line	133
;main.c: 133: 
	bcf	(146/8),(146)&7	;volatile
	line	134
;main.c: 134:         }
	bcf	(58/8),(58)&7	;volatile
	line	135
;main.c: 135:         reset_flag=0xFF;
	goto	l108
	line	136
;main.c: 136: 
	
l116:	
	line	137
;main.c: 137: 
	bcf	(146/8),(146)&7	;volatile
	line	138
;main.c: 138:     }
	bcf	(58/8),(58)&7	;volatile
	goto	l2821
	line	149
	
l2843:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_screen_flag),w
	; Switch size 1, requested type "simple"
; Number of cases is 9, Range of values is 16 to 144
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           28    15 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	16^0	; case 16
	skipnz
	goto	l2819
	xorlw	32^16	; case 32
	skipnz
	goto	l2825
	xorlw	48^32	; case 48
	skipnz
	goto	l2827
	xorlw	64^48	; case 64
	skipnz
	goto	l2831
	xorlw	80^64	; case 80
	skipnz
	goto	l2833
	xorlw	96^80	; case 96
	skipnz
	goto	l2835
	xorlw	112^96	; case 112
	skipnz
	goto	l2829
	xorlw	128^112	; case 128
	skipnz
	goto	l115
	xorlw	144^128	; case 144
	skipnz
	goto	l116
	goto	l108
	asmopt pop

	
l108:	
	line	150
	movlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@reset_flag)
	goto	l2761
	global	start
	ljmp	start
	callstack 0
	line	155
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_set_time

;; *************** function _set_time *****************
;; Defined at:
;;		line 77 in file "micro_oven.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     unsigned char 
;;  reset_flag      1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  key             1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, btemp1, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___bmul
;;		_clcd_print
;;		_clcd_putch
;;		_clear_screen
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"micro_oven.c"
	line	77
global __ptext1
__ptext1:	;psect for function _set_time
psect	text1
	file	"micro_oven.c"
	line	77
	
_set_time:	
;incstack = 0
	callstack 5
; Regs used in _set_time: [wreg-fsr0h+status,2+status,0+pclath+btemp1+cstack]
;set_time@key stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(set_time@key)
	line	83
	
l2571:	
;micro_oven.c: 77: void set_time(unsigned char key, unsigned char reset_flag);micro_oven.c: 78: {;micro_oven.c: 79:     static unsigned char blink_pos=0;;micro_oven.c: 80:     static unsigned char delay, display_blank;;micro_oven.c: 81:     static unsigned char key_count=0;;micro_oven.c: 83:     if(reset_flag==0x31)
		movlw	49
	xorwf	((set_time@reset_flag)),w
	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l2575
u2480:
	line	85
	
l2573:	
;micro_oven.c: 84:     {;micro_oven.c: 85:         sec=0;
	clrf	(_sec)
	line	86
;micro_oven.c: 86:         minn=0;
	clrf	(_minn)
	line	87
;micro_oven.c: 87:         key=0;
	clrf	(set_time@key)
	line	88
;micro_oven.c: 88:         key_count=0;
	clrf	(set_time@key_count)
	line	89
;micro_oven.c: 89:         blink_pos=0;
	clrf	(set_time@blink_pos)
	line	92
	
l2575:	
;micro_oven.c: 92:     clcd_print("SET TIME (MM:SS)",(0x80 + 0));
	movlw	low(((STR_13)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_13)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(080h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	93
	
l2577:	
;micro_oven.c: 93:     clcd_print("TIME:",(0xC0 + 0));
	movlw	low(((STR_14)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_14)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0C0h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	94
	
l2579:	
;micro_oven.c: 94:     clcd_putch(':',(0xC0 + 7));
	movlw	low(0C7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	low(03Ah)
	fcall	_clcd_putch
	line	95
	
l2581:	
;micro_oven.c: 95:     clcd_print("*:CLEAR #:ENTER", (0xD0 + 0));
	movlw	low(((STR_15)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_15)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0D0h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	99
	
l2583:	
;micro_oven.c: 99:     if(key!='*' && key!='#' && key!=0xFF)
		movlw	42
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((set_time@key)),w
	btfsc	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l2603
u2490:
	
l2585:	
		movlw	35
	xorwf	((set_time@key)),w
	btfsc	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l2603
u2500:
	
l2587:	
		incf	((set_time@key)),w
	btfsc	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l2603
u2510:
	line	102
	
l2589:	
;micro_oven.c: 100:     {;micro_oven.c: 102:         key_count++;
	movlw	low(01h)
	addwf	(set_time@key_count),f
	line	103
	
l2591:	
;micro_oven.c: 103:         if(key_count<=3)
	movlw	low(04h)
	subwf	(set_time@key_count),w
	skipnc
	goto	u2521
	goto	u2520
u2521:
	goto	l2597
u2520:
	line	105
	
l2593:	
;micro_oven.c: 104:         {;micro_oven.c: 105:             sec=sec*10+key;
	movlw	low(0Ah)
	movwf	(___bmul@multiplicand)
	movf	(_sec),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(set_time@key),w
	movwf	(_sec)
	line	106
	
l2595:	
;micro_oven.c: 106:             blink_pos=0;
	clrf	(set_time@blink_pos)
	line	107
;micro_oven.c: 107:         }
	goto	l2625
	line	108
	
l2597:	
	movlw	low(06h)
	subwf	(set_time@key_count),w
	skipnc
	goto	u2531
	goto	u2530
u2531:
	goto	l2625
u2530:
	line	110
	
l2599:	
;micro_oven.c: 109:         {;micro_oven.c: 110:             minn=minn*10+key;
	movlw	low(0Ah)
	movwf	(___bmul@multiplicand)
	movf	(_minn),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(set_time@key),w
	movwf	(_minn)
	line	111
	
l2601:	
;micro_oven.c: 111:             blink_pos=1;
	movlw	01h
	movwf	(set_time@blink_pos)
	goto	l2625
	line	114
	
l2603:	
		movlw	42
	xorwf	((set_time@key)),w
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l2615
u2540:
	line	116
	
l2605:	
;micro_oven.c: 115:     {;micro_oven.c: 116:         if(blink_pos==0)
	movf	((set_time@blink_pos)),w
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l2609
u2550:
	line	118
	
l2607:	
;micro_oven.c: 117:         {;micro_oven.c: 118:             sec=0;
	clrf	(_sec)
	line	119
;micro_oven.c: 119:             key_count=0;
	clrf	(set_time@key_count)
	line	120
;micro_oven.c: 120:         }
	goto	l2625
	line	121
	
l2609:	
		decf	((set_time@blink_pos)),w
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l2625
u2560:
	line	122
	
l2611:	
;micro_oven.c: 122:             minn=0;
	clrf	(_minn)
	line	123
	
l2613:	
;micro_oven.c: 123:             key_count=2;
	movlw	02h
	movwf	(set_time@key_count)
	goto	l2625
	line	127
	
l2615:	
		movlw	35
	xorwf	((set_time@key)),w
	btfss	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l2625
u2570:
	line	129
	
l2617:	
;micro_oven.c: 128:     {;micro_oven.c: 129:         clear_screen();
	fcall	_clear_screen
	line	131
	
l2619:	
;micro_oven.c: 131:         RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7	;volatile
	line	132
	
l2621:	
;micro_oven.c: 132:         TMR2ON = 1;
	bsf	(146/8),(146)&7	;volatile
	line	134
	
l2623:	
;micro_oven.c: 134:         screen_flag=0x70;
	movlw	070h
	movwf	(_screen_flag)
	line	140
	
l2625:	
;micro_oven.c: 140:     if(delay++ ==7)
	movlw	low(01h)
	addwf	(set_time@delay),f
		movlw	8
	xorwf	(((set_time@delay))),w
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l2631
u2580:
	line	142
	
l2627:	
;micro_oven.c: 141:     {;micro_oven.c: 142:         delay=0;
	clrf	(set_time@delay)
	line	143
	
l2629:	
;micro_oven.c: 143:         display_blank=!display_blank;
	movf	((set_time@display_blank)),w
	btfsc	status,2
	goto	u2591
	goto	u2590
u2591:
	movlw	1
	goto	u2600
u2590:
	movlw	0
u2600:
	movwf	(set_time@display_blank)
	line	146
	
l2631:	
;micro_oven.c: 146:     if(display_blank){
	movf	((set_time@display_blank)),w
	btfsc	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l2639
u2610:
	line	147
	
l2633:	
;micro_oven.c: 147:         if (blink_pos==0)
	movf	((set_time@blink_pos)),w
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l2637
u2620:
	line	149
	
l2635:	
;micro_oven.c: 148:         {;micro_oven.c: 149:             clcd_putch(' ',(0xC0 + 8));
	movlw	low(0C8h)
	movwf	(clcd_putch@addr)
	movlw	low(020h)
	fcall	_clcd_putch
	line	150
;micro_oven.c: 150:             clcd_putch(' ',(0xC0 + 9));
	movlw	low(0C9h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	low(020h)
	fcall	_clcd_putch
	line	151
;micro_oven.c: 151:             }
	goto	l265
	line	153
	
l2637:	
;micro_oven.c: 153:             clcd_putch(' ',(0xC0 + 5));
	movlw	low(0C5h)
	movwf	(clcd_putch@addr)
	movlw	low(020h)
	fcall	_clcd_putch
	line	154
;micro_oven.c: 154:             clcd_putch(' ',(0xC0 + 6));
	movlw	low(0C6h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	low(020h)
	fcall	_clcd_putch
	goto	l265
	line	159
	
l2639:	
;micro_oven.c: 159:         clcd_putch(sec/10+'0',(0xC0 + 8));
	movlw	low(0C8h)
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(_sec),w
	movwf	(??_set_time)
	clrf	(??_set_time+1)
	movf	(0+(??_set_time)),w
	movwf	(___awdiv@dividend)
	movf	(1+(??_set_time)),w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_clcd_putch
	line	160
;micro_oven.c: 160:         clcd_putch(sec%10+'0',(0xC0 + 9));
	movlw	low(0C9h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(_sec),w
	movwf	(??_set_time)
	clrf	(??_set_time+1)
	movf	(0+(??_set_time)),w
	movwf	(___awmod@dividend)
	movf	(1+(??_set_time)),w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_clcd_putch
	line	162
;micro_oven.c: 162:         clcd_putch(minn/10+'0',(0xC0 + 5));
	movlw	low(0C5h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(_minn),w
	movwf	(??_set_time)
	clrf	(??_set_time+1)
	movf	(0+(??_set_time)),w
	movwf	(___awdiv@dividend)
	movf	(1+(??_set_time)),w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_clcd_putch
	line	163
;micro_oven.c: 163:         clcd_putch(minn%10+'0',(0xC0 + 6));
	movlw	low(0C6h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(_minn),w
	movwf	(??_set_time)
	clrf	(??_set_time+1)
	movf	(0+(??_set_time)),w
	movwf	(___awmod@dividend)
	movf	(1+(??_set_time)),w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_clcd_putch
	line	166
	
l265:	
	return
	callstack 0
GLOBAL	__end_of_set_time
	__end_of_set_time:
	signat	_set_time,8313
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    4[COMMON] unsigned char 
;;  product         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\Umul8.c"
	line	4
global __ptext2
__ptext2:	;psect for function ___bmul
psect	text2
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\Umul8.c"
	line	4
	
___bmul:	
;incstack = 0
	callstack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l2453:	
	clrf	(___bmul@product)
	line	43
	
l2455:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l2459
u2210:
	line	44
	
l2457:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	45
	
l2459:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l2461:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u2221
	goto	u2220
u2221:
	goto	l2455
u2220:
	line	50
	
l2463:	
	movf	(___bmul@product),w
	line	51
	
l431:	
	return
	callstack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_set_temp

;; *************** function _set_temp *****************
;; Defined at:
;;		line 167 in file "micro_oven.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     unsigned char 
;;  reset_flag      1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  key             1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, btemp1, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___lwdiv
;;		___lwmod
;;		___wmul
;;		_clcd_print
;;		_clcd_putch
;;		_clear_screen
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"micro_oven.c"
	line	167
global __ptext3
__ptext3:	;psect for function _set_temp
psect	text3
	file	"micro_oven.c"
	line	167
	
_set_temp:	
;incstack = 0
	callstack 5
; Regs used in _set_temp: [wreg-fsr0h+status,2+status,0+pclath+btemp1+cstack]
;set_temp@key stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(set_temp@key)
	line	173
	
l2687:	
;micro_oven.c: 167: void set_temp(unsigned char key,unsigned char reset_flag);micro_oven.c: 168: {;micro_oven.c: 170:     static unsigned char delay, display_blank;;micro_oven.c: 171:     static unsigned char key_count=0;;micro_oven.c: 173:     if(reset_flag==0x31)
		movlw	49
	xorwf	((set_temp@reset_flag)),w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l2691
u2650:
	line	175
	
l2689:	
;micro_oven.c: 174:     {;micro_oven.c: 175:         temp=0;
	clrf	(_temp)
	clrf	(_temp+1)
	line	176
;micro_oven.c: 176:         key=0;
	clrf	(set_temp@key)
	line	177
;micro_oven.c: 177:         key_count=0;
	clrf	(set_temp@key_count)
	line	180
	
l2691:	
;micro_oven.c: 180:     if(delay++ ==5)
	movlw	low(01h)
	addwf	(set_temp@delay),f
		movlw	6
	xorwf	(((set_temp@delay))),w
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l2697
u2660:
	line	182
	
l2693:	
;micro_oven.c: 181:     {;micro_oven.c: 182:         delay=0;
	clrf	(set_temp@delay)
	line	183
	
l2695:	
;micro_oven.c: 183:         display_blank=!display_blank;
	movf	((set_temp@display_blank)),w
	btfsc	status,2
	goto	u2671
	goto	u2670
u2671:
	movlw	1
	goto	u2680
u2670:
	movlw	0
u2680:
	movwf	(set_temp@display_blank)
	line	187
	
l2697:	
;micro_oven.c: 187:     clcd_print("SET TEMP ('C)",(0x80 + 1));
	movlw	low(((STR_16)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_16)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(081h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	188
	
l2699:	
;micro_oven.c: 188:     clcd_print("TEMP:",(0xC0 + 1));
	movlw	low(((STR_17)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_17)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0C1h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	189
	
l2701:	
;micro_oven.c: 189:     clcd_print("*:CLEAR #:ENTER", (0xD0 + 0));
	movlw	low(((STR_18)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_18)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0D0h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	192
	
l2703:	
;micro_oven.c: 192:     if(key!='*' && key!='#' && key!=0xFF)
		movlw	42
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((set_temp@key)),w
	btfsc	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l2715
u2690:
	
l2705:	
		movlw	35
	xorwf	((set_temp@key)),w
	btfsc	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l2715
u2700:
	
l2707:	
		incf	((set_temp@key)),w
	btfsc	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l2715
u2710:
	line	195
	
l2709:	
;micro_oven.c: 193:     {;micro_oven.c: 195:         key_count++;
	movlw	low(01h)
	addwf	(set_temp@key_count),f
	line	196
	
l2711:	
;micro_oven.c: 196:         if(key_count<=4)
	movlw	low(05h)
	subwf	(set_temp@key_count),w
	skipnc
	goto	u2721
	goto	u2720
u2721:
	goto	l2753
u2720:
	line	198
	
l2713:	
;micro_oven.c: 197:         {;micro_oven.c: 198:             temp=temp*10+key;
	movf	(_temp+1),w
	movwf	(___wmul@multiplier+1)
	movf	(_temp),w
	movwf	(___wmul@multiplier)
	movlw	0Ah
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(set_temp@key),w
	addwf	(0+(?___wmul)),w
	movwf	(_temp)
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(_temp)
	goto	l2753
	line	201
	
l2715:	
		movlw	42
	xorwf	((set_temp@key)),w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l2719
u2730:
	line	203
	
l2717:	
;micro_oven.c: 202:     {;micro_oven.c: 203:         temp=0;
	clrf	(_temp)
	clrf	(_temp+1)
	line	204
;micro_oven.c: 204:         key_count=0;
	clrf	(set_temp@key_count)
	line	205
;micro_oven.c: 205:     }
	goto	l2753
	line	206
	
l2719:	
		movlw	35
	xorwf	((set_temp@key)),w
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l2753
u2740:
	line	208
	
l2721:	
;micro_oven.c: 207:     {;micro_oven.c: 208:         if(temp>180)
	movlw	0
	subwf	(_temp+1),w
	movlw	0B5h
	skipnz
	subwf	(_temp),w
	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l2725
u2750:
	line	210
	
l2723:	
;micro_oven.c: 209:         {;micro_oven.c: 210:             temp=180;
	movlw	0B4h
	movwf	(_temp)
	movlw	0
	movwf	((_temp))+1
	line	212
	
l2725:	
;micro_oven.c: 212:         clear_screen();
	fcall	_clear_screen
	line	213
	
l2727:	
;micro_oven.c: 213:         pre_heat=60;
	movlw	03Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pre_heat)
	line	215
	
l2729:	
;micro_oven.c: 215:         TMR2ON=1;
	bsf	(146/8),(146)&7	;volatile
	line	217
	
l2731:	
;micro_oven.c: 217:         clcd_print("Pre-Heating:",(0x80 + 2));
	movlw	low(((STR_19)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_19)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(082h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	218
	
l2733:	
;micro_oven.c: 218:         clcd_print("Time Left:",(0x90 + 1));
	movlw	low(((STR_20)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_20)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(091h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	219
	
l2735:	
;micro_oven.c: 219:         clcd_putch('s',(0x90 + 14));
	movlw	low(09Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	low(073h)
	fcall	_clcd_putch
	line	220
;micro_oven.c: 220:         while(pre_heat)
	goto	l2739
	line	223
	
l2737:	
;micro_oven.c: 221:         {;micro_oven.c: 223:             clcd_putch((pre_heat/10)%10+'0',(0x90 + 12));
	movlw	low(09Ch)
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(_pre_heat),w
	movwf	(??_set_temp)
	clrf	(??_set_temp+1)
	movf	(0+(??_set_temp)),w
	movwf	(___awdiv@dividend)
	movf	(1+(??_set_temp)),w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@dividend+1)
	movf	(0+(?___awdiv)),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_clcd_putch
	line	224
;micro_oven.c: 224:             clcd_putch(pre_heat%10+'0',(0x90 + 13));
	movlw	low(09Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(_pre_heat),w
	movwf	(??_set_temp)
	clrf	(??_set_temp+1)
	movf	(0+(??_set_temp)),w
	movwf	(___awmod@dividend)
	movf	(1+(??_set_temp)),w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_clcd_putch
	line	220
	
l2739:	
;micro_oven.c: 220:         while(pre_heat)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_pre_heat)),w
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l2737
u2760:
	
l285:	
	line	226
;micro_oven.c: 226:         RC1=1;
	bsf	(57/8),(57)&7	;volatile
	line	227
	
l2741:	
;micro_oven.c: 227:         _delay((unsigned long)((2000)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  51
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_set_temp)+2)
movlw	187
movwf	((??_set_temp)+1)
	movlw	223
movwf	((??_set_temp))
	u2917:
decfsz	((??_set_temp)),f
	goto	u2917
	decfsz	((??_set_temp)+1),f
	goto	u2917
	decfsz	((??_set_temp)+2),f
	goto	u2917
asmopt pop

	line	228
	
l2743:	
;micro_oven.c: 228:         RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	229
;micro_oven.c: 229:         _delay((unsigned long)((2000)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  51
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_set_temp)+2)
movlw	187
movwf	((??_set_temp)+1)
	movlw	223
movwf	((??_set_temp))
	u2927:
decfsz	((??_set_temp)),f
	goto	u2927
	decfsz	((??_set_temp)+1),f
	goto	u2927
	decfsz	((??_set_temp)+2),f
	goto	u2927
asmopt pop

	line	230
	
l2745:	
;micro_oven.c: 230:         TMR2ON=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(146/8),(146)&7	;volatile
	line	231
	
l2747:	
;micro_oven.c: 231:         clear_screen();
	fcall	_clear_screen
	line	232
	
l2749:	
;micro_oven.c: 232:         screen_flag=0x30;
	movlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_screen_flag)
	line	233
	
l2751:	
	line	239
	
l2753:	
;micro_oven.c: 239:     if(display_blank)
	movf	((set_temp@display_blank)),w
	btfsc	status,2
	goto	u2771
	goto	u2770
u2771:
	goto	l2757
u2770:
	line	241
	
l2755:	
;micro_oven.c: 240:     {;micro_oven.c: 241:         clcd_putch(' ',(0xC0 + 7));
	movlw	low(0C7h)
	movwf	(clcd_putch@addr)
	movlw	low(020h)
	fcall	_clcd_putch
	line	242
;micro_oven.c: 242:         clcd_putch(' ',(0xC0 + 8));
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	low(020h)
	fcall	_clcd_putch
	line	243
;micro_oven.c: 243:         clcd_putch(' ',(0xC0 + 9));
	movlw	low(0C9h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	low(020h)
	fcall	_clcd_putch
	line	244
;micro_oven.c: 244:     }
	goto	l288
	line	248
	
l2757:	
;micro_oven.c: 246:     {;micro_oven.c: 248:         clcd_putch((temp/100)+'0',(0xC0 + 7));
	movlw	low(0C7h)
	movwf	(clcd_putch@addr)
	movlw	064h
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(_temp+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(_temp),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_clcd_putch
	line	249
;micro_oven.c: 249:         clcd_putch((temp/10)%10+'0',(0xC0 + 8));
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(_temp+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(_temp),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_clcd_putch
	line	250
;micro_oven.c: 250:         clcd_putch(temp%10+'0',(0xC0 + 9));
	movlw	low(0C9h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(_temp+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_temp),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_clcd_putch
	line	253
	
l288:	
	return
	callstack 0
GLOBAL	__end_of_set_temp
	__end_of_set_temp:
	signat	_set_temp,8313
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    2[COMMON] unsigned int 
;;  multiplicand    2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_set_temp
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\Umul16.c"
	line	15
global __ptext4
__ptext4:	;psect for function ___wmul
psect	text4
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\Umul16.c"
	line	15
	
___wmul:	
;incstack = 0
	callstack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l1867:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l1869:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1281
	goto	u1280
u1281:
	goto	l405
u1280:
	line	46
	
l1871:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l405:	
	line	47
	movlw	01h
	
u1295:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u1295
	line	48
	
l1873:	
	movlw	01h
	
u1305:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u1305
	line	49
	
l1875:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u1311
	goto	u1310
u1311:
	goto	l1869
u1310:
	line	52
	
l1877:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l407:	
	return
	callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_set_temp
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\lwmod.c"
	line	5
global __ptext5
__ptext5:	;psect for function ___lwmod
psect	text5
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\lwmod.c"
	line	5
	
___lwmod:	
;incstack = 0
	callstack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	12
	
l2549:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u2421
	goto	u2420
u2421:
	goto	l2567
u2420:
	line	13
	
l2551:	
	movlw	01h
	movwf	(___lwmod@counter)
	line	14
	goto	l2557
	line	15
	
l2553:	
	movlw	01h
	
u2435:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2435
	line	16
	
l2555:	
	movlw	low(01h)
	addwf	(___lwmod@counter),f
	line	14
	
l2557:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l2553
u2440:
	line	19
	
l2559:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2455
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2455:
	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l2563
u2450:
	line	20
	
l2561:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	21
	
l2563:	
	movlw	01h
	
u2465:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2465
	line	22
	
l2565:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l2559
u2470:
	line	24
	
l2567:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	25
	
l695:	
	return
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMMON] unsigned int 
;;  counter         1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_set_temp
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\lwdiv.c"
	line	5
global __ptext6
__ptext6:	;psect for function ___lwdiv
psect	text6
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\lwdiv.c"
	line	5
	
___lwdiv:	
;incstack = 0
	callstack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	13
	
l1963:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	14
	
l1965:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u1511
	goto	u1510
u1511:
	goto	l1985
u1510:
	line	15
	
l1967:	
	movlw	01h
	movwf	(___lwdiv@counter)
	line	16
	goto	l1973
	line	17
	
l1969:	
	movlw	01h
	
u1525:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1525
	line	18
	
l1971:	
	movlw	low(01h)
	addwf	(___lwdiv@counter),f
	line	16
	
l1973:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1531
	goto	u1530
u1531:
	goto	l1969
u1530:
	line	21
	
l1975:	
	movlw	01h
	
u1545:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1545
	line	22
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1555
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1555:
	skipc
	goto	u1551
	goto	u1550
u1551:
	goto	l1981
u1550:
	line	23
	
l1977:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	24
	
l1979:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
l1981:	
	movlw	01h
	
u1565:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u1565
	line	27
	
l1983:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u1571
	goto	u1570
u1571:
	goto	l1975
u1570:
	line	29
	
l1985:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	30
	
l685:	
	return
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_read_matrix_keypad

;; *************** function _read_matrix_keypad *****************
;; Defined at:
;;		line 127 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;  mode            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  mode            1    7[COMMON] unsigned char 
;;  key             1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, btemp1, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_scan_keypad
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"matrix_keypad.c"
	line	127
global __ptext7
__ptext7:	;psect for function _read_matrix_keypad
psect	text7
	file	"matrix_keypad.c"
	line	127
	
_read_matrix_keypad:	
;incstack = 0
	callstack 4
; Regs used in _read_matrix_keypad: [wreg+status,2+status,0+pclath+btemp1+cstack]
;read_matrix_keypad@mode stored from wreg
	movwf	(read_matrix_keypad@mode)
	line	132
	
l2023:	
;matrix_keypad.c: 127: unsigned char read_matrix_keypad(unsigned char mode);matrix_keypad.c: 128: {;matrix_keypad.c: 129:     static unsigned char once = 1;;matrix_keypad.c: 130:     unsigned char key;;matrix_keypad.c: 132:     key = scan_keypad();
	fcall	_scan_keypad
	movwf	(read_matrix_keypad@key)
	line	134
	
l2025:	
;matrix_keypad.c: 134:     if (mode == 0)
	movf	((read_matrix_keypad@mode)),w
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l2033
u1640:
	line	136
	
l2027:	
;matrix_keypad.c: 135:     {;matrix_keypad.c: 136:         return key;
	movf	(read_matrix_keypad@key),w
	goto	l182
	line	140
	
l2033:	
;matrix_keypad.c: 139:     {;matrix_keypad.c: 140:         if ((key != 0xFF) && once)
		incf	((read_matrix_keypad@key)),w
	btfsc	status,2
	goto	u1651
	goto	u1650
u1651:
	goto	l2045
u1650:
	
l2035:	
	movf	((read_matrix_keypad@once)),w
	btfsc	status,2
	goto	u1661
	goto	u1660
u1661:
	goto	l2045
u1660:
	line	142
	
l2037:	
;matrix_keypad.c: 141:         {;matrix_keypad.c: 142:             once = 0;
	clrf	(read_matrix_keypad@once)
	goto	l2027
	line	146
	
l2045:	
		incf	((read_matrix_keypad@key)),w
	btfss	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l2049
u1670:
	line	148
	
l2047:	
;matrix_keypad.c: 147:         {;matrix_keypad.c: 148:             once = 1;
	movlw	01h
	movwf	(read_matrix_keypad@once)
	line	152
	
l2049:	
;matrix_keypad.c: 152:     return 0xFF;
	movlw	low(0FFh)
	line	153
	
l182:	
	return
	callstack 0
GLOBAL	__end_of_read_matrix_keypad
	__end_of_read_matrix_keypad:
	signat	_read_matrix_keypad,4217
	global	_scan_keypad

;; *************** function _scan_keypad *****************
;; Defined at:
;;		line 25 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    5[COMMON] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, btemp1, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_alarm
;; This function is called by:
;;		_read_matrix_keypad
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	25
global __ptext8
__ptext8:	;psect for function _scan_keypad
psect	text8
	file	"matrix_keypad.c"
	line	25
	
_scan_keypad:	
;incstack = 0
	callstack 4
; Regs used in _scan_keypad: [wreg+status,2+status,0+pclath+btemp1+cstack]
	line	29
	
l1739:	
;matrix_keypad.c: 27:     int i;;matrix_keypad.c: 29:     RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	30
;matrix_keypad.c: 30:     RD2 = 1;
	bsf	(66/8),(66)&7	;volatile
	line	31
;matrix_keypad.c: 31:     RD1 = 1;
	bsf	(65/8),(65)&7	;volatile
	line	32
;matrix_keypad.c: 32:     RD0 = 1;
	bsf	(64/8),(64)&7	;volatile
	line	34
	
l1741:	
;matrix_keypad.c: 34:     for (i = 100; i--; );
	movlw	064h
	movwf	(scan_keypad@i)
	movlw	0
	movwf	((scan_keypad@i))+1
	
l1743:	
	movlw	0FFh
	addwf	(scan_keypad@i),f
	skipnc
	incf	(scan_keypad@i+1),f
	movlw	0FFh
	addwf	(scan_keypad@i+1),f
		incf	(((scan_keypad@i))),w
	skipz
	goto	u1121
	incf	(((scan_keypad@i+1))),w
	btfss	status,2
	goto	u1121
	goto	u1120
u1121:
	goto	l1743
u1120:
	
l149:	
	line	36
;matrix_keypad.c: 36:     if (RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7	;volatile
	goto	u1131
	goto	u1130
u1131:
	goto	l150
u1130:
	line	38
	
l1745:	
;matrix_keypad.c: 37:     {;matrix_keypad.c: 38:         alarm();
	fcall	_alarm
	line	39
	
l1747:	
;matrix_keypad.c: 39:         return 1;
	movlw	low(01h)
	goto	l151
	line	41
;matrix_keypad.c: 41:     else if (RB1 == 0)
	
l150:	
	btfsc	(49/8),(49)&7	;volatile
	goto	u1141
	goto	u1140
u1141:
	goto	l153
u1140:
	line	43
	
l1753:	
;matrix_keypad.c: 42:     {;matrix_keypad.c: 43:         alarm();
	fcall	_alarm
	line	44
	
l1755:	
;matrix_keypad.c: 44:         return 2;
	movlw	low(02h)
	goto	l151
	line	46
;matrix_keypad.c: 46:     else if (RB2 == 0)
	
l153:	
	btfsc	(50/8),(50)&7	;volatile
	goto	u1151
	goto	u1150
u1151:
	goto	l152
u1150:
	line	48
	
l1761:	
;matrix_keypad.c: 47:     {;matrix_keypad.c: 48:         alarm();
	fcall	_alarm
	line	49
	
l1763:	
;matrix_keypad.c: 49:         return 3;
	movlw	low(03h)
	goto	l151
	line	50
	
l152:	
	line	52
;matrix_keypad.c: 52:     RD3 = 1;
	bsf	(67/8),(67)&7	;volatile
	line	53
;matrix_keypad.c: 53:     RD2 = 0;
	bcf	(66/8),(66)&7	;volatile
	line	54
;matrix_keypad.c: 54:     RD1 = 1;
	bsf	(65/8),(65)&7	;volatile
	line	55
;matrix_keypad.c: 55:     RD0 = 1;
	bsf	(64/8),(64)&7	;volatile
	line	57
	
l1767:	
;matrix_keypad.c: 57:    for (i = 100; i > 0; i--)
	movlw	064h
	movwf	(scan_keypad@i)
	movlw	0
	movwf	((scan_keypad@i))+1
	line	60
	
l1773:	
;matrix_keypad.c: 58:    {;matrix_keypad.c: 60:    }
	movlw	0FFh
	addwf	(scan_keypad@i),f
	skipnc
	incf	(scan_keypad@i+1),f
	movlw	0FFh
	addwf	(scan_keypad@i+1),f
	
l1775:	
	movf	(scan_keypad@i+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u1165
	movlw	01h
	subwf	(scan_keypad@i),w
u1165:

	skipnc
	goto	u1161
	goto	u1160
u1161:
	goto	l1773
u1160:
	
l157:	
	line	62
;matrix_keypad.c: 62:     if (RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7	;volatile
	goto	u1171
	goto	u1170
u1171:
	goto	l158
u1170:
	line	64
	
l1777:	
;matrix_keypad.c: 63:     {;matrix_keypad.c: 64:         alarm();
	fcall	_alarm
	line	65
	
l1779:	
;matrix_keypad.c: 65:         return 4;
	movlw	low(04h)
	goto	l151
	line	67
;matrix_keypad.c: 67:     else if (RB1 == 0)
	
l158:	
	btfsc	(49/8),(49)&7	;volatile
	goto	u1181
	goto	u1180
u1181:
	goto	l160
u1180:
	line	69
	
l1785:	
;matrix_keypad.c: 68:     {;matrix_keypad.c: 69:         alarm();
	fcall	_alarm
	line	70
	
l1787:	
;matrix_keypad.c: 70:         return 5;
	movlw	low(05h)
	goto	l151
	line	72
;matrix_keypad.c: 72:     else if (RB2 == 0)
	
l160:	
	btfsc	(50/8),(50)&7	;volatile
	goto	u1191
	goto	u1190
u1191:
	goto	l159
u1190:
	line	74
	
l1793:	
;matrix_keypad.c: 73:     {;matrix_keypad.c: 74:         alarm();
	fcall	_alarm
	line	75
	
l1795:	
;matrix_keypad.c: 75:         return 6;
	movlw	low(06h)
	goto	l151
	line	76
	
l159:	
	line	78
;matrix_keypad.c: 78:     RD3 = 1;
	bsf	(67/8),(67)&7	;volatile
	line	79
;matrix_keypad.c: 79:     RD2 = 1;
	bsf	(66/8),(66)&7	;volatile
	line	80
;matrix_keypad.c: 80:     RD1 = 0;
	bcf	(65/8),(65)&7	;volatile
	line	81
;matrix_keypad.c: 81:     RD0 = 1;
	bsf	(64/8),(64)&7	;volatile
	line	83
	
l1799:	
;matrix_keypad.c: 83:     for (i = 100; i > 0; i--);
	movlw	064h
	movwf	(scan_keypad@i)
	movlw	0
	movwf	((scan_keypad@i))+1
	
l1805:	
	movlw	0FFh
	addwf	(scan_keypad@i),f
	skipnc
	incf	(scan_keypad@i+1),f
	movlw	0FFh
	addwf	(scan_keypad@i+1),f
	
l1807:	
	movf	(scan_keypad@i+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u1205
	movlw	01h
	subwf	(scan_keypad@i),w
u1205:

	skipnc
	goto	u1201
	goto	u1200
u1201:
	goto	l1805
u1200:
	
l164:	
	line	85
;matrix_keypad.c: 85:     if (RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7	;volatile
	goto	u1211
	goto	u1210
u1211:
	goto	l165
u1210:
	line	87
	
l1809:	
;matrix_keypad.c: 86:     {;matrix_keypad.c: 87:         alarm();
	fcall	_alarm
	line	88
	
l1811:	
;matrix_keypad.c: 88:         return 7;
	movlw	low(07h)
	goto	l151
	line	90
;matrix_keypad.c: 90:     else if (RB1 == 0)
	
l165:	
	btfsc	(49/8),(49)&7	;volatile
	goto	u1221
	goto	u1220
u1221:
	goto	l167
u1220:
	line	92
	
l1817:	
;matrix_keypad.c: 91:     {;matrix_keypad.c: 92:         alarm();
	fcall	_alarm
	line	93
	
l1819:	
;matrix_keypad.c: 93:         return 8;
	movlw	low(08h)
	goto	l151
	line	95
;matrix_keypad.c: 95:     else if (RB2 == 0)
	
l167:	
	btfsc	(50/8),(50)&7	;volatile
	goto	u1231
	goto	u1230
u1231:
	goto	l166
u1230:
	line	97
	
l1825:	
;matrix_keypad.c: 96:     {;matrix_keypad.c: 97:         alarm();
	fcall	_alarm
	line	98
	
l1827:	
;matrix_keypad.c: 98:         return 9;
	movlw	low(09h)
	goto	l151
	line	99
	
l166:	
	line	101
;matrix_keypad.c: 101:     RD3 = 1;
	bsf	(67/8),(67)&7	;volatile
	line	102
;matrix_keypad.c: 102:     RD2 = 1;
	bsf	(66/8),(66)&7	;volatile
	line	103
;matrix_keypad.c: 103:     RD1 = 1;
	bsf	(65/8),(65)&7	;volatile
	line	104
;matrix_keypad.c: 104:     RD0 = 0;
	bcf	(64/8),(64)&7	;volatile
	line	106
	
l1831:	
;matrix_keypad.c: 106:     for (i = 100; i > 0; i--);
	movlw	064h
	movwf	(scan_keypad@i)
	movlw	0
	movwf	((scan_keypad@i))+1
	
l1837:	
	movlw	0FFh
	addwf	(scan_keypad@i),f
	skipnc
	incf	(scan_keypad@i+1),f
	movlw	0FFh
	addwf	(scan_keypad@i+1),f
	
l1839:	
	movf	(scan_keypad@i+1),w
	xorlw	80h
	movwf	btemp1
	movlw	(0)^80h
	subwf	btemp1,w
	skipz
	goto	u1245
	movlw	01h
	subwf	(scan_keypad@i),w
u1245:

	skipnc
	goto	u1241
	goto	u1240
u1241:
	goto	l1837
u1240:
	
l171:	
	line	108
;matrix_keypad.c: 108:     if (RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7	;volatile
	goto	u1251
	goto	u1250
u1251:
	goto	l172
u1250:
	line	110
	
l1841:	
;matrix_keypad.c: 109:     {;matrix_keypad.c: 110:         alarm();
	fcall	_alarm
	line	111
	
l1843:	
;matrix_keypad.c: 111:         return '*';
	movlw	low(02Ah)
	goto	l151
	line	113
;matrix_keypad.c: 113:     else if (RB1 == 0)
	
l172:	
	btfsc	(49/8),(49)&7	;volatile
	goto	u1261
	goto	u1260
u1261:
	goto	l174
u1260:
	line	115
	
l1849:	
;matrix_keypad.c: 114:     {;matrix_keypad.c: 115:         alarm();
	fcall	_alarm
	line	116
	
l1851:	
;matrix_keypad.c: 116:         return 0;
	movlw	low(0)
	goto	l151
	line	118
;matrix_keypad.c: 118:     else if (RB2 == 0)
	
l174:	
	btfsc	(50/8),(50)&7	;volatile
	goto	u1271
	goto	u1270
u1271:
	goto	l1863
u1270:
	line	120
	
l1857:	
;matrix_keypad.c: 119:     {;matrix_keypad.c: 120:         alarm();
	fcall	_alarm
	line	121
	
l1859:	
;matrix_keypad.c: 121:         return '#';
	movlw	low(023h)
	goto	l151
	line	124
	
l1863:	
;matrix_keypad.c: 124:     return 0xFF;
	movlw	low(0FFh)
	line	125
	
l151:	
	return
	callstack 0
GLOBAL	__end_of_scan_keypad
	__end_of_scan_keypad:
	signat	_scan_keypad,89
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 17 in file "main.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_init_clcd
;;		_init_matrix_keypad
;;		_init_timer2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	17
global __ptext9
__ptext9:	;psect for function _init_config
psect	text9
	file	"main.c"
	line	17
	
_init_config:	
;incstack = 0
	callstack 3
; Regs used in _init_config: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l2011:	
;main.c: 18:     unsigned char reset_flag;
	fcall	_init_clcd
	line	19
;main.c: 19: 
	fcall	_init_matrix_keypad
	line	20
	
l2013:	
;main.c: 20:     while (1) {
	fcall	_init_timer2
	line	21
	
l2015:	
;main.c: 21: 
	bsf	(94/8),(94)&7	;volatile
	line	22
	
l2017:	
;main.c: 22:         key=read_matrix_keypad(1);
	bsf	(95/8),(95)&7	;volatile
	line	24
	
l2019:	
;main.c: 24:         {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7	;volatile
	line	25
	
l2021:	
;main.c: 25:             if(key==1)
	bcf	(1081/8)^080h,(1081)&7	;volatile
	line	27
	
l82:	
	return
	callstack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
	global	_init_timer2

;; *************** function _init_timer2 *****************
;; Defined at:
;;		line 4 in file "timers.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"timers.c"
	line	4
global __ptext10
__ptext10:	;psect for function _init_timer2
psect	text10
	file	"timers.c"
	line	4
	
_init_timer2:	
;incstack = 0
	callstack 5
; Regs used in _init_timer2: []
	line	11
	
l1737:	
;timers.c: 11:     PR2 = 250;
	movlw	0FAh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	14
;timers.c: 14:     TMR2IE = 1;
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	17
;timers.c: 17:     TMR2ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(146/8),(146)&7	;volatile
	line	18
	
l195:	
	return
	callstack 0
GLOBAL	__end_of_init_timer2
	__end_of_init_timer2:
	signat	_init_timer2,89
	global	_init_matrix_keypad

;; *************** function _init_matrix_keypad *****************
;; Defined at:
;;		line 5 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"matrix_keypad.c"
	line	5
global __ptext11
__ptext11:	;psect for function _init_matrix_keypad
psect	text11
	file	"matrix_keypad.c"
	line	5
	
_init_matrix_keypad:	
;incstack = 0
	callstack 5
; Regs used in _init_matrix_keypad: [wreg+status,2]
	line	9
	
l1725:	
;matrix_keypad.c: 9:     TRISB = TRISB | 0x07;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(134)^080h,w	;volatile
	iorlw	07h
	movwf	(134)^080h	;volatile
	line	13
;matrix_keypad.c: 13:     TRISD = TRISD & 0xF0;
	movf	(136)^080h,w	;volatile
	andlw	0F0h
	movwf	(136)^080h	;volatile
	line	16
	
l1727:	
;matrix_keypad.c: 16:     nRBPU = 0;
	bcf	(1039/8)^080h,(1039)&7	;volatile
	line	19
	
l1729:	
;matrix_keypad.c: 19:     RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	20
	
l1731:	
;matrix_keypad.c: 20:     RD2 = 1;
	bsf	(66/8),(66)&7	;volatile
	line	21
	
l1733:	
;matrix_keypad.c: 21:     RD1 = 1;
	bsf	(65/8),(65)&7	;volatile
	line	22
	
l1735:	
;matrix_keypad.c: 22:     RD0 = 1;
	bsf	(64/8),(64)&7	;volatile
	line	23
	
l144:	
	return
	callstack 0
GLOBAL	__end_of_init_matrix_keypad
	__end_of_init_matrix_keypad:
	signat	_init_matrix_keypad,89
	global	_init_clcd

;; *************** function _init_clcd *****************
;; Defined at:
;;		line 45 in file "clcd.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_init_display_controller
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"clcd.c"
	line	45
global __ptext12
__ptext12:	;psect for function _init_clcd
psect	text12
	file	"clcd.c"
	line	45
	
_init_clcd:	
;incstack = 0
	callstack 3
; Regs used in _init_clcd: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l1703:	
;clcd.c: 48:     TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	51
	
l1705:	
;clcd.c: 51:     TRISE2 = 0;
	bcf	(1098/8)^080h,(1098)&7	;volatile
	line	52
	
l1707:	
;clcd.c: 52:     TRISE1 = 0;
	bcf	(1097/8)^080h,(1097)&7	;volatile
	line	54
	
l1709:	
;clcd.c: 54:     init_display_controller();
	fcall	_init_display_controller
	line	55
	
l23:	
	return
	callstack 0
GLOBAL	__end_of_init_clcd
	__end_of_init_clcd:
	signat	_init_clcd,89
	global	_init_display_controller

;; *************** function _init_display_controller *****************
;; Defined at:
;;		line 22 in file "clcd.c"
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_init_clcd
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	22
global __ptext13
__ptext13:	;psect for function _init_display_controller
psect	text13
	file	"clcd.c"
	line	22
	
_init_display_controller:	
;incstack = 0
	callstack 3
; Regs used in _init_display_controller: [wreg+status,2+status,0+pclath+cstack]
	line	25
	
l1673:	
;clcd.c: 25:     _delay((unsigned long)((30)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw	195
movwf	((??_init_display_controller)+1)
	movlw	205
movwf	((??_init_display_controller))
	u2937:
decfsz	((??_init_display_controller)),f
	goto	u2937
	decfsz	((??_init_display_controller)+1),f
	goto	u2937
asmopt pop

	line	28
	
l1675:	
;clcd.c: 28:     clcd_write(0x03, 0);
	clrf	(clcd_write@mode)
	movlw	low(03h)
	fcall	_clcd_write
	line	29
	
l1677:	
;clcd.c: 29:     _delay((unsigned long)((4100)*(20000000/4000000.0)));
	asmopt push
asmopt off
movlw	27
movwf	((??_init_display_controller)+1)
	movlw	158
movwf	((??_init_display_controller))
	u2947:
decfsz	((??_init_display_controller)),f
	goto	u2947
	decfsz	((??_init_display_controller)+1),f
	goto	u2947
	nop
asmopt pop

	line	30
;clcd.c: 30:     clcd_write(0x03, 0);
	clrf	(clcd_write@mode)
	movlw	low(03h)
	fcall	_clcd_write
	line	31
	
l1679:	
;clcd.c: 31:     _delay((unsigned long)((100)*(20000000/4000000.0)));
	asmopt push
asmopt off
	movlw	166
movwf	((??_init_display_controller))
	u2957:
decfsz	(??_init_display_controller),f
	goto	u2957
	nop
asmopt pop

	line	32
	
l1681:	
;clcd.c: 32:     clcd_write(0x03, 0);
	clrf	(clcd_write@mode)
	movlw	low(03h)
	fcall	_clcd_write
	line	33
	
l1683:	
;clcd.c: 33:     _delay((unsigned long)((1)*(20000000/4000000.0)));
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop
	asmopt pop

	line	35
	
l1685:	
;clcd.c: 35:     clcd_write(0x02, 0);
	clrf	(clcd_write@mode)
	movlw	low(02h)
	fcall	_clcd_write
	line	36
	
l1687:	
;clcd.c: 36:     _delay((unsigned long)((100)*(20000000/4000000.0)));
	asmopt push
asmopt off
	movlw	166
movwf	((??_init_display_controller))
	u2967:
decfsz	(??_init_display_controller),f
	goto	u2967
	nop
asmopt pop

	line	37
;clcd.c: 37:     clcd_write(0x28, 0);
	clrf	(clcd_write@mode)
	movlw	low(028h)
	fcall	_clcd_write
	line	38
	
l1689:	
;clcd.c: 38:     _delay((unsigned long)((100)*(20000000/4000000.0)));
	asmopt push
asmopt off
	movlw	166
movwf	((??_init_display_controller))
	u2977:
decfsz	(??_init_display_controller),f
	goto	u2977
	nop
asmopt pop

	line	39
	
l1691:	
;clcd.c: 39:     clcd_write(0x01, 0);
	clrf	(clcd_write@mode)
	movlw	low(01h)
	fcall	_clcd_write
	line	40
;clcd.c: 40:     _delay((unsigned long)((500)*(20000000/4000000.0)));
	asmopt push
asmopt off
movlw	4
movwf	((??_init_display_controller)+1)
	movlw	61
movwf	((??_init_display_controller))
	u2987:
decfsz	((??_init_display_controller)),f
	goto	u2987
	decfsz	((??_init_display_controller)+1),f
	goto	u2987
	nop2
asmopt pop

	line	41
	
l1693:	
;clcd.c: 41:     clcd_write(0x0C, 0);
	clrf	(clcd_write@mode)
	movlw	low(0Ch)
	fcall	_clcd_write
	line	42
	
l1695:	
;clcd.c: 42:     _delay((unsigned long)((100)*(20000000/4000000.0)));
	asmopt push
asmopt off
	movlw	166
movwf	((??_init_display_controller))
	u2997:
decfsz	(??_init_display_controller),f
	goto	u2997
	nop
asmopt pop

	line	43
	
l20:	
	return
	callstack 0
GLOBAL	__end_of_init_display_controller
	__end_of_init_display_controller:
	signat	_init_display_controller,89
	global	_heat_food

;; *************** function _heat_food *****************
;; Defined at:
;;		line 285 in file "micro_oven.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	file	"micro_oven.c"
	line	285
global __ptext14
__ptext14:	;psect for function _heat_food
psect	text14
	file	"micro_oven.c"
	line	285
	
_heat_food:	
;incstack = 0
	callstack 6
; Regs used in _heat_food: [status,2]
	line	287
	
l2337:	
;micro_oven.c: 287:     sec=30;
	movlw	01Eh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_sec)
	line	288
	
l2339:	
;micro_oven.c: 288:     minn=0;
	clrf	(_minn)
	line	290
	
l2341:	
;micro_oven.c: 290:     TMR2ON=1;
	bsf	(146/8),(146)&7	;volatile
	line	291
	
l2343:	
;micro_oven.c: 291:     RC2=1;
	bsf	(58/8),(58)&7	;volatile
	line	292
	
l2345:	
;micro_oven.c: 292:     screen_flag=0x70;
	movlw	070h
	movwf	(_screen_flag)
	line	295
	
l295:	
	return
	callstack 0
GLOBAL	__end_of_heat_food
	__end_of_heat_food:
	signat	_heat_food,89
	global	_display_time

;; *************** function _display_time *****************
;; Defined at:
;;		line 255 in file "micro_oven.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, btemp1, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_clcd_print
;;		_clcd_putch
;;		_clear_screen
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	255
global __ptext15
__ptext15:	;psect for function _display_time
psect	text15
	file	"micro_oven.c"
	line	255
	
_display_time:	
;incstack = 0
	callstack 5
; Regs used in _display_time: [wreg-fsr0h+status,2+status,0+pclath+btemp1+cstack]
	line	257
	
l2641:	
;micro_oven.c: 257:     clcd_print("TIME =",(0x80 + 1));
	movlw	low(((STR_21)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_21)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(081h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	258
	
l2643:	
;micro_oven.c: 258:     clcd_putch(minn/10+'0',(0x80 + 9));
	movlw	low(089h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(_minn),w
	movwf	(??_display_time)
	clrf	(??_display_time+1)
	movf	(0+(??_display_time)),w
	movwf	(___awdiv@dividend)
	movf	(1+(??_display_time)),w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_clcd_putch
	line	259
	
l2645:	
;micro_oven.c: 259:     clcd_putch(minn%10+'0',(0x80 + 10));
	movlw	low(08Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(_minn),w
	movwf	(??_display_time)
	clrf	(??_display_time+1)
	movf	(0+(??_display_time)),w
	movwf	(___awmod@dividend)
	movf	(1+(??_display_time)),w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_clcd_putch
	line	260
	
l2647:	
;micro_oven.c: 260:     clcd_putch(':',(0x80 + 11));
	movlw	low(08Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	low(03Ah)
	fcall	_clcd_putch
	line	261
	
l2649:	
;micro_oven.c: 261:     clcd_putch(sec/10+'0',(0x80 + 12));
	movlw	low(08Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(_sec),w
	movwf	(??_display_time)
	clrf	(??_display_time+1)
	movf	(0+(??_display_time)),w
	movwf	(___awdiv@dividend)
	movf	(1+(??_display_time)),w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_clcd_putch
	line	262
	
l2651:	
;micro_oven.c: 262:     clcd_putch(sec%10+'0',(0x80 + 13));
	movlw	low(08Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@addr)
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(_sec),w
	movwf	(??_display_time)
	clrf	(??_display_time+1)
	movf	(0+(??_display_time)),w
	movwf	(___awmod@dividend)
	movf	(1+(??_display_time)),w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_clcd_putch
	line	263
	
l2653:	
;micro_oven.c: 263:     clcd_print("4.START/RESUME",(0xC0 + 1));
	movlw	low(((STR_22)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_22)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0C1h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	264
	
l2655:	
;micro_oven.c: 264:     clcd_print("5.PAUSE",(0x90 + 1));
	movlw	low(((STR_23)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_23)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(091h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	265
	
l2657:	
;micro_oven.c: 265:     clcd_print("6.STOP",(0xD0 + 1));
	movlw	low(((STR_24)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_24)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0D1h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	267
	
l2659:	
;micro_oven.c: 267:     if(minn==0 && sec==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_minn)),w
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l292
u2630:
	
l2661:	
	movf	((_sec)),w
	btfss	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l292
u2640:
	line	269
	
l2663:	
;micro_oven.c: 268:     {;micro_oven.c: 269:         clear_screen();
	fcall	_clear_screen
	line	270
	
l2665:	
;micro_oven.c: 270:         TMR2ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(146/8),(146)&7	;volatile
	line	271
	
l2667:	
;micro_oven.c: 271:         RC2=0;
	bcf	(58/8),(58)&7	;volatile
	line	272
	
l2669:	
;micro_oven.c: 272:         clcd_print("TIME UP",(0xC0 + 4));
	movlw	low(((STR_25)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_25)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0C4h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	273
	
l2671:	
;micro_oven.c: 273:         clcd_print("Enjoy Your Meal!",(0x90 + 0));
	movlw	low(((STR_26)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_26)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(090h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	274
	
l2673:	
;micro_oven.c: 274:         RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7	;volatile
	line	275
	
l2675:	
;micro_oven.c: 275:         _delay((unsigned long)((3000)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  77
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_display_time)+2)
movlw	25
movwf	((??_display_time)+1)
	movlw	79
movwf	((??_display_time))
	u3007:
decfsz	((??_display_time)),f
	goto	u3007
	decfsz	((??_display_time)+1),f
	goto	u3007
	decfsz	((??_display_time)+2),f
	goto	u3007
asmopt pop

	line	276
	
l2677:	
;micro_oven.c: 276:         RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	277
	
l2679:	
;micro_oven.c: 277:         _delay((unsigned long)((3000)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  77
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_display_time)+2)
movlw	25
movwf	((??_display_time)+1)
	movlw	79
movwf	((??_display_time))
	u3017:
decfsz	((??_display_time)),f
	goto	u3017
	decfsz	((??_display_time)+1),f
	goto	u3017
	decfsz	((??_display_time)+2),f
	goto	u3017
asmopt pop

	line	278
	
l2681:	
;micro_oven.c: 278:         _delay((unsigned long)((1000)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_display_time)+2)
movlw	94
movwf	((??_display_time)+1)
	movlw	109
movwf	((??_display_time))
	u3027:
decfsz	((??_display_time)),f
	goto	u3027
	decfsz	((??_display_time)+1),f
	goto	u3027
	decfsz	((??_display_time)+2),f
	goto	u3027
	nop2
asmopt pop

	line	279
	
l2683:	
;micro_oven.c: 279:         clear_screen();
	fcall	_clear_screen
	line	280
	
l2685:	
;micro_oven.c: 280:         screen_flag=0x20;
	movlw	020h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_screen_flag)
	line	283
	
l292:	
	return
	callstack 0
GLOBAL	__end_of_display_time
	__end_of_display_time:
	signat	_display_time,89
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[BANK0 ] int 
;;  dividend        2    6[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    7[COMMON] unsigned char 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_set_temp
;;		_set_time
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\awmod.c"
	line	5
global __ptext16
__ptext16:	;psect for function ___awmod
psect	text16
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\awmod.c"
	line	5
	
___awmod:	
;incstack = 0
	callstack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	12
	
l2511:	
	clrf	(___awmod@sign)
	line	13
	
l2513:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___awmod@dividend+1),7
	goto	u2331
	goto	u2330
u2331:
	goto	l2519
u2330:
	line	14
	
l2515:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	15
	
l2517:	
	movlw	01h
	movwf	(___awmod@sign)
	line	17
	
l2519:	
	btfss	(___awmod@divisor+1),7
	goto	u2341
	goto	u2340
u2341:
	goto	l2523
u2340:
	line	18
	
l2521:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	19
	
l2523:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l2541
u2350:
	line	20
	
l2525:	
	movlw	01h
	movwf	(___awmod@counter)
	line	21
	goto	l2531
	line	22
	
l2527:	
	movlw	01h
	
u2365:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2365
	line	23
	
l2529:	
	movlw	low(01h)
	addwf	(___awmod@counter),f
	line	21
	
l2531:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l2527
u2370:
	line	26
	
l2533:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2385
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2385:
	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l2537
u2380:
	line	27
	
l2535:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	28
	
l2537:	
	movlw	01h
	
u2395:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2395
	line	29
	
l2539:	
	movlw	01h
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l2533
u2400:
	line	31
	
l2541:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l2545
u2410:
	line	32
	
l2543:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	33
	
l2545:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	34
	
l571:	
	return
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] int 
;;  dividend        2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       4       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_set_temp
;;		_set_time
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\awdiv.c"
	line	5
global __ptext17
__ptext17:	;psect for function ___awdiv
psect	text17
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\awdiv.c"
	line	5
	
___awdiv:	
;incstack = 0
	callstack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	13
	
l2467:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	14
	
l2469:	
	btfss	(___awdiv@divisor+1),7
	goto	u2231
	goto	u2230
u2231:
	goto	l2475
u2230:
	line	15
	
l2471:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	16
	
l2473:	
	movlw	01h
	movwf	(___awdiv@sign)
	line	18
	
l2475:	
	btfss	(___awdiv@dividend+1),7
	goto	u2241
	goto	u2240
u2241:
	goto	l2481
u2240:
	line	19
	
l2477:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	20
	
l2479:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	22
	
l2481:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	23
	
l2483:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l2503
u2250:
	line	24
	
l2485:	
	movlw	01h
	movwf	(___awdiv@counter)
	line	25
	goto	l2491
	line	26
	
l2487:	
	movlw	01h
	
u2265:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2265
	line	27
	
l2489:	
	movlw	low(01h)
	addwf	(___awdiv@counter),f
	line	25
	
l2491:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l2487
u2270:
	line	30
	
l2493:	
	movlw	01h
	
u2285:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2285
	line	31
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2295
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2295:
	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l2499
u2290:
	line	32
	
l2495:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	33
	
l2497:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	35
	
l2499:	
	movlw	01h
	
u2305:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2305
	line	36
	
l2501:	
	movlw	01h
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2311
	goto	u2310
u2311:
	goto	l2493
u2310:
	line	38
	
l2503:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l2507
u2320:
	line	39
	
l2505:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	40
	
l2507:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	41
	
l558:	
	return
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_display_power_screen

;; *************** function _display_power_screen *****************
;; Defined at:
;;		line 18 in file "micro_oven.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   17[BANK0 ] unsigned char 
;;  i               1   16[BANK0 ] unsigned char 
;;  i               1   15[BANK0 ] unsigned char 
;;  i               1   14[BANK0 ] unsigned char 
;;  i               1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, btemp1, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_alarm
;;		_clcd_print
;;		_clcd_putch
;;		_clear_screen
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"micro_oven.c"
	line	18
global __ptext18
__ptext18:	;psect for function _display_power_screen
psect	text18
	file	"micro_oven.c"
	line	18
	
_display_power_screen:	
;incstack = 0
	callstack 4
; Regs used in _display_power_screen: [wreg-fsr0h+status,2+status,0+pclath+btemp1+cstack]
	line	21
	
l2053:	
;micro_oven.c: 21:     for(unsigned char i=0; i<16;i++){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(display_power_screen@i)
	line	22
	
l2059:	
;micro_oven.c: 22:         clcd_putch(0xFF,(0x80 + i));
	movf	(display_power_screen@i),w
	addlw	080h
	movwf	(clcd_putch@addr)
	movlw	low(0FFh)
	fcall	_clcd_putch
	line	23
	
l2061:	
;micro_oven.c: 23:         _delay((unsigned long)((100)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_display_power_screen)+2)
movlw	138
movwf	((??_display_power_screen)+1)
	movlw	85
movwf	((??_display_power_screen))
	u3037:
decfsz	((??_display_power_screen)),f
	goto	u3037
	decfsz	((??_display_power_screen)+1),f
	goto	u3037
	decfsz	((??_display_power_screen)+2),f
	goto	u3037
asmopt pop

	line	24
	
l2063:	
;micro_oven.c: 24:     }
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(display_power_screen@i),f
	
l2065:	
	movlw	low(010h)
	subwf	(display_power_screen@i),w
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l2059
u1680:
	line	26
	
l2067:	
;micro_oven.c: 26:     clcd_print("Powering ON", (0xC0 + 3));
	movlw	low(((STR_2)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_2)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0C3h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	28
;micro_oven.c: 28:     clcd_print("Microwave Oven", (0x90 + 1));
	movlw	low(((STR_3)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_3)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(091h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	31
	
l2069:	
;micro_oven.c: 31:     for(unsigned char i=0; i<16;i++){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(display_power_screen@i_161)
	line	32
	
l2075:	
;micro_oven.c: 32:         clcd_putch(0xFF,(0xD0 + i));
	movf	(display_power_screen@i_161),w
	addlw	0D0h
	movwf	(clcd_putch@addr)
	movlw	low(0FFh)
	fcall	_clcd_putch
	line	33
	
l2077:	
;micro_oven.c: 33:         _delay((unsigned long)((100)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_display_power_screen)+2)
movlw	138
movwf	((??_display_power_screen)+1)
	movlw	85
movwf	((??_display_power_screen))
	u3047:
decfsz	((??_display_power_screen)),f
	goto	u3047
	decfsz	((??_display_power_screen)+1),f
	goto	u3047
	decfsz	((??_display_power_screen)+2),f
	goto	u3047
asmopt pop

	line	34
	
l2079:	
;micro_oven.c: 34:     }
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(display_power_screen@i_161),f
	
l2081:	
	movlw	low(010h)
	subwf	(display_power_screen@i_161),w
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l2075
u1690:
	line	35
	
l2083:	
;micro_oven.c: 35:     alarm();
	fcall	_alarm
	line	36
	
l2085:	
;micro_oven.c: 36:     _delay((unsigned long)((2000)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  51
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_display_power_screen)+2)
movlw	187
movwf	((??_display_power_screen)+1)
	movlw	223
movwf	((??_display_power_screen))
	u3057:
decfsz	((??_display_power_screen)),f
	goto	u3057
	decfsz	((??_display_power_screen)+1),f
	goto	u3057
	decfsz	((??_display_power_screen)+2),f
	goto	u3057
asmopt pop

	line	37
	
l2087:	
;micro_oven.c: 37:     clear_screen();
	fcall	_clear_screen
	line	39
	
l2089:	
;micro_oven.c: 39:     for(unsigned char i=0; i<16;i++){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(display_power_screen@i_162)
	line	40
	
l2095:	
;micro_oven.c: 40:         clcd_putch(0xFF,(0x80 + i));
	movf	(display_power_screen@i_162),w
	addlw	080h
	movwf	(clcd_putch@addr)
	movlw	low(0FFh)
	fcall	_clcd_putch
	line	41
	
l2097:	
;micro_oven.c: 41:         _delay((unsigned long)((100)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_display_power_screen)+2)
movlw	138
movwf	((??_display_power_screen)+1)
	movlw	85
movwf	((??_display_power_screen))
	u3067:
decfsz	((??_display_power_screen)),f
	goto	u3067
	decfsz	((??_display_power_screen)+1),f
	goto	u3067
	decfsz	((??_display_power_screen)+2),f
	goto	u3067
asmopt pop

	line	42
	
l2099:	
;micro_oven.c: 42:     }
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(display_power_screen@i_162),f
	
l2101:	
	movlw	low(010h)
	subwf	(display_power_screen@i_162),w
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l2095
u1700:
	line	44
	
l2103:	
;micro_oven.c: 44:     clcd_print("Developed By", (0xC0 + 2));
	movlw	low(((STR_4)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_4)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0C2h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	46
;micro_oven.c: 46:     clcd_print("KARTHIK S", (0x90 + 4));
	movlw	low(((STR_5)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_5)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(094h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	47
	
l2105:	
;micro_oven.c: 47:     for(unsigned char i=0; i<16;i++){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(display_power_screen@i_165)
	line	48
	
l2111:	
;micro_oven.c: 48:         clcd_putch(0xFF,(0xD0 + i));
	movf	(display_power_screen@i_165),w
	addlw	0D0h
	movwf	(clcd_putch@addr)
	movlw	low(0FFh)
	fcall	_clcd_putch
	line	49
	
l2113:	
;micro_oven.c: 49:         _delay((unsigned long)((100)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_display_power_screen)+2)
movlw	138
movwf	((??_display_power_screen)+1)
	movlw	85
movwf	((??_display_power_screen))
	u3077:
decfsz	((??_display_power_screen)),f
	goto	u3077
	decfsz	((??_display_power_screen)+1),f
	goto	u3077
	decfsz	((??_display_power_screen)+2),f
	goto	u3077
asmopt pop

	line	50
	
l2115:	
;micro_oven.c: 50:     }
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(display_power_screen@i_165),f
	
l2117:	
	movlw	low(010h)
	subwf	(display_power_screen@i_165),w
	skipc
	goto	u1711
	goto	u1710
u1711:
	goto	l2111
u1710:
	line	51
	
l2119:	
;micro_oven.c: 51:     alarm();
	fcall	_alarm
	line	52
	
l2121:	
;micro_oven.c: 52:     _delay((unsigned long)((3000)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  77
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_display_power_screen)+2)
movlw	25
movwf	((??_display_power_screen)+1)
	movlw	79
movwf	((??_display_power_screen))
	u3087:
decfsz	((??_display_power_screen)),f
	goto	u3087
	decfsz	((??_display_power_screen)+1),f
	goto	u3087
	decfsz	((??_display_power_screen)+2),f
	goto	u3087
asmopt pop

	line	53
	
l2123:	
;micro_oven.c: 53:     clear_screen();
	fcall	_clear_screen
	line	54
	
l2125:	
;micro_oven.c: 54:     for(unsigned char i=0; i<16;i++){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(display_power_screen@i_166)
	line	55
	
l2131:	
;micro_oven.c: 55:         clcd_putch(0xFF,(0x80 + i));
	movf	(display_power_screen@i_166),w
	addlw	080h
	movwf	(clcd_putch@addr)
	movlw	low(0FFh)
	fcall	_clcd_putch
	line	56
	
l2133:	
;micro_oven.c: 56:         _delay((unsigned long)((100)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_display_power_screen)+2)
movlw	138
movwf	((??_display_power_screen)+1)
	movlw	85
movwf	((??_display_power_screen))
	u3097:
decfsz	((??_display_power_screen)),f
	goto	u3097
	decfsz	((??_display_power_screen)+1),f
	goto	u3097
	decfsz	((??_display_power_screen)+2),f
	goto	u3097
asmopt pop

	line	57
	
l2135:	
;micro_oven.c: 57:     }
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(display_power_screen@i_166),f
	
l2137:	
	movlw	low(010h)
	subwf	(display_power_screen@i_166),w
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l2131
u1720:
	line	59
	
l2139:	
;micro_oven.c: 59:     clcd_print("EMERTXE", (0xC0 + 5));
	movlw	low(((STR_6)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_6)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0C5h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	61
;micro_oven.c: 61:     clcd_print("Embedded System", (0x90 + 1));
	movlw	low(((STR_7)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_7)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(091h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	62
;micro_oven.c: 62:     clcd_print("Internship", (0xD0 + 2));
	movlw	low(((STR_8)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_8)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0D2h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	63
	
l2141:	
;micro_oven.c: 63:     alarm();
	fcall	_alarm
	line	64
	
l2143:	
;micro_oven.c: 64:     _delay((unsigned long)((3000)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  77
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_display_power_screen)+2)
movlw	25
movwf	((??_display_power_screen)+1)
	movlw	79
movwf	((??_display_power_screen))
	u3107:
decfsz	((??_display_power_screen)),f
	goto	u3107
	decfsz	((??_display_power_screen)+1),f
	goto	u3107
	decfsz	((??_display_power_screen)+2),f
	goto	u3107
asmopt pop

	line	65
	
l2145:	
;micro_oven.c: 65:     clear_screen();
	fcall	_clear_screen
	line	66
	
l234:	
	return
	callstack 0
GLOBAL	__end_of_display_power_screen
	__end_of_display_power_screen:
	signat	_display_power_screen,89
	global	_clear_screen

;; *************** function _clear_screen *****************
;; Defined at:
;;		line 74 in file "clcd.c"
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
;;		_clcd_write
;; This function is called by:
;;		_main
;;		_display_power_screen
;;		_set_time
;;		_set_temp
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"clcd.c"
	line	74
global __ptext19
__ptext19:	;psect for function _clear_screen
psect	text19
	file	"clcd.c"
	line	74
	
_clear_screen:	
;incstack = 0
	callstack 5
; Regs used in _clear_screen: [wreg+status,2+status,0+pclath+cstack]
	line	75
	
l1721:	
;clcd.c: 75:     clcd_write(0x01, 0);
	clrf	(clcd_write@mode)
	movlw	low(01h)
	fcall	_clcd_write
	line	76
	
l1723:	
;clcd.c: 76:     _delay((unsigned long)((500)*(20000000/4000000.0)));
	asmopt push
asmopt off
movlw	4
movwf	((??_clear_screen)+1)
	movlw	61
movwf	((??_clear_screen))
	u3117:
decfsz	((??_clear_screen)),f
	goto	u3117
	decfsz	((??_clear_screen)+1),f
	goto	u3117
	nop2
asmopt pop

	line	77
	
l35:	
	return
	callstack 0
GLOBAL	__end_of_clear_screen
	__end_of_clear_screen:
	signat	_clear_screen,89
	global	_clcd_putch

;; *************** function _clcd_putch *****************
;; Defined at:
;;		line 57 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     const unsigned char 
;;  addr            1    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    9[BANK0 ] const unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_display_power_screen
;;		_set_time
;;		_set_temp
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	57
global __ptext20
__ptext20:	;psect for function _clcd_putch
psect	text20
	file	"clcd.c"
	line	57
	
_clcd_putch:	
;incstack = 0
	callstack 5
; Regs used in _clcd_putch: [wreg+status,2+status,0+pclath+cstack]
;clcd_putch@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clcd_putch@data)
	line	59
	
l1711:	
;clcd.c: 57: void clcd_putch(const char data, unsigned char addr);clcd.c: 58: {;clcd.c: 59:     clcd_write(addr, 0);
	clrf	(clcd_write@mode)
	movf	(clcd_putch@addr),w
	fcall	_clcd_write
	line	60
;clcd.c: 60:     clcd_write(data, 1);
	clrf	(clcd_write@mode)
	incf	(clcd_write@mode),f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(clcd_putch@data),w
	fcall	_clcd_write
	line	61
	
l26:	
	return
	callstack 0
GLOBAL	__end_of_clcd_putch
	__end_of_clcd_putch:
	signat	_clcd_putch,8313
	global	_alarm

;; *************** function _alarm *****************
;; Defined at:
;;		line 296 in file "micro_oven.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scan_keypad
;;		_display_power_screen
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"micro_oven.c"
	line	296
global __ptext21
__ptext21:	;psect for function _alarm
psect	text21
	file	"micro_oven.c"
	line	296
	
_alarm:	
;incstack = 0
	callstack 4
; Regs used in _alarm: [wreg]
	line	299
	
l1697:	
;micro_oven.c: 299:         RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7	;volatile
	line	300
	
l1699:	
;micro_oven.c: 300:         _delay((unsigned long)((100)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  3
movwf	((??_alarm)+2)
movlw	138
movwf	((??_alarm)+1)
	movlw	85
movwf	((??_alarm))
	u3127:
decfsz	((??_alarm)),f
	goto	u3127
	decfsz	((??_alarm)+1),f
	goto	u3127
	decfsz	((??_alarm)+2),f
	goto	u3127
	nop2
asmopt pop

	line	301
	
l1701:	
;micro_oven.c: 301:         RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	302
;micro_oven.c: 302:         _delay((unsigned long)((100)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  3
movwf	((??_alarm)+2)
movlw	138
movwf	((??_alarm)+1)
	movlw	85
movwf	((??_alarm))
	u3137:
decfsz	((??_alarm)),f
	goto	u3137
	decfsz	((??_alarm)+1),f
	goto	u3137
	decfsz	((??_alarm)+2),f
	goto	u3137
	nop2
asmopt pop

	line	304
	
l298:	
	return
	callstack 0
GLOBAL	__end_of_alarm
	__end_of_alarm:
	signat	_alarm,89
	global	_display_modes

;; *************** function _display_modes *****************
;; Defined at:
;;		line 67 in file "micro_oven.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, btemp1, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	67
global __ptext22
__ptext22:	;psect for function _display_modes
psect	text22
	file	"micro_oven.c"
	line	67
	
_display_modes:	
;incstack = 0
	callstack 5
; Regs used in _display_modes: [wreg-fsr0h+status,2+status,0+pclath+btemp1+cstack]
	line	69
	
l2147:	
;micro_oven.c: 69:     clcd_print("1.Micro", (0x80 + 3));
	movlw	low(((STR_9)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_9)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(083h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	70
;micro_oven.c: 70:     clcd_print("2.Grill", (0xC0 + 3));
	movlw	low(((STR_10)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_10)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0C3h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	71
;micro_oven.c: 71:     clcd_print("3.Convection", (0x90 + 3));
	movlw	low(((STR_11)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_11)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(093h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	72
;micro_oven.c: 72:     clcd_print("4.Start", (0xD0 + 3));
	movlw	low(((STR_12)|8000h))
	movwf	(clcd_print@str)
	movlw	high(((STR_12)|8000h))
	movwf	((clcd_print@str))+1
	movlw	low(0D3h)
	movwf	(clcd_print@addr)
	fcall	_clcd_print
	line	74
	
l237:	
	return
	callstack 0
GLOBAL	__end_of_display_modes
	__end_of_display_modes:
	signat	_display_modes,89
	global	_clcd_print

;; *************** function _clcd_print *****************
;; Defined at:
;;		line 63 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  str             2    6[COMMON] PTR const unsigned char 
;;		 -> STR_26(17), STR_25(8), STR_24(7), STR_23(8), 
;;		 -> STR_22(15), STR_21(7), STR_20(11), STR_19(13), 
;;		 -> STR_18(16), STR_17(6), STR_16(14), STR_15(16), 
;;		 -> STR_14(6), STR_13(17), STR_12(8), STR_11(13), 
;;		 -> STR_10(8), STR_9(8), STR_8(11), STR_7(16), 
;;		 -> STR_6(8), STR_5(10), STR_4(13), STR_3(15), 
;;		 -> STR_2(12), STR_1(13), 
;;  addr            1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, btemp1, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_main
;;		_display_power_screen
;;		_display_modes
;;		_set_time
;;		_set_temp
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"clcd.c"
	line	63
global __ptext23
__ptext23:	;psect for function _clcd_print
psect	text23
	file	"clcd.c"
	line	63
	
_clcd_print:	
;incstack = 0
	callstack 5
; Regs used in _clcd_print: [wreg-fsr0h+status,2+status,0+pclath+btemp1+cstack]
	line	65
	
l1713:	
;clcd.c: 63: void clcd_print(const char *str, unsigned char addr);clcd.c: 64: {;clcd.c: 65:     clcd_write(addr, 0);
	clrf	(clcd_write@mode)
	movf	(clcd_print@addr),w
	fcall	_clcd_write
	line	67
;clcd.c: 67:     while (*str != '\0')
	goto	l1719
	line	69
	
l1715:	
;clcd.c: 68:     {;clcd.c: 69:         clcd_write(*str, 1);
	clrf	(clcd_write@mode)
	incf	(clcd_write@mode),f
	movf	(clcd_print@str+1),w
	movwf	btemp1
	movf	(clcd_print@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_clcd_write
	line	70
	
l1717:	
;clcd.c: 70:         str++;
	movlw	01h
	addwf	(clcd_print@str),f
	skipnc
	incf	(clcd_print@str+1),f
	movlw	0
	addwf	(clcd_print@str+1),f
	line	67
	
l1719:	
;clcd.c: 67:     while (*str != '\0')
	movf	(clcd_print@str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp1
	movf	(clcd_print@str),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u1111
	goto	u1110
u1111:
	goto	l1715
u1110:
	line	72
	
l32:	
	return
	callstack 0
GLOBAL	__end_of_clcd_print
	__end_of_clcd_print:
	signat	_clcd_print,8313
	global	_clcd_write

;; *************** function _clcd_write *****************
;; Defined at:
;;		line 4 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;;  mode            1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_display_controller
;;		_clcd_putch
;;		_clcd_print
;;		_clear_screen
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	4
global __ptext24
__ptext24:	;psect for function _clcd_write
psect	text24
	file	"clcd.c"
	line	4
	
_clcd_write:	
;incstack = 0
	callstack 3
; Regs used in _clcd_write: [wreg+status,2+status,0]
;clcd_write@byte stored from wreg
	movwf	(clcd_write@byte)
	line	6
	
l1653:	
;clcd.c: 4: static void clcd_write(unsigned char byte, unsigned char mode);clcd.c: 5: {;clcd.c: 6:     RE2 = (__bit)mode;
	btfsc	(clcd_write@mode),0
	goto	u1081
	goto	u1080
	
u1081:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7	;volatile
	goto	u1094
u1080:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7	;volatile
u1094:
	line	8
	
l1655:	
;clcd.c: 8:     PORTD = byte & 0xF0;
	movf	(clcd_write@byte),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	10
	
l1657:	
;clcd.c: 10:     RE1 = 1;
	bsf	(73/8),(73)&7	;volatile
	line	11
	
l1659:	
;clcd.c: 11:     _delay((unsigned long)((100)*(20000000/4000000.0)));
	asmopt push
asmopt off
	movlw	166
movwf	((??_clcd_write))
	u3147:
decfsz	(??_clcd_write),f
	goto	u3147
	nop
asmopt pop

	line	12
	
l1661:	
;clcd.c: 12:     RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7	;volatile
	line	14
	
l1663:	
;clcd.c: 14:     PORTD = (unsigned char)((byte & 0x0F) << 4);
	movf	(clcd_write@byte),w
	andlw	0Fh
	movwf	(??_clcd_write)
	movlw	(04h)-1
u1105:
	clrc
	rlf	(??_clcd_write),f
	addlw	-1
	skipz
	goto	u1105
	clrc
	rlf	(??_clcd_write),w
	movwf	(8)	;volatile
	line	15
	
l1665:	
;clcd.c: 15:     RE1 = 1;
	bsf	(73/8),(73)&7	;volatile
	line	16
	
l1667:	
;clcd.c: 16:     _delay((unsigned long)((100)*(20000000/4000000.0)));
	asmopt push
asmopt off
	movlw	166
movwf	((??_clcd_write))
	u3157:
decfsz	(??_clcd_write),f
	goto	u3157
	nop
asmopt pop

	line	17
	
l1669:	
;clcd.c: 17:     RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7	;volatile
	line	19
	
l1671:	
;clcd.c: 19:     _delay((unsigned long)((4100)*(20000000/4000000.0)));
	asmopt push
asmopt off
movlw	27
movwf	((??_clcd_write)+1)
	movlw	158
movwf	((??_clcd_write))
	u3167:
decfsz	((??_clcd_write)),f
	goto	u3167
	decfsz	((??_clcd_write)+1),f
	goto	u3167
	nop
asmopt pop

	line	20
	
l17:	
	return
	callstack 0
GLOBAL	__end_of_clcd_write
	__end_of_clcd_write:
	signat	_clcd_write,8313
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 7 in file "isr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"isr.c"
	line	7
global __ptext25
__ptext25:	;psect for function _isr
psect	text25
	file	"isr.c"
	line	7
	
_isr:	
;incstack = 0
	callstack 3
; Regs used in _isr: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_isr+0)
	movf	pclath,w
	movwf	(??_isr+1)
	ljmp	_isr
psect	text25
	line	11
	
i1l2433:	
;isr.c: 9:     static unsigned int count = 0;;isr.c: 11:     if (TMR2IF == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l319
u215_20:
	line	13
	
i1l2435:	
;isr.c: 12:     {;isr.c: 13:         if (++count == 20000)
	movlw	01h
	addwf	(isr@count),f
	skipnc
	incf	(isr@count+1),f
	movlw	0
	addwf	(isr@count+1),f
		movlw	32
	xorwf	(((isr@count))),w
	movlw	78
	skipnz
	xorwf	(((isr@count+1))),w
	btfss	status,2
	goto	u216_21
	goto	u216_20
u216_21:
	goto	i1l2451
u216_20:
	line	15
	
i1l2437:	
;isr.c: 14:         {;isr.c: 15:             count = 0;
	clrf	(isr@count)
	clrf	(isr@count+1)
	line	17
	
i1l2439:	
;isr.c: 17:             if(sec>0)
	movf	((_sec)),w
	btfsc	status,2
	goto	u217_21
	goto	u217_20
u217_21:
	goto	i1l315
u217_20:
	line	19
	
i1l2441:	
;isr.c: 18:             {;isr.c: 19:                 sec--;
	movlw	01h
	subwf	(_sec),f
	line	21
;isr.c: 21:             }
	
i1l315:	
	line	22
;isr.c: 22:             if(sec==0)
	movf	((_sec)),w
	btfss	status,2
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l316
u218_20:
	line	24
	
i1l2443:	
;isr.c: 23:             {;isr.c: 24:                 if(minn>0)
	movf	((_minn)),w
	btfsc	status,2
	goto	u219_21
	goto	u219_20
u219_21:
	goto	i1l316
u219_20:
	line	26
	
i1l2445:	
;isr.c: 25:                 {;isr.c: 26:                   minn--;
	movlw	01h
	subwf	(_minn),f
	line	28
	
i1l2447:	
;isr.c: 28:                   sec=60;
	movlw	03Ch
	movwf	(_sec)
	line	31
;isr.c: 31:             }
	
i1l316:	
	line	32
;isr.c: 32:             if(pre_heat>0){
	movf	((_pre_heat)),w
	btfsc	status,2
	goto	u220_21
	goto	u220_20
u220_21:
	goto	i1l2451
u220_20:
	line	33
	
i1l2449:	
;isr.c: 33:                 pre_heat--;
	movlw	01h
	subwf	(_pre_heat),f
	line	40
	
i1l2451:	
;isr.c: 40:         TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	42
	
i1l319:	
	movf	(??_isr+1),w
	movwf	pclath
	swapf	(??_isr+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	callstack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,0x7E,2	;btemp
	global btemp0
	btemp0 set btemp+0
	global btemp1
	btemp1 set btemp+1
	global wtemp0
	wtemp0 set btemp+0
	global wtemp0a
	wtemp0a set btemp+1
	global ttemp0a
	ttemp0a set btemp+1
	global ltemp0a
	ltemp0a set btemp+2
	end
