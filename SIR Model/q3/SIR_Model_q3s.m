%% SIR_Model for COVID-19
clf;
%% I_0=1
N = 10^7; % Susceptable Population
I_0 = 1; %Initial infected individual
tspan = [0 70]; %From 0 to 70 days
b = 0.8; %Number of close contacts per day
k = 1/3; %Portion of I that recovers per day
y0 = [1, I_0/N, 0]; %Initial Values

[t,y] = ode45( @(t,y)COVID_19(t,y,b,k), tspan, y0);

%% Plot
plot(t,y(:,1))
%% I_0 = 10 
hold on;
N = 10^7; % Susceptable Population
I_0 = 10; %Initial infected individual
tspan = [0 70]; %From 0 to 70 days
b = 0.8; %Number of close contacts per day
k = 1/3; %Portion of I that recovers per day
y0 = [1, I_0/N, 0]; %Initial Values

[t,y] = ode45( @(t,y)COVID_19(t,y,b,k), tspan, y0);
%% Plot
plot(t,y(:,1))
%% I_0 = 100 
hold on;
N = 10^7; % Susceptable Population
I_0 = 100; %Initial infected individual
tspan = [0 70]; %From 0 to 70 days
b = 0.8; %Number of close contacts per day
k = 1/3; %Portion of I that recovers per day
y0 = [1, I_0/N, 0]; %Initial Values

[t,y] = ode45( @(t,y)COVID_19(t,y,b,k), tspan, y0);
%% Plot
plot(t,y(:,1))

%% I_0 = 1000 
hold on;
N = 10^7; % Susceptable Population
I_0 = 1000; %Initial infected individual
tspan = [0 70]; %From 0 to 70 days
b = 0.8; %Number of close contacts per day
k = 1/3; %Portion of I that recovers per day
y0 = [1, I_0/N, 0]; %Initial Values

[t,y] = ode45( @(t,y)COVID_19(t,y,b,k), tspan, y0);
%% Plot
plot(t,y(:,1))
%% I_0 = 10000 
hold on;
N = 10^7; % Susceptable Population
I_0 = 10000; %Initial infected individual
tspan = [0 70]; %From 0 to 70 days
b = 0.8; %Number of close contacts per day
k = 1/3; %Portion of I that recovers per day
y0 = [1, I_0/N, 0]; %Initial Values

[t,y] = ode45( @(t,y)COVID_19(t,y,b,k), tspan, y0);
%% Plot
plot(t,y(:,1))
legend('i_0=10^{-7}','i_0=10^{-6}','i_0=10^{-5}','i_0=10^{-4}','i_0=10^{-3}')
axis([0 70 0 1.05])
yticks(0:0.1:1.2)
title('s(t) Curves of SIR Models for Varying i_0')
xlabel('t (Days)'), ylabel('s(t)')
grid on;
grid minor;
