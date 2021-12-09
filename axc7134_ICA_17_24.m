%{
 Aditya Chaudhari ENGR 1250-008 04/04/20
 Plots the graph of experimental data given. 
Variables:
speed=speed of the car
Reactiondistance= reaction distance of the car(dr)
Brakingdistance= Braking distance(db)
%}

clear
clc
close all

%initializing variables
speed=[20 30 40 50 60 70];
Reactiondistance=[6 9 12 15 18 21];
Brakingdistance=[6 14 24 38 55 75];

%plotting the graph
plot(speed,Reactiondistance,'sb',speed,Brakingdistance,'og')

%labelling the axis
xlabel('speed(v)[mph]')
ylabel('Distance(d)[m]')

%grid to be displayed
grid on

axis([10 80 0 80])

legend('Reaction Distance(dr)','Braking Distance(db)','Location','Best')
