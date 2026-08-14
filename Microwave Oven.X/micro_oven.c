/*
 * File:   micro_oven.c
 * Author: Success
 *
 * Created on 7 January, 2026, 6:39 PM
 */
#include <xc.h>
#include "clcd.h"
#include "matrix_keypad.h"
#include "micro_oven.h"
#include "timers.h"

unsigned char minn, sec;
unsigned int temp;
extern unsigned char screen_flag;
unsigned char pre_heat;
extern unsigned char reset_flag;
void display_power_screen(void)
{
    // printing bar
    for(unsigned char i=0; i<16;i++){
        clcd_putch(BAR,LINE1(i));
        __delay_ms(100);
    }
    
    clcd_print("Powering ON", LINE2(3));
    
    clcd_print("Microwave Oven", LINE3(1));
        
    // printing bar
    for(unsigned char i=0; i<16;i++){
        clcd_putch(BAR,LINE4(i));
        __delay_ms(100);
    }
    alarm();
    __delay_ms(2000);
    clear_screen();
    // printing bar
    for(unsigned char i=0; i<16;i++){
        clcd_putch(BAR,LINE1(i));
        __delay_ms(100);
    }
    
    clcd_print("Developed By", LINE2(2));
    
    clcd_print("KARTHIK S", LINE3(4));
    for(unsigned char i=0; i<16;i++){
        clcd_putch(BAR,LINE4(i));
        __delay_ms(100);
    }
    alarm();
    __delay_ms(3000);
    clear_screen();
    for(unsigned char i=0; i<16;i++){
        clcd_putch(BAR,LINE1(i));
        __delay_ms(100);
    }
    
    clcd_print("EMERTXE", LINE2(5));
    
    clcd_print("Embedded System", LINE3(1));
    clcd_print("Internship", LINE4(2));
    alarm();
    __delay_ms(3000);
    clear_screen();
}
void display_modes(void){
  
    clcd_print("1.Micro", LINE1(3));
    clcd_print("2.Grill", LINE2(3));
    clcd_print("3.Convection", LINE3(3));
    clcd_print("4.Start", LINE4(3));
    
}

