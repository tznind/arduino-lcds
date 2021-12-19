#include <SPI.h>
#include "Ucglib.h"

Ucglib_SSD1351_18x128x128_SWSPI ucg(/*sclk=*/ 13, /*data=*/ 11, /*cd=*/ 9 , /*cs=*/ 10, /*reset=*/ 8);

void setup(void){
  delay(1000);
  ucg.begin(UCG_FONT_MODE_TRANSPARENT);
  ucg.clearScreen();
}

void loop(void){
  ucg.setRotate90();
  ucg.setFont(ucg_font_5x7_tf);
  ucg.setColor(50, 50, 150);
  ucg.drawFrame(2, 2, 124, 124);
  ucg.setColor(100, 100, 255);
  ucg.drawFrame(4, 4, 120, 120);

  ucg.setPrintPos(8,120);
  ucg.setColor(255, 255, 255);
  ucg.print("NEWS:");


  ucg.setPrintPos(120,120);
  ucg.print("#");

  delay(500);  
}
