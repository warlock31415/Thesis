#!/usr/bin/octave

filename1 ="Pratik/Drysoil/Ro4003S11Sim.csv";
filename2 = "Pratik/5percent/Ro4003S11Sim.csv";
filename3 = "Pratik/10percent/Ro4003S11Sim.csv";
filename4 = "Pratik/20percent/Ro4003S11Sim.csv";


f = csvread(filename1);
freq = f(2:end,1);
S11 = f(2:end,2);
plot(freq,S11)
hold on;

f = csvread(filename2);
freq = f(2:end,1);
S11 = f(2:end,2);
plot(freq,S11)

f = csvread(filename3);
freq = f(2:end,1);
S11 = f(2:end,2);
plot(freq,S11)

f = csvread(filename4);
freq = f(2:end,1);
S11 = f(2:end,2);
plot(freq,S11)

hold off;

grid on;
xlim([0.5 5]);
title("Simulated change in antenna properties for the Control antenna")
xlabel("Frequency (GHz)");
ylabel("$S_{11}$ (dB)","interpreter","latex");

legend("Dry soil","5% water","10% water","20% water");
