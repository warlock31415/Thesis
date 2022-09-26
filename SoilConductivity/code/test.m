#! /usr/bin/octave
pkg load miscellaneous
c = physical_constant("speed of light in vacuum");
u0 = 4e-7*pi;
e0 = 8.8541878128e-12;
d = 1;
f = 2.45e9;

air.n = sqrt(u0/e0);
air.er = 1;
air.beta = 2*pi*f/c;

soil.er = 3;
soil.n = air.n/sqrt(soil.er);
soil.beta = (2*pi*f/c) * sqrt(soil.er);

water.er = 80;
water.n = air.n/sqrt(water.er);
water.beta = (2*pi*f/c) * sqrt(water.er);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%      ┌───────────────────────────────────┐
% AIR  |  AIR     |   SOIL   |   SOIL     | AIR SOIL
%      |           |           |           |
%      -------------------------------------
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

gamma0 = (air.n-air.n)/(air.n+air.n)
gamma1 = (soil.n-air.n)/(soil.n+air.n)
gamma2 = (soil.n-soil.n)/(soil.n+soil.n)
gamma3 = (air.n-soil.n)/(air.n+soil.n)
gamma4 = -gamma3

exp_term0 = 0;
exp_term1 = exp_term0 + air.beta*d;
exp_term2 = exp_term1 + soil.beta*d;
exp_term3 = exp_term2 + soil.beta*d;
exp_term4 = exp_term3 + air.beta*d;

gamma_bulk = gamma0*exp(-2*1j*exp_term0) + gamma1*exp(-2*1j*exp_term1) + ...
            gamma2*exp(-2*1j*exp_term2) + gamma3*exp(-2*1j*exp_term3) + ...
            gamma4*exp(-2*1j*exp_term4)
            
n = -air.n*(gamma_bulk + 1)/(gamma_bulk - 1)
er = air.n/abs(n)
