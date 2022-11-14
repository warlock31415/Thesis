% filenames = ["Pratik/Subwater/Ro4003UWB-WET.csv";"Pratik/Subwater/CementUWB-WET.csv";...
%"Pratik/Subwater/Ro4003UWB.csv";"Pratik/Subwater/CementUWB.csv"];

% filenames = ["Pratik/Subwater/Ro4003UWB.csv";"Pratik/Subwater/CementUWB.csv"];

%filenames = ["Pratik/DrySoil/RO4003S22.csv";"Pratik/5percent/RO4003S22.csv";...
%    "Pratik/10percent/RO4003S22.csv";"Pratik/20percent/RO4003S22.csv"];
filenames = ["Pratik/Drysoil/CementS22.csv";"Pratik/5percent/CementS22.csv"; ...
        "Pratik/20percent/CementS22.csv";"Pratik/10percent/CementS22.csv"];
 
%filenames = ["Pratik/Drysoil/RO4003S11Sim.csv";"Pratik/5percent/Ro4003S11Sim.csv"; ...
%        "Pratik/10percent/Ro4003S11Sim.csv";"Pratik/20percent/Ro4003S11Sim.csv"];
%filenames = ["Pratik/Drysoil/CementS11Sim.csv";"Pratik/5percent/CementS11Sim.csv"; ...
%        "Pratik/10percent/CementS11Sim.csv";"Pratik/20percent/CementS11Sim.csv"];
    
%filenames = ["Pratik/ControlS11Vaccum.csv";"Pratik/CementS11Vaccum.csv"];

%filenames = ["Pratik/Drysoil/RO4003S12.csv";"Pratik/5percent/Ro4003S12.csv"; ...
%        "Pratik/10percent/Ro4003S12.csv";"Pratik/20percent/Ro4003S12.csv"];
%filenames = ["Pratik/Drysoil/CementS12.csv";"Pratik/5percent/CementS12.csv"; ...
%       "Pratik/10percent/CementS12.csv";"Pratik/20percent/CementS12.csv"];



phase = zeros(1000,4);

for i = 1:length(filenames)
f = csvread(filenames(i),9,0);


freq = f(:,1)/1e9;
S11 = unwrap(f(:,3));

[m,index] = min(S11);
minf = freq(index);
minS11 = m;

if i < 3
    plot(freq,S11,'LineWidth',2)
else
    plot(freq,S11,'LineWidth',2);
end
hold on;
end
%title("Measured performance in Vacuum after water absorption");
grid on;
legend("Dry","5%","10%","20%",'FontSize',30,'Location','SouthEast');
%legend("Control","Cement",'FontSize',30,'Location','SouthEast');
%legend("Control-Wet","Cement-Wet","Control-Dry","Cement-Dry",'FontSize',30,'Location','SouthEast');
ax = gca;
ax.FontSize = 25; 
grid on;
xlabel("Frequency (GHz)",'Fontsize',30);
ylabel("S_{11} (°)","Fontsize",30);
xlim([0.5 5])
title("S_{11} Phase measurements for the Cement Antenna");

hold off;
