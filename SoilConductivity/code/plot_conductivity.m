#! /usr/bin/octave

clear;close all;clc

files = ["../measurements/dry-soil.csv";...
"../measurements/5percent-water-by-weight.csv";...
"../measurements/10percent.csv";...
"../measurements/20percent.csv"];


figure
for i = 1:rows(files)-1

  file = csvread(deblank(files(i,:)));

  f = file(2:end-1,1);
  e_real = file(2:end-1,2);

  display("Permittivity")
  fc = find(f>2.5e9);
  fc = fc(1);
  e_int = e_real(fc)

  title("Relative permittivity over frequency")
  subplot(2,1,1)
  plot(f,e_real);
  grid on;
  hold on;

end
hold off;


for i=1:rows(files)-1
  file = csvread(deblank(files(i,:)));
  e_imag = file(2:end-1,3);
  f = file(2:end-1,1);

  subplot(2,1,2);
  plot(f,e_imag);
  hold on
  title("Complex Relative permittivity over frequency")
  grid on
  xlabel("frequency (Hz)","interpreter","latex")
  ylabel('$\epsilon$',"interpreter","latex")
end
hold off


%% Conductivity

figure;
for i = 1:rows(files)-1
  file = csvread(deblank(files(i,:)));
  e_imag = file(2:end-1,3);
  f = file(2:end-1,1);
  display("conductivity")
  fc = find(f>2.5e9);
  fc = fc(1);


  conductivity = 2*pi*e_imag.*f;
  conductivity_int = conductivity(fc)
  plot(f,conductivity);
  hold on;
  grid on;
end;
hold off;
xlim([2.5e9 3e9]);
ylim([0 2e10])







