%Aditya Chaudhari, 1001747134, ENGR 1250-002
clear
clc
close all

%Takes power input from user
Power=input('Enter the power used by your Apple TV[Watt]: ');
%intialising variables
P1= 0.5;
P2=1.5;
P3=1.6;
P4=2;
% IF/ IFELSE statements
if Power<P1
   State= 'Off/Standby';

elseif Power>=P1 && Power<=P2
   State='idle';
    
elseif Power>P2 && Power<=P3
   State='Streaming via Ethernet';
     
elseif Power>P3 && Power<=P4
   State='Streaming via Wifi';
    
else
   State='unknown';
end

fprintf('The state of the TV is %s.\n',State)