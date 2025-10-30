clc;
clear;
// Define parameters
R = 50;
L = 0.5;
C = 0.001;
s = poly(0, 's');
// Transfer Function: G(s) = 1/L / (s^2 + (R/L)*s + 1/(L*C))
G = syslin('c', (1/L), s^2 + (R/L)*s + (1/(L*C)));
disp(G, "Transfer Function G(s) = ");
// Impulse Response
t = 0:0.001:0.2;
y = csim('impulse', t, G);
plot(t, y);
title('Impulse Response of RLC Circuit');
xlabel('Time (s)');
ylabel('Amplitude');
xgrid(1);
