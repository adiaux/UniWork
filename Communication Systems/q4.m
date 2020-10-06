x=[1,2,3,2,1];
n=-2:2;
y=flip(x);
x_e=(x+y)*0.5;
x_e
x_o=(x-y)*0.5;
x_o
subplot(1,2,1);stem(n,x_e);
title('Even Signal');
subplot(1,2,2);stem(n,x_o);
title('Odd Signal');