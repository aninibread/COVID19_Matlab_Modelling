%% SIR_Model for COVID-19
clf;
%% Differential Equation
N = 10^7; % Susceptable Population
I_0 = 10; %Initial infected individual
tspan = [0 1000]; %From 0 to 70 days
b = 0.8; %Number of close contacts per day
k = 1/3; %Portion of I that recovers per day
y0 = [0.9, I_0/N, 0.1]; %Initial Values

[t,y] = ode45( @(t,y)COVID_19(t,y,b,k), tspan, y0);

%% Plot
plot(t,y)
axis([0 1000 0 1.05])
yticks(0:0.1:1.2)
legend('Susceptible','Infectious','Recovered','location','east')
title('SIR Model for Question 8, s=0.9 r=0.1')
xlabel('t (Days)'), ylabel('s(t), i(t), r(t)')
grid on;
grid minor;