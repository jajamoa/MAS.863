---
title: "Week12 - interface and application programming"
date: 2023-11-29T00:44:03-05:00
draft: false
pin: false
summary: "write an application that interfaces a user with an input and/or output device that you made"
---

## Week12 - interface and application programming

### Assignment

individual assignment:</br>

- [x] write an application that interfaces a user with an input and/or output device that you made

group assignment:</br>

- [x] compare as many tool options as possible


## Group Assignment
I used 3D Physic Library in this week's assignment, for 3D physics, there are three main libraries:

1. Ammo.js
   - Website: http://schteppe.github.io/ammo.js-demos/
   - Git repository: https://github.com/kripken/ammo.js/
   - Documentation: No documentation
   - Direct JavaScript port of Bullet (a physics engine written in C++)
   - A little heavy
   - Still updated by a community
2. Cannon.js
   - Website: https://schteppe.github.io/cannon.js/
   - Git repository: https://github.com/schteppe/cannon.js
   - Documentation: http://schteppe.github.io/cannon.js/docs/
   - Lighter than Ammo.js
   - More comfortable to implement than Ammo.js
   - Mostly maintained by one developer
   - Hasn't been updated for many years
   - There is a maintained fork
3. Oimo.js
   - Website: https://lo-th.github.io/Oimo.js/
   - Git repository: https://github.com/lo-th/Oimo.js
   - Documentation: http://lo-th.github.io/Oimo.js/docs.html
   - Lighter than Ammo.js
   - Easier to implement than Ammo.js
   - Mostly maintained by one developer
   - Hasn't been updated for 2 years
4. Rapier
   - Website: https://rapier.rs/
   - Git repository: https://github.com/dimforge/rapier
   - Documentation: https://rapier.rs/javascript3d/index.html
   - Very similar to Cannon.js
   - Good performance
   - Currently maintained

## Individual Assignment

### Idea

1. Control the compass with a geomagnetic sensor
2. Control a three-dimensional rod with a geomagnetic sensor

### Input

#### Calibration
Calibration of a geomagnetic sensor like the HMC5883L magnetometer is vital for accurate readings. It involves rotating the sensor 360 degrees to record maximum and minimum values, adjusting for distortions in the magnetic field. This process is crucial in environments without magnetic interferences. Additionally, accounting for magnetic declination, the difference between magnetic and true north, is essential for precise heading measurements

````c
xMax = max(xMax, event.magnetic.x);
yMax = max(yMax, event.magnetic.y);
xMin = min(xMin, event.magnetic.x);
yMin = min(yMin, event.magnetic.y);

float ymax_rounded = round(yMax * 100) / 100.0;
float ymin_rounded = round(yMin * 100) / 100.0;
float xmax_rounded = round(xMax * 100) / 100.0;
float xmin_rounded = round(xMin * 100) / 100.0;
````

#### Video

<video  style="width: 80%;" controls>
<source src="../assets/week11/output.mp4"  type="video/mp4">
</video>

### Compass

#### Code

**jscript.h**

````c
const String javascript PROGMEM = " $(document).ready(function(){\r\n"
            "  setInterval(getData,100);\r\n"
            " function getData(){\r\n"
            "  $.ajax({\r\n"
            "  type:\"GET\",\r\n"
            "  url:\"data\",\r\n"
            "  success: function(data){\r\n"
            "  $('#heading-value').val(data);\r\n"
            "  theta = data - 90;\r\n"
            "  $('#arrow').css({'transform' : 'rotate('+ theta +'deg)'});\r\n"
            "}\r\n"
            "}).done(function() {\r\n"
            " console.log('ok'); "
            "})\r\n"
            "}\r\n"
            "});";
````

**mainpage.h**

````c
const String page PROGMEM = "<head>"
            " <meta name='viewport' content='width=device-width, initial-scale=1.0'>"
            " <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>"
            " <script src='/jscript.js'></script>"
            " <link href='https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap' rel='stylesheet'>"
            " <style>"
            " body{"
            " background-color:white;"
            " font-family: 'Roboto', sans-serif;" 
            "}"
            "#tmm-logo{"
            "  margin-top: 100px;"
            "  margin-left: 50%;"
            "  width:50%;"
            "}"
            "#arrow{"
            "width: 50%;"
            "margin-top: 50px;"
            "margin-left: 20%;"
            "$('#arrow').css({'transform' : 'rotate(270deg)'});"
            "}"
            "</style>"
            " </head>"
            " <body>"
            " <h1>ESP32 Magnetometer</h1>"
            " <label for='heading-value'>Heading (degrees from N):</label> <input type='text' id='heading-value'>""</p>\r\n" 
            " <img id='arrow' src='https://i.imgur.com/nFnBZwW.png'/>\r\n "
            "</body>";
````


#### Video
<video  style="width: 80%;" controls>
<source src="../assets/week12/compass.mp4"  type="video/mp4">
</video>


### 3D Rod

#### Video
<video  style="width: 80%;" controls>
<source src="../assets/week12/rod.mp4"  type="video/mp4">
</video>
