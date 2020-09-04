 a = [1 2 3
     2 5 6
     7 8 9];
 A = [1 2 3
     2 5 6
     7 8 9];
[m,n]=size(a);
for j=1:m-1
    for z=2:m
        if a(j,j)==0
            t=a(j,:);a(j,:)=a(z,:);
            a(z,:)=t;
        end
    end
    for i=j+1:m
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end
x=zeros(1,m);
for s=m:-1:1
    c=0;
    for k=2:m
        c=c+a(s,k)*x(k);
    end
    x(s)=(a(s,n)-c)/a(s,s);
end
rref(a); %As the vectors are linaerly independent we choose all vectors for the basis of the matrix 
close all;
A = sym([1 2 3;4 5 6;7 8 9]);
x1=[1 4 7]';
y1=[2 5 8]';
x2=[1 2 3]';
y2=[4 5 6]';
x3=null(A);
pts1 = [ ];
pts2 = [ ];
pts3 = [ ];
for i =1:10000
a1=-1+rand()*2;
b1=-1+rand()*2;
a2=-1+rand()*2;
b2=-1+rand()*2;
a3=-1+rand()*2;
pts1=[pts1 a1*x1+b1*y1];
pts2=[pts2 a2*x2+b2*y2];
pts3=[pts3 a3*x3];
end
figure
scatter3(pts1(1,:),pts1(2,:),pts1(3,:),1);
hold on;
scatter3(pts2(1,:),pts2(2,:),pts2(3,:),1);
hold on;
scatter3(pts3(1,:),pts3(2,:),pts3(3,:));