#! /usr/bin/octave

close all;
clear; clc;
%python("./BulkPermittivity.py")
f = csvread("gamma.csv");

mag = f(:,1);

mean_mag = mean(mag)
hist(mag,20);
