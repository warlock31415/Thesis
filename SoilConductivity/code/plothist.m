#! /usr/bin/octave

close all;
clear; clc;
%python("./BulkPermittivity.py")
f = csvread("gamma.csv");

mag = f(:,1);
angle = f(:,2);

mean(mag)
hist(mag,20);
