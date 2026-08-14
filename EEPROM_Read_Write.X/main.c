#include <xc.h>

// PIC16F877A Configuration
#pragma config FOSC = HS, WDTE = OFF, PWRTE = OFF, BOREN = ON, LVP = OFF, CPD = OFF, WRT = OFF, CP = OFF
#define _XTAL_FREQ 20000000   // 20 MHz crystal

// Common anode inverted segment codes for 0-9
unsigned char segment_data[10] = {
    /*0b11000000, 0b11111001, 0b10100100, 0b10110000,
    0b10011001, 0b10010010, 0b10000010, 0b11111000,
    0b10000000, 0b10010000*/
    
    ~0xF9, // 1
    ~0xA4, // 2
    ~0xB0, // 3
    ~0x99, // 4
    ~0x92, // 5
    ~0x82, // 6
    ~0xF8, // 7
    ~0x80, // 8
    ~0x90  // 9
};

// EEPROM write function
void EEPROM_Write(unsigned char address, unsigned char data){
    EEADR = address;       // Set address
    EEDATA = data;         // Set data
    EECON1bits.EEPGD = 0;  // Access Data EEPROM
    EECON1bits.WREN = 1;   // Enable write

    // Required write sequence
    INTCONbits.GIE = 0;    // Disable interrupts
    EECON2 = 0x55;
    EECON2 = 0xAA;
    EECON1bits.WR = 1;     // Start write
    INTCONbits.GIE = 1;    // Enable interrupts

    while(EECON1bits.WR);  // Wait until write completes
    EECON1bits.WREN = 0;   // Disable write
}

// EEPROM read function
unsigned char EEPROM_Read(unsigned char address){
    EEADR = address;       
    EECON1bits.EEPGD = 0;  
    EECON1bits.RD = 1;     
    return EEDATA;
}

void main(){
    TRISD = 0x00; // PORTD = segments
    TRISA = 0x00; // PORTA = display enable

    PORTD = 0xFF; // turn off all segments
    PORTA = 0xFF; // all displays OFF

    unsigned char i;

    // ---------- STEP 1: Write numbers 0-9 to EEPROM ----------
    for(i = 0; i < 10; i++){
        EEPROM_Write(i, i);    // store number i at address i
        __delay_ms(500);         // small delay to ensure write completes
    }

    // ---------- STEP 2: Infinite loop to read and display ----------
    while(1){
        for(i = 0; i < 10; i++){
            unsigned char num = EEPROM_Read(i);  // read number

            PORTA = 0xFF;                  // disable all displays first
            PORTD = segment_data[num];     // send segment data
            RA0 = 0;                        // enable first display (active LOW)
            __delay_ms(500);               // visible delay
            RA0 = 1;                        // turn off display
            PORTD = 0xFF;                  // turn off segments
            __delay_ms(100);               // small pause
        }
    }
}