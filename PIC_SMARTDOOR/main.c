/*
 * File:   main.c
 * Author: ASUS
 *
 * Created on 25 March, 2025, 1:23 PM
 */

#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = ON         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off)
#pragma config CP = ON          // Flash Program Memory Code Protection bit (All program memory code-protected)

#include <xc.h>

#define _XTAL_FREQ 20000000  // Corrected definition

#define RS PORTBbits.RB0
#define RW PORTBbits.RB1
#define EN PORTBbits.RB2

void door_status();
void lcd_data(unsigned char data);
void lcd_cmd(unsigned char cmd);
void lcd_string(unsigned char *str, unsigned int Num);
void lcd_init();

void lcd_data(unsigned char data) {
    PORTC = data;
    RS = 1;
    RW = 0;
    EN = 1;
    __delay_ms(5);
    EN = 0;
}

void lcd_cmd(unsigned char cmd) {
    PORTC = cmd;
    RS = 0;
    RW = 0;
    EN = 1;
    __delay_ms(5);
    EN = 0;
}

void lcd_string(unsigned char *str, unsigned int Num) {
    for (unsigned int i = 0; i < Num; i++) {
        lcd_data(str[i]);
    }
}

void lcd_init() {
    lcd_cmd(0x38);  // 8-bit mode, 2-line display
    __delay_ms(20);
    lcd_cmd(0x0C);  // Display ON, Cursor OFF
    lcd_cmd(0x06);  // Entry Mode: Increment cursor, no shift
    lcd_cmd(0x01);  // Clear Display
    __delay_ms(20);
}

void main(void) {
    TRISB = 0xF0;  // Configure RB4-RB7 as inputs, RB0-RB3 as outputs
    TRISC = 0x00;  // PORTC as output
    TRISD = 0xFF;  // PORTD as input (door sensors)

    lcd_init();

    while (1) {
        door_status();  

        // Check door status and control RB3 accordingly
        if (PORTBbits.RB4 == 1) {
            PORTBbits.RB3 = 1;
        } else if (PORTBbits.RB5 == 1) {
            if (PORTDbits.RD0 || PORTDbits.RD1 || PORTDbits.RD2 || PORTDbits.RD3) {
                PORTBbits.RB3 = 1;
            } else {
                PORTBbits.RB3 = 0;
            }
        } else if (PORTBbits.RB6 == 1) {
            PORTBbits.RB3 = 0;
        }
    }
}

void door_status() {
    unsigned char door_open = 0;

    if (PORTDbits.RD0 == 1) {
        lcd_cmd(0x80);
        lcd_string("FRONT LEFT DOOR ", 16);
        lcd_cmd(0xC5);
        lcd_string("IS OPEN", 7);
        door_open = 1;
    }

    if (PORTDbits.RD1 == 1) {
        lcd_cmd(0x80);
        lcd_string("FRONT RIGHT DOOR", 16);
        lcd_cmd(0xC5);
        lcd_string("IS OPEN", 7);
        door_open = 1;
    }

    if (PORTDbits.RD2 == 1) {
        lcd_cmd(0x80);
        lcd_string("REAR LEFT DOOR  ", 16);
        lcd_cmd(0xC5);
        lcd_string("IS OPEN", 7);
        door_open = 1;
    }

    if (PORTDbits.RD3 == 1) {
        lcd_cmd(0x80);
        lcd_string("REAR RIGHT DOOR ", 16);
        lcd_cmd(0xC5);
        lcd_string("IS OPEN", 7);
        door_open = 1;
    }

    if (!door_open) {
        lcd_cmd(0x01);  // Clear display only if no doors are open
        lcd_cmd(0x80);
        lcd_string("ALL DOORS CLOSED", 16);
    }
}
