clear
clc

dist=[242 379 439 510 690];
vol=[3130 6840 9250 13000 23800];
Params=polyfit(log10(dist),log10(vol),1);
m=Params(1);
b=10^Params(2);
t2=5000;
M2=nthroot(t2/b,m)