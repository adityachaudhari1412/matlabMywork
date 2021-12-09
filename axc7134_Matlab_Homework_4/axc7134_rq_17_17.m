%{
 Aditya Chaudhari ENGR 1250-008 04/04/20
 Plots the graph of experimental data given. 
Variables:
P= Power(p)[hp]
D= Diameter(D)[ft]
%}

clear
clc
close all

%initializing the variable
P=[0.004 0.04 0.13 0.65 3 8 18 22];
D=[0.5 0.75 1 1.5 2 2.25 2.5 2.75];

%plotting the graph
plot(D,P,'sk','MarkerSize',6,'MarkerFaceColor','k')

%labelling the axis
xlabel('Diameter(D)[ft]')
ylabel('Power(P)[hp]')

%giving title
title('Turbine Power')

%grid to be displayed
grid on

%setting axis
axis([0 3 0 25])


%polyfit to determine a power relationship for data set(power trendline)
C=polyfit(log(D),log(P),1);
m=C(1);
b=exp(C(2));

Dpf=[0.0:0.5:2.80];
Ppf=b*Dpf.^m;

hold on
plot(Dpf,Ppf,'r','LineWidth',2)

T2=sprintf('P=%0.3fD^{%0.3f}',b,m);
text(2.2,8,T2,'BackgroundColor','w','EdgeColor','r','Color','r','FontSize',10)




