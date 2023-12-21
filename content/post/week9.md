---
title: "Week9 - input devices"
date: 2023-11-08T10:44:03-05:00
draft: false
pin: false
summary: "input devices, measure something: add a sensor to a microcontroller board that you have designed and read it"
---

## Week9 - input devices

### Assignment

individual assignment:</br>

- [x] measure something - add a sensor to a microcontroller board that you have designed and read it

group assignment:</br>

- [x] probe an input device's analog levels and digital signals

## Group Assignment

Vincy and I used a multimeter to probe the input of a slider rail. We found that its resistance value gradually changes from 10k ohms to less than 1k ohms, depending on the position of the slider knob.
<img src="../assets/week9/g1.jpg" style="width:50%;" />

<img src="../assets/week9/g2.jpg" style="width:50%;" />

<img src="../assets/week9/g3.jpg" style="width:50%;" />

<img src="../assets/week9/g4.jpg" style="width:50%;" />


## Individual Assignment

### Idea

Following the idea of the origami/paper folding machine to conceptualize this week's assignment, in fact, the requirements of final project's input part are not a lot, probably only a need to sense the position of the paper..

Special thanks to Jake for his help, he gave me good and concise advice on how to use photodio and LEDs to build a basic paper sensing circuit.

<img src="../assets/week9/draft.jpg" style="zoom:50%;" />

### Electronics Design
<img src="../assets/week9/sche.jpg" style="zoom:50%;" />
<img src="../assets/week9/pcb.jpg" style="zoom:50%;" />

#### Issue - text in top layer
<img src="../assets/week9/issue1.jpg" style="zoom:50%;" />
<img src="../assets/week9/issue2.jpg" style="zoom:50%;" />

#### Fix - microsoft paint
<img src="../assets/week9/fix_1.jpg" style="zoom:50%;" />
<img src="../assets/week9/fix_2.jpg" style="zoom:50%;" />

### Electronics Production

#### Export
<img src="../assets/week9/0.jpg" style="zoom:50%;" />
<img src="../assets/week9/input_cut.jpg" style="zoom:50%;" />
<img src="../assets/week9/input_trace.jpg" style="zoom:50%;" />
<img src="../assets/week9/1.png" style="zoom:50%;" />
<img src="../assets/week9/2.png" style="zoom:50%;" />
<img src="../assets/week9/3.png" style="zoom:50%;" />
<img src="../assets/week9/4.png" style="zoom:50%;" />

#### Milling

<img src="../assets/week9/mill1.jpg" style="zoom:50%;" />
<img src="../assets/week9/mill2.jpg" style="zoom:50%;" />
<img src="../assets/week9/mill3.jpg" style="zoom:50%;" />
<img src="../assets/week9/mill4.jpg" style="zoom:50%;" />
<img src="../assets/week9/mill5.jpg" style="zoom:50%;" />
<img src="../assets/week9/mill6.jpg" style="zoom:50%;" />

<video  style="width: 100%;" controls>
<source src="../assets/week9/mill2.mp4"  type="video/mp4">
</video>

#### Soldering

<img src="../assets/week9/solder1.jpg" style="zoom:50%;" />


### Embedded Programming
<img src="../assets/week9/solder2.jpg" style="zoom:50%;" />

#### Code

```c
int pin = 3;  
int value;

void setup() {
  pinMode(pin, INPUT); 
  Serial.begin(9600); 
}

void loop() {
  value = digitalRead(pin); 
  Serial.println(value); 
  delay(1000);
}

```

#### Tesing

<img src="../assets/week9/test.jpg" style="zoom:50%;" />
