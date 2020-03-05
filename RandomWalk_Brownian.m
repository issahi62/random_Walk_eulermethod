%% Random walk formulation 
% Developed by Ibrahim Issah 
% University of Eastern Finland 
% Msc. Photonics

%% INITIALIZE 
clear 
close all
clc 

%% DASHBOARD
nsteps = 10;  %% Number of steps

x = zeros(nsteps,1); 
y = zeros(nsteps,1); 
x(1) = 0; 
y(1) = 0; 

for iter = 1:nsteps 
    
    dx =randn(); %% random numbers in the x-direction
    dy =rand();  %% random numbers in the y-direction
    
    x(iter+1) = dx; %% xvalues
    y(iter+1) = dy; %% yvalues
    
end
 
%% Plotting of figures
scatter(x, y, 'o', 'LineWidth', 2);
hold on 
plot(x, y, 'b-', 'LineWidth', 2);
xlabel('x (a.u)'); 
ylabel('y (a.u)', 'Rotation', 0, ...
        'HorizontalAlignment', 'right'); 
title('Random motion', 'Interpreter', 'Latex');


