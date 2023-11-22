---
title: "Week10 - output devices"
date: 2023-11-15T10:44:03-05:00
draft: false
pin: false
summary: "output devices, add an output device to a microcontroller board you've designed, and program it to do something"
---

## Week10 - output devices

### Assignment

individual assignment:</br>

- [x] add an output device to a microcontroller board you've designed, and program it to do something

group assignment:</br>

- [ ] measure the power consumption of an output device

### Idea

Following the idea of the origami/paper folding machine to conceptualize this week's assignment, I am trying to build a key compnent of it -- paper plane launcher.

<video  style="width: 100%;" controls>
<source src="../assets/week10/idea.mp4"  type="video/mp4">
</video>

### Testing with Breadboard

#### DC Motor

Feel hard to test H bridge on breadboard,  TB67H451AFNG is a soic8 chip..

<img src="../assets/week10/soic8.jpg" style="width:100%" />
<img src="../assets/week10/dc_1.png" style="zoom:50%;" />
<img src="../assets/week10/dc_2.png" style="zoom:50%;" />

#### Servo Motor

I am using [esp32servo.h](https://www.arduino.cc/reference/en/libraries/esp32servo/) to control servo motor with XIAO ESP32 C3 

```c
#include <ESP32Servo.h>

Servo myservo;  // create servo object to control a servo
// 16 servo objects can be created on the ESP32

int pos = 0;    // variable to store the servo position
int servoPin = 9;

void setup() {
	// Allow allocation of all timers
	ESP32PWM::allocateTimer(0);
	ESP32PWM::allocateTimer(1);
	ESP32PWM::allocateTimer(2);
	ESP32PWM::allocateTimer(3);
	myservo.setPeriodHertz(50);    // standard 50 hz servo
	myservo.attach(servoPin, 500, 2500); // attaches the servo on pin 18 to the servo object
	// using default min/max of 1000us and 2000us
	// different servos may require different min/max settings
	// for an accurate 0 to 180 sweep
}

void loop() {

	for (pos = 0; pos <= 180; pos += 1) { // goes from 0 degrees to 180 degrees
		// in steps of 1 degree
		myservo.write(pos);    // tell servo to go to position in variable 'pos'
		delay(15);             // waits 15ms for the servo to reach the position
	}
	for (pos = 180; pos >= 0; pos -= 1) { // goes from 180 degrees to 0 degrees
		myservo.write(pos);    // tell servo to go to position in variable 'pos'
		delay(15);             // waits 15ms for the servo to reach the position
	}
}

```

With reference to the data [here](https://www.adafruit.com/product/2201), the default servo pulse width of the SG51R (typically 1ms to 2ms) may not provide a full 180 degrees of motion. In this case, check if you can set the servo controller to a custom pulse length and try 0.75ms to 2.25ms, I tried and did not get to 180 degrees, adjusting to 0.5ms to 2.5ms works fine. 



##### servo pulse width from 0.75ms to 2.25ms 

<video  style="width: 100%;" controls>
<source src="../assets/week10/servo2.mp4"  type="video/mp4">
</video>

##### servo pulse width from 0.5ms to 2.5ms

<video  style="width: 100%;" controls>
<source src="../assets/week10/servo1.mp4"  type="video/mp4">
</video>

### Electronics Design
<img src="../assets/week10/eda_1.png" style="zoom:50%;" />
<img src="../assets/week10/eda_2.png" style="zoom:50%;" />


### Electronics Production

#### Export
<img src="../assets/week10/ep_2.png" style="zoom:50%;" />
<img src="../assets/week10/ep_1.png" style="zoom:50%;" />


#### Milling


<video  style="width: 100%;" controls>
<source src="../assets/week10/ep_3.mp4"  type="video/mp4">
</video>
<img src="../assets/week10/ep_4.jpg" style="zoom:50%;" />

