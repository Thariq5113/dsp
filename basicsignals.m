%%SIMULATION OF BASIC TEST SIGNALS

clc;
clear all;
close all;
 
%%unit impulse

t1=-5:1:5;
y1=[zeros(1,5),ones(1,1),zeros(1,5)];
subplot(3,3,1);
stem(t1,y1);
xlabel('Time Index');
ylabel('Amplitude');
title('Unit Impulse');

%%unit step

t2=-5:1:5;
y2=[zeros(1,5),ones(1,6)];
subplot(3,3,2);
stem(t2,y2);
xlabel('Time Index');
ylabel('Amplitude');
title('Unit Step');

%%ramp

t3=0:1:5;
y3=t3;
subplot(3,3,3);
stem(t3,y3,'b');
hold on;
plot(t3,y3);
hold off;
legend("discrete","continous");
xlabel('time index');
ylabel('Amplitude');
title(' Ramp');

%%sin
t4=0:0.01:1;
f1=10;
y4=sin(2*pi*f1*t4);
subplot(3,3,4);
plot(t4,y4);
xlabel('frequency');
ylabel('amplitude');
title('Sin');

%Cos
t5=0:0.01:1;
f2=10;
y5=cos(2*pi*f2*t5);
subplot(3,3,5);
plot(t5,y5);
xlabel('frequency');
ylabel('amplitude');
title('Cos');

% Unipolar
t6 = 0:0.001:1;
f3 = 10;
y6 = sqrt(square(2*pi*f3*t6));
subplot(3,3,6);
plot(t6, y6);
axis([0 1 -2 2]);
xlabel('frequency');
ylabel('amplitude');
title('UniPolar');

%Bipolar
t7 = 0:0.001:1;
f4 = 10;
y7 = square(2*pi*f4*t7);
mtlab_axis=([0 1 2 -2]);
subplot(3,3,7);
plot(t7, y7);
xlabel('frequency');
ylabel('amplitude');
title('BiPolar');

% Exponential rise
t8=0:0.01:5;
y8=exp(t8);
subplot(3,3,8);
plot(t8,y8,'-');
xlabel('frequency');
ylabel('amplitude');
title('Exponential rise');

% triangular wave
f5=10;
t9=0:0.025:1;
y9=sin(2*pi*f5*t9);
subplot(3,3,9);
stem(t9,y9,"r");
plot(t9, y9);
xlabel("time");
ylabel("amplitude");



