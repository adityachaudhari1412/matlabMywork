%{
 Aditya Chaudhari ENGR 1250-008 04/04/20
 Plots the graph of experimental data given. 
Variables:
A= Resistance of first photoresistor (R)[ohm]
B=Resistance of second photoresistor (R)[ohm]
C=Resistance of third photoresistor (R)[ohm]
D= Distance from light(D)[m]
%}

clear
clc
close all

%initializing the variable
D=[1 3 6 10];
A=[79 400 1100 2500];
B=[150 840 2500 4900];
C=[460 2500 6900 15000];

%plotting the graph
plot(D,A,'sb',D,B,'og',D,C,'*k')

%labelling the axis
xlabel('Distance(D)[m]')
ylabel('Resistance (R)[ohm]')

%grid to be displayed
grid on 

axis([0 12 70 15100])


%polyfit(power trendline)
C1=polyfit(log(D),log(A),1);
m=C1(1);
b=exp(C1(2));
Dpf=[0:10:15000];
Rpf=b*Dpf.^m;

C2=polyfit(log(D),log(B),1);
m2=C2(1);
b2=exp(C2(2));
Dpf2=[1:20:15020];
Rpf2=b2*Dpf2.^m2;

C3=polyfit(log(D),log(C),1);
m3=C3(1);
b3=exp(C3(2));
Dpf3=[0:15:15015];
Rpf3=b3*Dpf3.^m3;

hold on
plot(Dpf,Rpf,'b','LineWidth',2)
plot(Dpf2,Rpf2,'g','LineWidth',2)
plot(Dpf3,Rpf3,'k','LineWidth',2)
legend('Resistance(A)','Resistance(B)','Resistance(C)','Location','Best')

T=sprintf('P=%0.3fD^{%0.3f}',b,m);
text(8,2000,T,'BackgroundColor','w','EdgeColor','b','Color','b','FontSize',10)

T2=sprintf('P=%0.3fD^{%0.3f}',b2,m2);
text(6,4000,T2,'BackgroundColor','w','EdgeColor','g','Color','g','FontSize',10)

T3=sprintf('P=%0.3fD^{%0.3f}',b3,m3);
text(5,10000,T3,'BackgroundColor','w','EdgeColor','k','Color','k','FontSize',10)



