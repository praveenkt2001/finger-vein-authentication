void setup() {
  Serial.begin(9600);
  // setup sensor, pinModes, etc.
}

void loop() {
  // mock scanner logic
  Serial.println("Finger scanned");
  delay(1000);
}