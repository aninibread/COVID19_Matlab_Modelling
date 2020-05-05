%% SIR_Model for COVID-19
clf;
%% I_0=1
N = 10^7; % Susceptable Population
I_0 = 10; %Initial infected individual
tspan = [0 150]; %From 0 to 70 days
b = 0.5; %Number of close contacts per day
k = 1/3; %Portion of I that recovers per day
y0 = [1, I_0/N, 0]; %Initial Values

[t,y] = ode45( @(t,y)COVID_19(t,y,b,k), tspan, y0);

%% Plot
p1 = plot(t,y,'b');
%% I_0 = 10 
hold on;
N = 10^7; % Susceptable Population
I_0 = 10; %Initial infected individual
tspan = [0 150]; %From 0 to 70 days
b = 0.8; %Number of close contacts per day
k = 1/3; %Portion of I that recovers per day
y0 = [1, I_0/N, 0]; %Initial Values

[t,y] = ode45( @(t,y)COVID_19(t,y,b,k), tspan, y0);
%% Plot
p2 = plot(t,y,'m');
%% I_0 = 10 
hold on;
N = 10^7; % Susceptable Population
I_0 = 10; %Initial infected individual
tspan = [0 150]; %From 0 to 70 days
b = 1; %Number of close contacts per day
k = 1/3; %Portion of I that recovers per day
y0 = [1, I_0/N, 0]; %Initial Values

[t,y] = ode45( @(t,y)COVID_19(t,y,b,k), tspan, y0);
%% Plot
p3 = plot(t,y,'g');
%% I_0 = 100 
hold on;
N = 10^7; % Susceptable Population
I_0 = 10; %Initial infected individual
tspan = [0 150]; %From 0 to 70 days
b = 1.5; %Number of close contacts per day
k = 1/3; %Portion of I that recovers per day
y0 = [1, I_0/N, 0]; %Initial Values

[t,y] = ode45( @(t,y)COVID_19(t,y,b,k), tspan, y0);
%% Plot
p4 = plot(t,y,'Color',[0.4940, 0.1840, 0.5560]);

%% I_0 = 10000 
hold on;
N = 10^7; % Susceptable Population
I_0 = 10; %Initial infected individual
tspan = [0 150]; %From 0 to 70 days
b = 2.0; %Number of close contacts per day
k = 1/3; %Portion of I that recovers per day
y0 = [1, I_0/N, 0]; %Initial Values

[t,y] = ode45( @(t,y)COVID_19(t,y,b,k), tspan, y0);
%% Plot
p5 = plot(t,y,'r');
legend([p1(1), p2(1), p3(1), p4(1), p5(1)],'b=0.5','b=0.8','b=1.0','b=1.5','b=2.0','location','bestoutside')
axis([0 150 0 1.05])
yticks(0:0.1:1.2)
title(sprintf('SIR Models for Question 4, 0.5 \x2264 b \x2264 2.0'))
xlabel('t (Days)'), ylabel('s(t), r(t), i(t)')
set(gcf, 'units', 'normalized');
set(gcf, 'Position', [0, 0.1, 1, 0.75]);
grid on;
grid minor;
