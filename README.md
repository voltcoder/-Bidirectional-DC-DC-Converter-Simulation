# Bidirectional Battery Charging System using MATLAB/Simulink

## Project Overview
This project presents the simulation of a **Bidirectional DC-DC Converter for Battery Charging and Discharging** using **MATLAB/Simulink**.  
The model demonstrates controlled bidirectional power flow between a DC source and a battery, which is a key requirement in **Electric Vehicles (EVs)** and **Energy Storage Systems (ESS)**.

A **PI-based current control strategy** is implemented to regulate battery charging and discharging current.

---

## Objectives
- To model a bidirectional DC-DC converter in Simulink  
- To control battery charging and discharging using current control  
- To monitor battery voltage, current, and state of charge (SoC)  
- To understand bidirectional power flow used in EV applications  

---

##  Tools & Software
- MATLAB  
- Simulink  
- Simscape Electrical (Power Electronics)  

---

## System Description
The system consists of:
- A **DC source**
- A **bidirectional DC-DC converter** using two controlled switches
- An **LC filter** for smoothing current
- A **battery model** with SoC estimation
- A **PI controller** for current regulation
- PWM generation with complementary gate signals  

The controller compares the **reference battery current** with the **measured battery current** and generates PWM signals to control power flow direction.

---

## Modes of Operation
### Charging Mode
- Power flows from DC source to battery  
- Converter operates in **buck mode**  
- Battery current is regulated using PI controller  

### Discharging Mode
- Power flows from battery to DC side  
- Converter operates in **boost mode**  
- Negative battery current indicates discharge  

---

## Observed Signals
The following parameters are monitored in the simulation:
- Battery Voltage (Vbat)  
- Battery Current (Ibat)  
- State of Charge (SoC %)  
- PWM gate signals  

---

##  How to Run the Simulation
1. Open **MATLAB**
2. Set the working directory to the project folder
3. Open the Simulink model:

**attached in this repository**
---
Developed by Swati Sharma — 2025
