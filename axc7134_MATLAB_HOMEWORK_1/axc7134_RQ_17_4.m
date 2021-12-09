%{
 Aditya Chaudhari ENGR 1250-008 04/04/20
Problem statement- Calculates distance traveled in kilometers by
microjoule.
Variables:
SG= Specific gravity of ethanol.
w= density of water[kg/m^3]
v=volume of ethanol[m^3]
d=density of ethanol[kg/m^3]
m= mass of ethanol[grams]
c= consumption of ethanol[miles/gallon]
L= distance traveled by microjoule[km]

%}

clear
clc

%Set input variables listed above
SG=0.789;
w= 1000;
m= input('Enter the mass of ethanol[grams]: ');
c=10705;
%Calculates distance traveled by microjoule
%To calculate distance first we will find density then volume to get the
%istance in miles which we will convert to kilometers

%Calculates density
d= SG*w;
%calculates volume
v= (m*10^-3/d)*264.172;
%calculates distance
L=(c*v)*1.60934;
fprintf('The distance the Microjoule traveled is %0.0f kilometers.',L);
