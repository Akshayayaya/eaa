//LINEAR BROADSIDE ARRAY
clc;
clear;
n = 10; 
lambda = 1; 
d = lambda/4; 
k = (2*%pi)/lambda; 
theta = 0.0001:0.01:2*%pi; 
beta = 0;
psi = k*d*cos(theta)+beta; 
AF = sin(n.*psi/2)./(n*sin(psi/2)); 
polarplot(theta,AF);	
d2 = lambda/8; 
psi = k*d2*cos(theta)+beta;	
AF =sin(n.*psi/2)./(n*sin(psi/2)); 
xset('line style',3);
polarplot(theta,AF);	
title("POLAR PLOT FOR ARRAY FACTOR PATTERN FOR N ELEMENT UNIFORM AMPLITUDE BROADSIDE ARRAY CASE:N=10,d=lambda/4 and d2=lambda/8 beta=0");
h1=legend('d=lambda/4','d2=lambda/8');

