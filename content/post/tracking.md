---
title: "Final Project - EMH Reader"
date: 2023-12-20T16:32:11-04:00
draft: false
pin: true
summary: "Final project tracking page, record how to make something that fold (almost) anything strp by step."
---

## Final Project - EMH Reader

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

### Progress Tracking

- conception
- construction
- and operation

### Idea Iterations

- Design a robot that can fold a sheet of origami paper in half on a table as shown in Fig.1. The accuracy of folding must be the same as for a human and the robot
configuration should be as simple as possible.
- The approach to design a specialized machine should not be taken. In other words, keep the table flat and do not use any jigs.
- Do not be constrained by the appearance of the human hand when designing a robot hand. 

<img src="../assets/tracking/o1.jpg"  style="width: 80%;"  />
<img src="../assets/tracking/o2.jpg"  style="width: 80%;"  />
<img src="../assets/tracking/o3.jpg"  style="width: 80%;"  />


### Mechanical Design
<img src="../assets/tracking/0.jpg"  style="width: 80%;"  />
<img src="../assets/tracking/1.jpg"  style="width: 80%;"  />
<img src="../assets/tracking/2.jpg"  style="width: 80%;"  />
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

### Electrical Design

<img src="../assets/tracking/ee1.svg"  style="width: 80%;"  />