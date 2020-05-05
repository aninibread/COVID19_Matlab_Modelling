%% SIR_Model for COVID-19
clf;
%% Differential Equation
N = 10^7; % Susceptable Population
I_0 = 10; %Initial infected individual
tspan = [0 1000]; %From 0 to 70 days
%% 
b = 2; %Number of close contacts per day
k = 1/3; %Portion of I that recovers per day
y0 = [1, I_0/N, 0]; %Initial Values

[t,y] = ode45( @(t,y)COVID_19(t,y,b,k), tspan, y0);

%% Plot
plot(t,y)
axis([0 1000 0 1.05])
yticks(0:0.1:1.2)
legend('Susceptible','Infectious','Recovered','location', 'east')
title('SIR Model for Question 4, b=2.0')
xlabel('t (Days)'), ylabel('s(t), i(t), r(t)')
grid on;
grid minor;
