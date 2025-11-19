
# plot_results.py
# Simple plotting script to visualize simulation outputs saved by RunSimulation.m
import scipy.io as sio
import pandas as pd
import matplotlib.pyplot as plt

mat = sio.loadmat('../Simulations/Data/results.mat')
time = mat['time'].squeeze()
batteryPower = mat['batteryPower'].squeeze()
busVoltage = mat['busVoltage'].squeeze()

fig, ax1 = plt.subplots()
ax1.plot(time, batteryPower)
ax1.set_xlabel('Time (s)')
ax1.set_ylabel('Battery Power (kW)')
ax1.grid(True)

ax2 = ax1.twinx()
ax2.plot(time, busVoltage, linestyle='--')
ax2.set_ylabel('DC Bus Voltage (V)')

plt.title('Bidirectional DC-DC Simulation Results')
plt.show()
