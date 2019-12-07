function [D,E,F,h,k,r]=Problem2(x1,y1,x2,y2,x3,y3)
syms D E F
Eq1=((x1)*D)+((y1)*E)+F+(x1^2)+(y1^2)==0;
Eq2=((x2)*D)+((y2)*E)+F+(x2^2)+(y2^2)==0;
Eq3=((x3)*D)+((y3)*E)+F+(x3^2)+(y3^2)==0;
Solve = solve([Eq1, Eq2, Eq3], [D, E, F]);
D=Solve.D;
E=Solve.E;
F=Solve.F;
h=-D/2;
k=-E/2;
r=sqrt(-F+((D^2)/4)+((E^2)/4));
