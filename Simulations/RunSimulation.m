
% RunSimulation.m
% Sets parameters and runs the Bidirectional DC-DC Simulink model created by build_bidirectional_model.m

modelName = 'Bidirectional_DC_DC_Model';
if ~exist([modelName '.slx'], 'file')
    error('Model file not found. Run build_bidirectional_model.m first.');
end

load_system(modelName);
% Example parameters
simTime = 5; % seconds
set_param(modelName, 'StopTime', num2str(simTime));

% Run simulation (this will run the placeholders)
simOut = sim(modelName, 'ReturnWorkspaceOutputs', 'on');

% Save a simple results.mat file to be plotted by Python
time = linspace(0, simTime, 100)';
% Example signals (synthetic)
batteryPower = 100 * sin(2*pi*0.2*time); % kW (positive = charge, negative = discharge)
busVoltage = 400 + 10*sin(2*pi*0.1*time);
save('Simulations/Data/results.mat', 'time', 'batteryPower', 'busVoltage');
fprintf('Simulation finished. Results saved to Simulations/Data/results.mat\\n');
