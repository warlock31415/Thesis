% Define all required material properties:

%% Permittivity
soil.er = 3.03;
water.er = 80;
air.er = 1;

%% Velocity of EM waves in material
air.v = 2.98e9;
soil.v = air.v/sqrt(soil.er);
water.v = air.v/sqrt(water.er);

%% Propagation constant at f = 2.45GHz
f = 2.45e9;
air.b = 2*pi*f/air.v;
soil.b = air.b*sqrt(soil.er);
water.b = air.b*sqrt(water.er);

%% Characteristic impedance of the material
air.imp = sqrt(4*pi*1e-7/8.8541878e-12);
soil.imp = air.imp/sqrt(soil.er);
water.imp = air.imp/sqrt(water.er);

%% Other nice things to have
air.name = "air";
air.num = 1;

soil.name = "soil";
soil.num = 2;

water.name = "water";
water.num = 3;

% Get a soil cross section depending on probability:

%% Number of particles to generate
DEPTH = 100;

%% Define total water content as a percentage with a max of 30%
WATER_CONTENT = 10;

content_count = zeros(1,3);

for i=1:DEPTH
    m = rand;
    if m > 0.30 
        mat = soil;
        content_count(soil.num) = content_count(soil.num) + 1;
        %display("Got soil")
    elseif m <= WATER_CONTENT/100
        mat = water;
        content_count(water.num) = content_count(water.num) + 1;
        %display("Got water");
    else 
        mat = air;
        content_count(air.num) = content_count(air.num) + 1;
        %display("Got air");
    endif
    soil_cs{i} = mat;
endfor

pie(content_count,[0,0,1]);
legend("Air","Soil","Water");
title("Actual composition of the soil sample")

% Print the first 20 slices
for i=1:20
    display(soil_cs{i}.name);
endfor

gamma(1) = (soil_cs{1}.imp - air.imp)/(soil_cs{1}.imp + air.imp);
for i=2:DEPTH
    gamma(i) = (soil_cs{i}.imp - soil_cs{i-1}.imp)/(soil_cs{i}.imp + soil_cs{i-1}.imp);
endfor

beta_sum = 0;
for i=2:DEPTH
    beta_sum(i) = beta_sum(i-1) + soil_cs{i}.b;
endfor

Gamma = 0;
for i=1:DEPTH
    Gamma = Gamma + gamma(i)*exp(-2*1j*beta_sum(i));
endfor

imp_bulk = -(Gamma+1)*air.imp/(Gamma-1)

er_bulk = (4*pi*1e-7/(imp_bulk^2))/8.8541878e-12
abs(er_bulk)
