---
title: "Week3 - embedded programming"
date: 2023-09-27T10:42:04-05:00
draft: false
summary: "write program for a microcontroller development board to interact (with local input &/or output devices)"
---

## Week3 - embedded programming

### Assignment

individual assignment:</br>

- [x] browse through the data sheet for your microcontroller
- [x] write program for a microcontroller development board
  - [x] to interact (with local input &/or output devices)
  - [x] and communicate (with remote wired or wireless devices)
- [x] extra credit: use different languages &/or development environments
- [x] extra credit: connect external components to the board

group assignment:</br>

- [ ] compare the performance and development workflows for other architectures (I was on waitlist this week, so I didn't attend the group assignment)

### Wi-Fi Scan and Connect using XIAO ESP32C3 + Arduino IDE

Data Sheet of XIAO ESP32C3 [Link](https://www.seeedstudio.com/Seeed-XIAO-ESP32C3-p-5431.html)

- Scan

  ```c
  #include "WiFi.h"
  
  void setup()
  {
      Serial.begin(115200);
  
      // Set WiFi to station mode and disconnect from an AP if it was previously connected
      WiFi.mode(WIFI_STA);
      WiFi.disconnect();
      delay(100);
  
      Serial.println("Setup done");
  }
  
  void loop()
  {
      Serial.println("scan start");
  
      // WiFi.scanNetworks will return the number of networks found
      int n = WiFi.scanNetworks();
      Serial.println("scan done");
      if (n == 0) {
          Serial.println("no networks found");
      } else {
          Serial.print(n);
          Serial.println(" networks found");
          for (int i = 0; i < n; ++i) {
              // Print SSID and RSSI for each network found
              Serial.print(i + 1);
              Serial.print(": ");
              Serial.print(WiFi.SSID(i));
              Serial.print(" (");
              Serial.print(WiFi.RSSI(i));
              Serial.print(")");
              Serial.println((WiFi.encryptionType(i) == WIFI_AUTH_OPEN)?" ":"*");
              delay(10);
          }
      }
      Serial.println("");
  
      // Wait a bit before scanning again
      delay(5000);
  }
  ```
  <img src="../assets/week11/1.png" style="zoom:50%;" />
  <img src="../assets/week11/2.jpg" style="zoom: 50%;" />


### Light a LED using PICO W + Thonny

Data Sheet of PICO W [Link](https://datasheets.raspberrypi.com/picow/pico-w-datasheet.pdf)

  <img src="../assets/week3/1.png" style="zoom:50%;" />

  ```python
import machine
import time

led = machine.Pin(15, machine.Pin.OUT) #configure GPIO-15 Pin as an output pin and create and led object for Pin class

while True:
  led.value(True)  #turn on the LED
  time.sleep(1)   #wait for one second
  led.value(False)  #turn off the LED
  time.sleep(1)   #wait for one second

  ```

<video  style="width: 100%;" controls>
<source src="../assets/week3/1.mp4"  type="video/mp4">
</video>