// set time 
void set_time(unsigned char key, unsigned char reset_flag)
{
    static unsigned char blink_pos=0; // 0: sec field, 1: minn field
    static unsigned char delay, display_blank;
    static unsigned char key_count=0; //used to switch the fields
        
    if(reset_flag==RESET_FLAG)
    {
        sec=0;
        minn=0;
        key=0;
        key_count=0;
        blink_pos=0;
    }
    // PRINT THE FORMAT
    clcd_print("SET TIME (MM:SS)",LINE1(0));
    clcd_print("TIME:",LINE2(0));
    clcd_putch(':',LINE2(7));
    clcd_print("*:CLEAR #:ENTER", LINE4(0));
    
    // read time from keypad, set time 
    // key *# 0 1 2 3 4 5 6 7 8 9
    if(key!='*' && key!='#' && key!=ALL_RELEASED) //TRUE FOR 0 1 2 3 4 5 6 7 8 9
    {
        // blink ==0 sec
        key_count++; // <2 sec, >2 min
        if(key_count<=3)
        {
            sec=sec*10+key;
            blink_pos=0; // update blink pos sec
        }
        else if (key_count<=5) // more than 2 times we are reading minutes
        {
            minn=minn*10+key;
            blink_pos=1; // update blink pos min
        }
    }
    else if (key=='*')  //* clear time 
    {
        if(blink_pos==0)
        {
            sec=0;
            key_count=0;
        }
        else if(blink_pos==1){
            minn=0;
            key_count=2;
            
        }
    }
    else if(key=='#')   //# start cooking with the time set display time
    {
        clear_screen();
        // turn on the fan  RC2==1
        FAN=1;
        TMR2ON = 1;
        // change the screen to display time
        screen_flag=DISPLAY_TIME;
        
        
    }
    
    // display min, sec : blink sec field editabl field
    if(delay++ ==7)
    {
        delay=0;
        display_blank=!display_blank;
        
    }
    if(display_blank){
        if (blink_pos==0)
        {
            clcd_putch(' ',LINE2(8));
            clcd_putch(' ',LINE2(9));
            }
        else{
            clcd_putch(' ',LINE2(5));
            clcd_putch(' ',LINE2(6));
            
        }
    }
    else{
        clcd_putch(sec/10+'0',LINE2(8)); // 30 30/10=3+'0'=>'3', 
        clcd_putch(sec%10+'0',LINE2(9)); // 30%10=0+'0'=>'0'
        
        clcd_putch(minn/10+'0',LINE2(5));
        clcd_putch(minn%10+'0',LINE2(6));
        
    }
}
void set_temp(unsigned char key,unsigned char reset_flag)
{
    
    static unsigned char delay, display_blank;
    static unsigned char key_count=0; //used to switch the fields
    
    if(reset_flag==RESET_FLAG)
    {
        temp=0;
        key=0;
        key_count=0;
       
    }
    if(delay++ ==5)
    {
        delay=0;
        display_blank=!display_blank;
        
    }
    // PRINT THE FORMAT
    clcd_print("SET TEMP ('C)",LINE1(1));
    clcd_print("TEMP:",LINE2(1));
    clcd_print("*:CLEAR #:ENTER", LINE4(0));
    
    // read temperature
    if(key!='*' && key!='#' && key!=ALL_RELEASED) //TRUE FOR 0 1 2 3 4 5 6 7 8 9
    {
       
        key_count++; 
        if(key_count<=4) // 3 times we are reading temp
        {
            temp=temp*10+key;
        }
    }
    else if (key=='*')  //* clear temp
    {
        temp=0;
        key_count=0;
    }
    else if(key=='#')   
    {
        if(temp>180)
        {
            temp=180;
        }
        clear_screen();
        pre_heat=60;
        //turn on the timer
        TMR2ON=1;
        // display pre heating along with time left
        clcd_print("Pre-Heating:",LINE1(2));
        clcd_print("Time Left:",LINE3(1));
        clcd_putch('s',LINE3(14));
        while(pre_heat)
        {
            //clcd_putch((pre_heat/100)+'0',LINE3(9));
            clcd_putch((pre_heat/10)%10+'0',LINE3(12)); 
            clcd_putch(pre_heat%10+'0',LINE3(13));
        }
        BUZZER=1;
        __delay_ms(2000);
        BUZZER=0;
        __delay_ms(2000);
        TMR2ON=0; 
        clear_screen();
        screen_flag=MICRO_MODE;
        reset_flag=RESET_FLAG;
        // implementing pre heating screen
        
        
    }
    
    if(display_blank) //blink temp
    {
        clcd_putch(' ',LINE2(7));
        clcd_putch(' ',LINE2(8));
        clcd_putch(' ',LINE2(9));        
    }
    else
    {
        //fetch bit by bit and convert it into ASCII
        clcd_putch((temp/100)+'0',LINE2(7));
        clcd_putch((temp/10)%10+'0',LINE2(8)); 
        clcd_putch(temp%10+'0',LINE2(9));
        
    }
}

void display_time(void)
{
    clcd_print("TIME =",LINE1(1));
    clcd_putch(minn/10+'0',LINE1(9));
    clcd_putch(minn%10+'0',LINE1(10));
    clcd_putch(':',LINE1(11));
    clcd_putch(sec/10+'0',LINE1(12));  
    clcd_putch(sec%10+'0',LINE1(13));
    clcd_print("4.START/RESUME",LINE2(1));
    clcd_print("5.PAUSE",LINE3(1));
    clcd_print("6.STOP",LINE4(1));
    
    if(minn==0 && sec==0)
    {
        clear_screen();
        TMR2ON = 0;
        FAN=0;
        clcd_print("TIME UP",LINE2(4));
        clcd_print("Enjoy Your Meal!",LINE3(0));
        BUZZER=1;
        __delay_ms(3000);
        BUZZER=0;
        __delay_ms(3000);
        __delay_ms(1000);
        clear_screen();
        screen_flag=MENU_SCREEN;
        
    }
}

void heat_food(void)
{
    sec=30;
    minn=0;
    
    TMR2ON=1;
    FAN=1;
    screen_flag=DISPLAY_TIME;
    
    
}
void alarm()
{
    
        BUZZER=1;
        __delay_ms(100);
        BUZZER=0;
        __delay_ms(100);
       
}

