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

- [x] measure the power consumption of an output device


## Group Assignment
Vincy and I measured the power consumption of an output device, using a usb tester(thank you Alan for lending it to us)
<img src="../assets/week10/g0.jpg" style="width:60%" />

We measured the energy consumption of the stepper motor just after it was powered on, before rotation, during rotation, and after rotation.
1. just after it was powered on - 5.3V, 0.0A, 0.0W

<img src="../assets/week10/g1.jpg" style="width:80%" />

At this initial stage, the motor was idle, drawing no current. The voltage was stable at 5.3V, but both the current and power consumption were at 0.0A and 0.0W, respectively, indicating no active energy use.

2. before rotation - 5.3V, 0.037A, 0.196W

<img src="../assets/week10/g2.jpg" style="width:80%" />

Prior to rotation, the motor showed a slight increase in energy consumption. The voltage remained constant at 5.3V, but the current increased to 0.037A, resulting in a power consumption of 0.196W. This suggests minimal energy use in preparation for movement.

3. during rotation - 4.756V, 0.325A, 1.568W

<img src="../assets/week10/g3.jpg" style="width:80%" />

This phase marked a significant rise in power usage, reflecting the motor's active work. The voltage slightly dropped to 4.756V, and the current surged to 0.325A. Consequently, the power consumption increased to 1.568W, indicating the energy required for the rotation of the motor.

4. after rotation(being idle) - 4.623V, 0.335A, 1.548W
<img src="../assets/week10/g4.jpg" style="width:80%" />

Even after the rotation ceased, the motor continued to consume energy, albeit at a slightly reduced level compared to the active rotation phase. The voltage further decreased to 4.623V, and the current was measured at 0.335A, leading to a power consumption of 1.548W. This suggests that the motor still uses energy to maintain its static position after rotation.

In summary, the stepper motor’s power consumption varied across different operational stages, with the highest energy use observed during active rotation.


## Individual Assignment

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

#### Soldering

<img src="../assets/week10/ep_5.jpg" style="zoom:50%;" />

