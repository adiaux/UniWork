n1=input("Enter length of first signal : ");
n2=input("Enter length of second signal : ");
x1=rand(1,n1)
x2=rand(1,n2)
if(n1<n2)
x1=horzcat(x1,zeros(1, (n2-n1)));
else
x2=horzcat(x2,zeros(1, (n1-n2)));
end
sum=x1+x2;
n1=0:length(sum)-1;
stem(n1,sum);