x = [0 5 10 20];
control = [2.561,2.147,1.3595,0.8465];
cement = [2.25325,1.94,1.2424,0];

curve_fit = (control+cement)/2;

plot(x,control,'-o',x,cement,'-o','LineWidth',2);
grid on;
hold on;

x = linspace(0,0.2,100);
curve=zeros(1,length(x));

for i=1:length(x)
    if x(i) <= 0.05
        curve(i) = -7.27*x(i)+2.407;
    elseif x(i) <= 0.1
        curve(i) = -14.87*x(i)+2.787;
    else
        curve(i) = -8.767*x(i)+2.176;
    end
end

plot(x*100,curve,'--k','LineWidth',2);
xlabel("Water content (%)",'Fontsize',20);
ylabel("Resonant frequency (GHz)","Fontsize",20);

legend("Control","Cement","Curve fit",'FontSize',16);