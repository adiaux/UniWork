x=[1,3,5,7,9];
y=[0,2,4,6,8,10];
if(isequal(conv(x,y),conv(y,x)))
disp("Commutative Property is Verified")
end
z=randi(10,1,5);
if(isequal(conv(x,conv(z,y)), conv(y,conv(x,z))))
disp("Associative Property is Verified")
end