%{
 Aditya Chaudhari ENGR 1250-008 04/04/20
Problem statement- Calculates power and energy used by burner and burner efficiency.
Variables:
t=time required for water to boil[min]
p1=power of the stove top burner[W]
p2=power used by burner[W]
e= energy reguired by burner[J]
a= burner efficiency[%]
w= density of water[g/L]
m= mass of water[g]
c= specific heat of water[J/g]
v= volume of water[L]

%}

clear
clc

%Set input variables listed above
w=1000;
v=3.78541
c=4.18;
temp= input('Type the initial room temperature of the water [deg F]: ');
t= input('Type the time it takes the water to boil [min]: ');
b=input('Type the brand name and model of your stove: ','s');
p1=input('Type the power of the stove-top burner[W]: ');
temp1=(temp-32)/1.8;
%calculates energy
m=v*w;
e=c*m*(100-temp1);
%calculates power used by burner(p2)
p2=e/(t*60);
%calculates burner efficiency
a=(p2/p1)*100;
fprintf('Energy required:          %0.0f J\n',e);
fprintf('Power used by burner:     %0.0f W\n\n',p2);
fprintf('Burner efficiency for a %s stove:%0.1f%%',b,a);