theta = linspace(0,1,1000);

er = 3.03 + 9.3*theta + 146.0*theta.^2 - 76.7*theta.^3;


plot(theta,er,'LineWidth',4);
ax = gca;
ax.FontSize = 25; 
grid on;

xlabel("Volumetric water content (m^3/m^3)",'Fontsize',30);
ylabel("Relative permittivity","Fontsize",30);
