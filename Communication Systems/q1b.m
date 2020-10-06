for n = -5 : 5
    y = step_fun(n);
    stem(n, y)
    hold on
end
axis([-5 5 -1 2])
function y = step_fun(n)
y = 0; 
if n >= 0
    y = 1;
end
end