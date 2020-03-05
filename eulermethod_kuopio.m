%% Euler method functions to solve
% Developed by Ibrahim Issah 
% University of Eastern Finland 
% Msc. Photonics

%% INITIALIZE 
clear 
close all
clc 

%% ODE FUNCTION
dy = @(t,y) t*cos(sqrt(y));  %% Using functions

%% DASHBOARD
ta = 0;   %% starting point
tn = 10;  %% ending point
h  =.05;  %% stepsize
y  = 1;   %% initial condition

storery =[]; %% for storing y values

fprintf('t_values \t\t Euler method(values) \t\n'); 

for t = ta:h:tn-h
    y = y+dy(t,y)*h;   
    fprintf('%f \t\t %f \n', t, y);
    t  = t+h; %% increment with stepsize
    storery = [(storery), y]; 
    
end 
figure (1); plot(storery,'b-',  'LineWidth', 2.5); 
xlabel('t'); 
ylabel('y'); 
title('Function $y^{1} =tcos(\sqrt{y})$', 'Interpreter', 'Latex','Rotation', 0, ...
        'HorizontalAlignment', 'right');

%%  From taylor series
   % y(x+h)  = y(x) + y'(x)*h; 
 
 %% DASHBOARD 2 
 h = 0.05;          %% step size
 y = zeros(1, 200); %% pre-processing
 y(1) = 1;          %% initial condtion
 t(1) = 0;          %% starting point of t 
 %% TAYLOR FORMULATION 
for iter = 1:199
t(iter+1) = t(iter) +h;
y(iter+1) = y(iter) +h.*(t(iter).*cos(sqrt(y(iter))));
end


figure(2); plot(y, 'b-', 'LineWidth', 2.5); 
xlabel('t'); 
ylabel('y', 'Rotation', 0, ...
        'HorizontalAlignment', 'right'); 
title('Taylor series $y(x+h) = y(x) + y^{1}(x)h$', 'Interpreter', 'Latex');


%% Symbolic integration 

syms y(t)  t; 
expr = diff(y,t) == t*cos(sqrt(y));
cond = y(0) == 1; 
S = dsolve(expr, cond);
disp(S); 



