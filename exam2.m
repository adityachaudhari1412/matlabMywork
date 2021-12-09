%Aditya Chaudhari, 1001747134, ENGR 1250-002
clear
clc
close all

%initialising cell array
Specs={'Crazy Marshmallows',0.100,20,5,22,3.00; 'Cinnamonairs',0.168,20,4.5,24.5,1.75;'Loopy Loops',0.103,20,5.5,30.5,1.50;'Crunch Bunch',0.118,20,7,32,2.50}

%giving the menu choice for user
Choice=menu('What cereal would you like to order?',Specs(1,1),Specs(2,1),Specs(3,1),Specs(4,1));

Box=input('Enter the number of boxes you would like: ');

Username=input(' Enter your name: ','s');

%calculates density Kg/m^3
Dense=Specs{Choice,2}*1000;

%calculates volume m^3
Volume= Specs{Choice,3}*Specs{Choice,4}*Specs{Choice,5}*0.000001;

%calculates mass in Kg
mass=Dense*Volume;

%converted mass into pounds
mass=mass*2.205;

%calculates cost in dollars
Cost=mass*Specs{Choice,6};

CName=Specs{Choice,1};

fprintf("\n %s ordered %0.0f  boxes of %s cereal. The total cost of the order is $%0.2f.",Username,Box,CName,Box*Cost)

CData=[5 10 15 20 25 30; 7 15 22 29 36 44];

i=CData(1,:);
j=CData(2,:);

%plotting the graph
plot(i,j,'dk','MarkerSize',15,'MarkerFaceColor','k');

%grid to be displayed
grid on

%setting axis
axis([0 35 0 50])

%labelling the axis
xlabel('Number of Boxes (N) [#]','FontSize',18,'FontWeight','bold')
ylabel('Total Cost (C) [$] ','FontSize',18,'FontWeight','bold')