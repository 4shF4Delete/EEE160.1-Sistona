
// Define constants
R = 1000;
C = 0.0001;
s = poly(0, 's');
// Transfer Function: G(s) = 1 / (RC*s + 1)
G = syslin('c', 1, R*C*s + 1);
disp(G, "Transfer Function G(s) = ");
// Step Response
t = 0:0.01:1;
y = csim('step', t, G);
plot(t, y, 'g');
title('Step Response of RC Circuit');
xlabel('Time (s)');
ylabel('Output Voltage (V)');
xgrid(1);

// Bode Plot of RC Circuit
bode(G);
title('Bode Plot of RC Circuit');
