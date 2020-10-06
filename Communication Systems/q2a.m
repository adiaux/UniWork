x=input("Enter the shift");
shiftImP(x);
function c=shiftImP(x)
n=-5:5;
c=0;
impulse=(n-x) ==0;
stem(n,impulse)
end