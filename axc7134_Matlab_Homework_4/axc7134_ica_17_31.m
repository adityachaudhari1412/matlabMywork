%{
 Aditya Chaudhari ENGR 1250-008 04/04/20
 Plots the graph of experimental data given. 
Variables:
T= Temperature(T)[Celsius]
Rc= Resistance of Carbon Film(R)[ohm]
Rd= Resistance of Doped Silicon(R)[ohm]
%}

clear
clc
close all

%initializing the variable
T=[15 20 25];
Rc=[10.050 10.048 10.045];
Rd=[10.15 9.85 9.48];

%plotting the graph
plot(T,Rc,'sb',T,Rd,'*r')

%labelling the axis
xlabel('Temperature(T)[Celsius]')
ylabel('Resistance (R)[ohm]')

%grid to be displayed
grid on

axis([10 30 9 11])


%polyfit(Linear Trendline)
C=polyfit(T,Rc,1);
m=C(1);
b=C(2);
Tpf=[10:5:30];
Rcpf=[m*Tpf+b];

C2=polyfit(T,Rd,1);
m2=C2(1);
b2=C2(2);
Tpf2=[15:1:25];
Rdpf=m2*Tpf2+b2;

hold on
plot(Tpf,Rcpf,'b','LineWidth',2)
plot(Tpf2,Rdpf,'r','LineWidth',2)
legend('Resistance of CarbonFilm','Resistance of DopedSilicon','Location','Best')
TE=sprintf('R=%0.3fT+%0.3f',m,b);
text(9,10,TE,'BackgroundColor','w','EdgeColor','b','Color','b','FontSize',10)
TE2=sprintf('R=%0.3fT+%0.3f',m2,b2);
text(23,9.6,TE,'BackgroundColor','w','EdgeColor','r','Color','r','FontSize',10)