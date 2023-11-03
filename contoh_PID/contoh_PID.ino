// Define pin numbers
const int sensorPin = A0;     // Analog input for temperature sensor (LM35)
const int motorPin = 9;       // PWM pin for controlling the DC motor speed

// Define PID constants
const float Kp = 10.0;        // Proportional gain
const float Ki = 0.1;         // Integral gain
const float Kd = 1.0;         // Derivative gain

// Define variables
float setpoint = 25.0;        // Setpoint temperature in degrees Celsius
float input, output, error, lastError, integral;
unsigned long lastTime;

void setup() {
  pinMode(sensorPin, INPUT);
  pinMode(motorPin, OUTPUT);
  
  Serial.begin(9600);
  lastTime = millis();
}

void loop() {
  unsigned long now = millis();
  float dt = (float)(now - lastTime) / 1000.0; // Calculate time difference in seconds
  
  // Read temperature
  input = analogRead(sensorPin);
  input = (input * 5.0 / 1024.0) * 100.0; // Convert analog reading to temperature in degrees Celsius
  
  // Compute error
  error = setpoint - input;
  
  // Compute integral and derivative terms
  integral += (error * dt);
  float derivative = (error - lastError) / dt;
  
  // Compute PID output
  output = Kp * error + Ki * integral + Kd * derivative;
  
  // Apply output to motor (fan)
  int motorSpeed = constrain(abs(output), 0, 255); // Constrain speed to 0-255 range
  analogWrite(motorPin, motorSpeed);
  
  // Update variables for next iteration
  lastError = error;
  lastTime = now;
  
  // Print debug information
  Serial.print("Setpoint: "); Serial.print(setpoint);
  Serial.print(", Input: "); Serial.print(input);
  Serial.print(", Output: "); Serial.println(output);
  
  delay(1000); // Delay for 1 second (adjust as needed)
}
