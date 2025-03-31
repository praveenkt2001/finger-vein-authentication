#include <SoftwareSerial.h>
SoftwareSerial sim(7, 8);

void setup() {
  sim.begin(9600);
  delay(1000);
  sim.println("AT+CMGF=1");
  delay(100);
  sim.println("AT+CMGS="+1234567890"");
  delay(100);
  sim.println("Access Granted - Finger Vein Authenticated");
  sim.write(26);
}

void loop() {}