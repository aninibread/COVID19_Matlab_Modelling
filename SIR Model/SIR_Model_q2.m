%% SIR_Model for COVID-19
clf;
%% Differential Equation
N = 10^7;
I_0 = 10;
tspan = [0 1000];
b = 0.8;
k = 1/3;
y0 = [1, I_0/N, 0];

[t,y] = ode45( @(t,y)COVID_19(t,y,b,k), tspan, y0);

%% Plot
plot(t,y)
axis([0 1000 0 1.05])
yticks(0:0.1:1.2)
legend('Susceptible','Infectious','Recovered','location','east')
title('SIR Model for Question 2')
xlabel('t (Days)'), ylabel('s(t), i(t), r(t)')
grid on;
grid minor;