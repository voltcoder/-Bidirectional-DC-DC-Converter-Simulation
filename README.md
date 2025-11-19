
# Bidirectional DC-DC Converter Simulation (EV)

This repository contains a Simulink-based project for a **bidirectional DC-DC converter**, suitable for EV applications (charging from vehicle to grid and regenerative braking from motor to battery).

The project includes:
- A MATLAB script that programmatically builds a Simulink model (`build_bidirectional_model.m`).
- A run script (`RunSimulation.m`) that sets parameters and runs the model.
- Example drive cycle data and a Python plotting tool to visualize results.
- Documentation placeholders and images.

## How to use
1. Open MATLAB (R2019b or later recommended).
2. Run `Simulations/build_bidirectional_model.m` to create the Simulink model in your MATLAB working folder.
3. Run `Simulations/RunSimulation.m` to simulate the model and save results to `Simulations/Data/results.mat`.
4. Use `Python_Tools/plot_results.py` to plot time-series (requires pandas & matplotlib).

## Contents
- `Simulations/` — scripts to build and run the Simulink model, example data.
- `Python_Tools/` — plotting utilities.
- `Documentation/` — design notes and test results (placeholders).

---
Developed by Swati Sharma — 2025
