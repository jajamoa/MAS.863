---
title: "Week11 - networking and communications"
date: 2023-11-22T00:44:03-05:00
draft: false
pin: true
summary: "design, build, and connect wired or wireless node(s) with network or bus addresses and a local interface"
---

## Week11 - networking and communications

### Assignment

individual assignment:</br>

- [x]  design, build, and connect wired or wireless node(s) with network or bus addresses and a local interface

group assignment:</br>

- [ ] send a message between two projects

### Idea

1.  mqtt data receiver
2.  web compass
3.  spatial relationship detection between modular components

### Wi-Fi Scan and Connect

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
  

- Connect

  ```c
  #include <WiFi.h>
  
  const char* ssid     = "ESP_0672F1";
  const char* password = "";   
  
  void setup()
  {
      Serial.begin(115200);
      delay(10);
  
      Serial.println();
      Serial.println();
      Serial.print("Connecting to ");
      Serial.println(ssid);
  
      WiFi.begin(ssid, password);
  
      while (WiFi.status() != WL_CONNECTED) {
          delay(500);
          Serial.print(".");
      }
  
      Serial.println("");
      Serial.println("WiFi connected");
      Serial.println("IP address: ");
      Serial.println(WiFi.localIP());
  }  
  void loop()
  {
    }
  ```





### Tesing

```c
#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_HMC5883_U.h>
#include <WiFi.h>
#include <WiFiClient.h>
#include <WebServer.h>
#include "mainpage.h"
#include "jscript.h"

/* Assign a unique ID to this sensor at the same time */
Adafruit_HMC5883_Unified mag = Adafruit_HMC5883_Unified(12345);

//provide your own WiFi SSID and password
const char* ssid     = "ESP_0672F1";
const char* password = "";   

WebServer server(80);

//For storing data as string
String text= "";

void setup(void) 
{
  Serial.begin(9600);
  Serial.println("HMC5883 Magnetometer Test"); Serial.println("");
  
  /* Initialise the sensor */
  if(!mag.begin())
  {
    /* There was a problem detecting the HMC5883 ... check your connections */
    Serial.println("Ooops, no HMC5883 detected ... Check your wiring!");
    while(1);
  }

  //Use ESP32 as WiFi Station
  WiFi.mode(WIFI_STA);
  //Initiate WiFi Connection
  WiFi.begin(ssid, password);
  Serial.println("");
  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to ");
  //Print your WiFi's SSID (might be insecure)
  Serial.println(ssid);
  Serial.print("IP address: ");
  //Print your local IP address (needed for browsing the app)
  Serial.println(WiFi.localIP());
   //Home page. Contents of 'page' is in mainpage.h
  server.on("/", []() {
   server.send(200, "text/html", page);
  });
  //JavaScript! Contents of 'javascript' is in jscript.h
  server.on("/jscript.js", []() {
   server.send(200, "text/javascript", javascript);
  });
  //Page for reading data. Sensor is read in this part
  server.on("/data", [](){
    delay(100);
    /* Get a new sensor event */ 
    sensors_event_t event; 
    mag.getEvent(&event);

    float heading = atan2(event.magnetic.y, event.magnetic.x);
  
    float declinationAngle = 0.0168;
    heading += declinationAngle;
    
    // Correct for when signs are reversed.
    if(heading < 0)
      heading += 2*PI;
      
    // Check for wrap due to addition of declination.
    if(heading > 2*PI)
      heading -= 2*PI;
     
    // Convert radians to degrees for readability.
    float headingDegrees = heading * 180/M_PI; 
    text = (String)headingDegrees;
    server.send(200, "text/plain", text);

    // Output the heading to the console
    Serial.print("Heading: ");
    Serial.println(adsfghe r w q a);
  });
  //start web server
  server.begin();
  //Just stating things
  Serial.println("HTTP server started");
}

void loop(void) 
{
  //Make the ESP32 always handle web clients
  server.handleClient();
}
```

<img src="../assets/week11/2.jpg" style="zoom: 50%;" />

<video  style="width: 80%;" controls>
<source src="../assets/week11/output.mp4"  type="video/mp4">
</video>
