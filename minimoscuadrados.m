x=[7 1 10 5 4 3 13 10 2];
y=[2 9 2 5 7 11 2 5 14];
sumx=0;
sumy=0;
sumxy=0;
sumxx=0;
n=length(x);
for i=1:n
sumx=x(i)+sumx;
end
for i=1:n
sumy=y(i)+sumy;
end
for i=1:n
sumxy=x(i)*y(i)+sumxy;
end
for i=1:n
sumxx=x(i)^2+sumxx;
end

m=(sumxy-sumx*sumy/n)/(sumxx-sumxx/n);
b=sumy/n-m*sumx/n;
disp ("la recta resultante es y="+m+"x+"+b);
