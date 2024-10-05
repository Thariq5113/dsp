clc;
clear all;
close all;

% First Subplot: Continuous Signal
subplot(2,2,1);
t = 0:0.01:1; % Time vector
f = 10; % Frequency of the sine wave
y = sin(2*pi*f*t); % Continuous sine wave
plot(t, y);
grid(true);
xlabel("Time");
ylabel("Amplitude");
title("Continuous Signal");

% Second Subplot: Under-Sampled Signal
subplot(2,2,2);
fs = 0.5 * f; % Under-sampling frequency (below Nyquist)
t1 = 0:1/fs:1; % Time vector for under-sampling
y1 = sin(2*pi*f*t1); % Under-sampled sine wave
stem(t1, y1); % Discrete points
hold on;
plot(t1, y1); % Connect the points with a line
grid(true);
xlabel("Time");
ylabel("Amplitude");
title("Under Sampled Signal");

% Third Subplot: Nyquist Sampled Signal
subplot(2,2,3);
fs2 = 3 * f; % Nyquist sampling frequency
t3 = 0:1/fs2:1; % Time vector for Nyquist rate
y2 = sin(2*pi*f*t3); % Nyquist-sampled sine wave
stem(t3, y2); % Discrete points
hold on;
plot(t3, y2); % Connect the points with a line
grid(true);
xlabel("Time");
ylabel("Amplitude");
legend("Discrete", "Continuous");
title("Nyquist Sampled Signal");

% Fourth Subplot: Over-Sampled Signal
subplot(2,2,4);
fs2 = 100 * f; % Over-sampling frequency
t3 = 0:1/fs2:1; % Time vector for over-sampling
y2 = sin(2*pi*f*t3); % Over-sampled sine wave
stem(t3, y2); % Discrete points
hold on;
plot(t3, y2); % Connect the points with a line
grid(true);
xlabel("Time");
ylabel("Amplitude");
legend("Discrete", "Continuous");
title("Over Sampled Signal");
