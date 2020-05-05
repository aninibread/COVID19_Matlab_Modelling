%% SIR_Model for COVID-19
clf;
%% Differential Equation
N = 10^7; % Susceptable Population
I_0 = 10; %Initial infected individual
tspan = [0 200]; %From 0 to 70 days
b = 5/14;
k = 1/14; 
y0 = [1, I_0/N, 0];

[t,y] = ode45( @(t,y)COVID_19(t,y,b,k), tspan, y0);
[M,I] = max(y(:,2))

%% Plot
plot(t,y)
axis([0 200 0 1.05])
yticks(0:0.1:1.2)
hold on
plot(53.95,0.4778,'ko')
legend('Susceptible','Infectious','Recovered','i_m','location','southeast')
title('SIR Model for COVID-19, b=5/14 k=1/14')
xlabel('t (Days)'), ylabel('s(t), i(t), r(t)')
grid on;
grid minor;