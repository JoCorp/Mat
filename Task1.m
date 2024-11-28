clear all
close all

% main

% load parameters

load('p.mat', 'p')

time = [0 10];

% definition of R1_0 R2 and u

% This is also kind of unlucky, as the initCond vector and the output
% vector have to have the same length. It would be better to save R2 and u1
% directly in the model1 method, but I dont think we are supposed to do
% that

y0 = [3 1 1];

% ODE function

[time, y] = ode45(@(t,initCond) model1(t,initCond,p), time, y0);

%% plot

figure(1);
subplot(2,1,1)
plot(time, y(:,1), time, y(:,2), time, y(:,3), time, y(:,4), time, y(:,5), time, y(:,6), time, y(:,7), time, y(:,8), time, y(:,9));
xlim([0 10])
ylim([0 10])
legend('Sox9', 'mSox9', 'Sox10', 'mSox10', 'Tcf1', 'mTcf1', 'miR155', 'miR335', 'miR338');
subplot(2,1,2)
plot(time, y(:,10));
xlim([0 10])
ylim([0 10])
legend('OUT');