%{
 Aditya Chaudhari ENGR 1250-008 04/04/20
 Plots the graph by theoritical plot. 
Variables:
c=initial concentration(grams)
decay=rate of decay of isotope(hours)
%}

clear
clc
close all

figure('color','w');

%Initializing variables
c=10;
decay=1.48;

time=[0:0.1:5];

%calculates the temperature
m= c*exp(-time/decay);

%plotting the graph
plot(time,m)

%Giving title
title('Rate of decay of the radioactive isotope')

%labelling the axis
xlabel('Time[hr]')
ylabel('Concentration[M](gm)')

%grid to be displayed
grid on

%setting axis
axis([0 5 0 10])