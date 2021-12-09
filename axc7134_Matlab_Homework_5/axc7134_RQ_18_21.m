%Aditya Chaudhari, 1001747134, ENGR 1250-002
clear
clc
close all

%Takes numeric value of grade from user(0 to 100
Grade=input('Enter a grade in numerical from: ');
% IF/ IFELSE statements
if 90<=Grade
   fprintf('A\n');

elseif 80<=Grade<90
    fprintf('B\n');

elseif 70<=Grade<80
     fprintf('C\n');

elseif 60<=Grade<70
     fprintf('D\n');

elseif Grade<60
    fprintf('F\n');
end