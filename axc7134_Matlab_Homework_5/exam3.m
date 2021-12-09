clear
clc
close all
WeekDay=menu('What cereal would you like to order?','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday');
if WeekDay==6|| WeekDay==7
   error('This is not a work day.');
end

