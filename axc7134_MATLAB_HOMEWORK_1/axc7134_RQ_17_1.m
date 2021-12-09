%{
 Aditya Chaudhari ENGR 1250-008 04/04/20
Problem statement- Calculates the lenght of a side of gold cube in inches.
Variables:
SG= Specific gravity of gold
o= density of object[kg/m^3]
w= density of water [kg/m^3]
m= mass of gold cube[kg]
v= volume of gold cube[m^3]
l= length of gold cube[in]
%}

clear
clc

%Set input variables listed above
SG=19.3;
w= 1000;
m= input('Enter the mass of the cube[Kilograms]: ');
%To find length first we have to find density of object then volume then
%length[m] and convert it to inches.
%Calculates density of object[o]
o=SG*w;
%calculates volume
v=m/o;
%calculates length
l=nthroot(v, 3)*39.37;
fprintf('The length of one side of the cube is %0.2f inches.',l);
