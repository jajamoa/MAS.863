---
title: "Final Project - EMH Reader（This page is still under construction）"
date: 2023-12-20T16:32:11-04:00
draft: false
pin: true
summary: "Final project tracking page, record how to make something that fold (almost) anything strp by step."
---

## Final Project - EMH Reader（This page is still under construction）

<img src="../assets/final/cover2.jpg"  style="width: 80%;"  />

### Introduction  
<video  style="width: 100%;" controls>
<source src="../assets/final/EMH.mp4"  type="video/mp4">
</video>

</br></br>
Designing and constructing the ***Electro-Mech-Hydraulic(EMH) Reader***, driven by interest for machinery and its interaction with paper, featuring a versatile robotic arm with hydraulic precision control for tasks including page turning.

### TL;DR
Following the requirements and structure of this page https://academy.cba.mit.edu/classes/project_presentation/index.html, I summarize the content of this project as follows:
   - **Answering**
     - **What does it do?**
       - It is a versatile robotic arm with hydraulic precision control, primarily designed for page turning, but capable of various automation tasks.
     - **Who's done what beforehand?**
       - Disney Research's Robotic Manipulator: Disney Research developed a highly responsive robotic manipulator using a hybrid of hydraulic and pneumatic systems, capable of delicate tasks with lifelike motion. [Link](https://spectrum.ieee.org/disney-robot-with-air-water-actuators)
       - Hydraulic Robotic Arms in Manufacturing: Hydraulic robotic arms are pivotal in manufacturing for tasks like palletizing and welding. These arms are known for their flexibility and efficiency. [Link](https://www.evsint.com/)
       - Hydrabot: The Modular Electro-Hydraulic Robot Arm: Developed by the University of Waterloo, Hydrabot is a modular and reconfigurable robot arm that uses hydraulic actuators to enhance payload capacity and versatility. [Link](https://www.eng.uwaterloo.ca/~aalnaif/)
       - Origami Folding by a Robotic Hand: This study by Kenta Tanaka, Yusuke Kamotani, and Yasuyoshi Yokokohji explores the use of a robotic hand in folding origami, demonstrating advanced capabilities in precise manipulation of paper. [Link](https://www.fujipress.jp/jrm/rb/robot002000040550/)
     - **What did you design?**
       - A 3D-printed and laser-cut acrylic syringe holder to house the hydraulic system.
       - A sub-system with stepper motor with a threaded shaft for precise pushing and pulling of the syringe.
       - A 3 Degree of Freedom (3 DoF) robotic arm's mechanical design, featuring a scissor mechanism for elevation, a disc for lateral movement, and a linkage system for push-pull actions.
       - A front-end control panel control the project.
     - **What materials and components were used? Where did they come from? How much did they cost?**
     - **What parts and systems were made?**
       - **Mechanical Components**:
         - Stepper motor with a threaded shaft for precise syringe manipulation.
         - 3 DoF robotic arm with a scissor mechanism, lateral movement disc, and a linkage system.
       - **Hydraulic System**:
         - Integration of hydraulic components for precise control and power.
         - 3D-printed and laser-cut acrylic syringe holder for housing the hydraulic system.
       - **Front-End Control Panel**:
         - User interface design for manual control and programming of the robotic arm's actions.
     - **What processes were used?**
       - system integration and packaging
       - embedded microcontroller design, interfacing, and programming
         - front-end control panel
         - remote controller
         - stepper motor controller
         - modular things debugging, fixing and customization
       - electronics design and production
         - remote controller
         - stepper motor controller
       - additive fabrication processes / 3D design
         - 3D printing all components in robotic arm
           - **Elevator Scissors**: Mechanism for vertical movement, possibly using a scissor lift design.
           - **Slides of Arms, Upper/Lower/Middle Arm Components**: Components comprising the sliding sections of the robotic arms, including upper, lower, and middle arm segments.
           - **Pan Rotating Structure**: Rotational mechanism for panning or horizontal movement.
           - **Arm Holding Platform**: Platform for securing and holding the robotic arm.
           - **Pins Connecting the Joints and Components**: Fasteners used to connect and secure joints and components.
           - **Rod to Actuate the Elevator**: Rod used for elevating or lifting components, likely part of the scissor lift mechanism.
           - **Locks for Different Syringes' Handle**: Locking mechanisms designed for various syringe handles.
           - **Holder for Different Syringes**: Device used to hold and secure different types of syringes.
           - **Lock for Threaded Shaft**: Locking mechanism for the threaded shaft to prevent movement.
           - **Guide Rail Fixtures**: Mechanical fixtures used to secure and guide rails, likely part of the frame and structural components.
         - 3D printing all components in robotic arm
           - **Holder for the Driving-Side Syringe**: A component designed to secure and control the syringe on the driving side of the system.
           - **Holder for the Stepper Motor**: A fixture designed to secure and position the stepper motor, which is responsible for controlling various movements.
           - **Guide for Threaded Shaft (Preventing from Self-Rotating)**: A guide mechanism that prevents the threaded shaft from rotating on its own.
       - subtractive fabrication processes / 2D design
         - **Driving-Side Enclosure**: An enclosure or box on the driving side of the system, serving both aesthetic and hydraulic pressure conduction functions. 
         - **Upgraded Holder for the Stepper Motor**: An improved fixture designed to secure and position the stepper motor, addressing the issue of melting associated with the previous 3D-printed version when the motor heats up.
     - **What questions were answered?**
       - How can an electronic hydraulic arm system be constructed at a low cost?
       - How can hydraulic, electrical, and mechanical elements be combined to accomplish tasks within complex systems?
     - **What worked? What didn't?**
       - What worked:
         - The design and construction of the EMH robotic arm with hydraulic precision control.
         - Integration of mechanical, hydraulic, and electronic systems.
         - Development of a user-friendly control interface for manual and programmed actions.
       - What didn't:
         - The control algorithm has not been written yet, and the current control relies on pre-defined rules (due to limited resources in this personal project). In the future, collaboration can be considered to enhance the system's ability for better generalization.
     - **How was it evaluated?**
       - In a nutshell, the primary evaluation goal was to create a functional demo to verify the end-to-end success of page turning. This means that by pressing a button on a webpage, the mechanical arm successfully turns a physical book page, serving as a proof of concept.
     - **What are the implications?**
       - **Cost-Effective Automation**: By leveraging hydraulic flexibility to enhance force output within a constrained budget(<$10), the project demonstrates a practical approach to achieving robust automation in economically limited environments.

### Conception
As someone with a longstanding fascination for the interplay between machines, paper, and their intricate interactions, this project represents a passionate endeavor to explore the creative possibilities at this intersection. 

In the realm of machine building, the project's central objective is to maximize the potential of hydraulic technology. It aims to construct a highly cost-effective and extraordinarily versatile machine. This approach allows for a comprehensive exploration of hydraulic systems, emphasizing their role in achieving intricate movements and precise control. The core application of this machine lies in enhancing paper-related tasks, including page-turning and paper folding, while emphasizing the synergy between machine building and hydraulic technology for efficient and innovative solutions.

<img src="../assets/final/readme.jpg"  style="zoom: 40%;"  />


### System Integration

The final project was a test and challenge of system integration. Neil repeatedly emphasized the principles of 80/20 and 95/5, which indeed manifested when I started working hands-on. Fortunately, I was able to successfully resolve all the issues and achieved a stable live demo effect on the open day. Here, I'll detail the three most memorable challenges I encountered during the system integration process.

#### The stepper motor softened the support structure of the 3D print

#### The weight of the mechanical platform was too heavy for ordinary syringes to support.

#### The drive-side bracket, for aesthetic reasons, did not have enough support structures printed.


### Construction(progress tracking)

#### Mechanical Part

##### 1st Spiral
<img src="../assets/tracking/0.jpg"  style="zoom: 80%;"  />
<img src="../assets/tracking/1.jpg"  style="zoom: 80%;"  />
<img src="../assets/tracking/2.jpg"  style="zoom: 80%;"  />
<img src="../assets/tracking/3.jpg"  style="width: 80%;"  />
<img src="../assets/tracking/me1.jpg"  style="width: 80%;"  />
<video  style="width: 80%;" controls>
<source src="../assets/tracking/me1.mp4"  type="video/mp4">
</video>
<video  style="width: 80%;" controls>
<source src="../assets/tracking/me2.mp4"  type="video/mp4">
</video>

<img src="../assets/tracking/4.jpg"  style="width: 80%;"  />
<img src="../assets/tracking/6.jpg"  style="width: 80%;"  />
<img src="../assets/tracking/7.jpg"  style="width: 80%;"  />
<img src="../assets/tracking/5.jpg"  style="width: 80%;"  />


#### Electrical Part 

##### 1st Spiral - TMC2209

1. SpeedyStepper.h
	1. https://forum.arduino.cc/t/using-a-tmc2209-silent-stepper-motor-driver-with-an-arduino/666992/40)
	2. https://forum.arduino.cc/t/using-a-tmc2209-silent-stepper-motor-driver-with-an-arduino/666992/14
2. software serial
	1. https://wiki.seeedstudio.com/xiao_esp32s3_pin_multiplexing/#usage-of-software-serial
	2. https://arduino.stackexchange.com/questions/26240/which-pins-of-an-arduino-uno-can-be-used-as-tx-and-rx-pins-for-connecting-to-gsm#26277
	3. https://github.com/SlashDevin/NeoSWSerial
3. example code in TMC2209.h repo
	1. https://github.com/janelia-arduino/TMC2209
   
<img src="../assets/final/sche.png"  style="width: 80%;"  />
<img src="../assets/final/tmc1.jpg"  style="width: 80%;"  />

   
##### 2nd Spiral - DRV8428
this is what I want to reproduce

<video  style="width: 80%;" controls>
<source src="../assets/final/drv.mp4"  type="video/mp4">
</video>

<img src="../assets/final/e1.png"  style="width: 80%;"  />
<img src="../assets/final/e2.png"  style="width: 80%;"  />
<img src="../assets/final/interior2.png"  style="width: 80%;"  />
<img src="../assets/final/trace2.png"  style="width: 80%;"  />

<img src="../assets/final/drv4.jpg"  style="width: 80%;"  />
<img src="../assets/final/drv1.jpg"  style="width: 80%;"  />
<img src="../assets/final/drv2.jpg"  style="width: 80%;"  />
<img src="../assets/final/drv3.jpg"  style="width: 80%;"  />


##### 3rd Spiral
<img src="../assets/final/interior.png"  style="width: 80%;"  />
<img src="../assets/final/trace.png"  style="width: 80%;"  />
<img src="../assets/final/trace_cut.png"  style="width: 80%;"  />
<img src="../assets/final/trace_mods.png"  style="width: 80%;"  />
<img src="../assets/week6/6.jpg" style="zoom:50%;" />

Stepper-hbridge-xiao - https://modular-things.github.io/modular-things/things/stepper-hbridge-xiao/
<img src="../assets/final/modular.png"  style="width: 100%;"  />

fixed(resolder+reflash firmware) a few modular things, and then they work 
<img src="../assets/final/mod1.jpg"  style="width: 80%;"  />

#### Interface Part
I have built a minimalistic frontend website using React.js, TypeScript, and Vite. This website serves as a control interface for various functionalities related to modular devices. It includes features like scanning for devices, pairing them, disconnecting, individual motor calibration, and a control panel to showcase demos.

For the development related to modular devices, I based my work on Jake's repository, which can be found at https://github.com/modular-things/modular-things-standalone.

Regarding control, I have established a connection using sockets between the XIAO ESP32C3 and a button on a previous mill setup. This connection allows the machine to turn a page in a book when the button is pressed.

<img src="../assets/final/ui.png"  style="width: 100%;"  />




<!-- ### operation -->


### Previous Idea Iterations

#### 1st Version

I was initially planning to develop a modular paper airplane folding machine. I find this project intriguing and drew inspiration from a LEGO creation. I am contemplating the possibility of creating a modularized, faster, and more flexible paper folding device. Through the combination of various modules, it can fold (almost) anything.



- LEGO paper airplane maker
{{< youtube -eNm6MYqgO8 >}}

- Primary Paper Folds
  
<img src="../assets/final/folds.png" alt="avatar" width="60%" />
  
  - Z-Fold Machine
  
<img src="../assets/final/zfold.png" alt="avatar" />

{{< youtube EK1xPAsIV9k >}}

  - 3D printed Paper folding machine

<img src="../assets/final/3d2.jpg" alt="avatar"  />

{{< youtube Hg4_dVEAZho >}}

#### 2nd Version
Origami Folding by a Robotic Hand, this study, conducted by Kenta Tanaka, Yusuke Kamotani, and Yasuyoshi Yokokohji, explores the application of a robotic hand in the art of origami folding. Through their experiments, they demonstrate that a system comprised of four three-degree-of-freedom robotic arms can perform precise manipulation of paper, enabling it to accomplish intricate origami tasks. The findings of this research highlight the advanced capabilities of robotic hands in engaging in origami activities. [Link](https://www.fujipress.jp/jrm/rb/robot002000040550/)

<img src="../assets/tracking/o1.jpg"  style="zoom: 70%;"  />
<img src="../assets/tracking/o2.jpg"  style="zoom: 50%;"  />
<img src="../assets/tracking/o3.jpg"  style="zoom: 50%;"  />

</br></br>

design purpose and goals
- Design a robot that can fold a sheet of origami paper in half on a table as shown in Fig.1. The accuracy of folding must be the same as for a human and the robot
configuration should be as simple as possible.
- The approach to design a specialized machine should not be taken. In other words, keep the table flat and do not use any jigs.
- Do not be constrained by the appearance of the human hand when designing a robot hand. 
