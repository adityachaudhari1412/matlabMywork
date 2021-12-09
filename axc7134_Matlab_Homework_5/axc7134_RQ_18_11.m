%Aditya Chaudhari, 1001747134, ENGR 1250-002
clear
clc
close all

%Takes altitude from user[meters]
H=input('Enter the altitude[meters]: ');
% IF/ IFELSE statements
if H<0 || H>=50000
   error('Please enter a positive value less than 50000');
end

if H<11000
    T=15.05-0.00649*H;
    P=101.29*power((T+273.1)/288.08,5.256);
     phase='troposphere';
   
elseif H>=11000 && H<25000
    T=-56.46;
  
    P=power(22.65,1.73-0.000157*H);
    phase='lower stratosphere';
    
elseif H>=25000 && H<50000
    T=-131.21+0.00299*H;
    P=2.488*power((T+273.1)/216.6,-11.388);
    phase='upper stratosphere';
end

fprintf("The altitude is in %s with temperature %0.2f celcius and pressure %0.2f kilopascals.\n",phase,T,P);