x=input("Enter shift");
for n = -10 : 10
    y = Shiftstepfun(n,x);
    stem(n, y)
    hold on
end
axis([-10 10 -1 2])
function y = Shiftstepfun(n,x)
y = 0; 
if n-x >= 0
    y = 1;
end
end
