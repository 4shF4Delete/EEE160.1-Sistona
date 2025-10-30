clc;
clear;

// Define the differential equation dy/dt = -3y + 10
deff('dy = f(t, y)', 'dy = -3*y + 10');

// Define initial condition and time range
y0 = 2; // y(0) = 2
t = 0:0.1:10; // time vector

// Solve numerically using ode()
y = ode(y0, 0, t, f);

// Plot the result
plot(t, y)
title("System Response for dy/dt = -3y + 10, y(0)=2")
xlabel("Time (t)")
ylabel("y(t)")
