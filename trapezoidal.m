clc;
clear all;
close all;
format longG;
while (true)
inp = input('for function enter f and for numbers enter n : ','s');
if inp=='f'
    break;
elseif inp=='n'
    break;
end
end
if inp=='n'
n = input('enter count of numbers : ');
s = input('enter space between numbers : ');
nums = zeros(1,n);
for i=1:n
    fprintf('enter %d : ' , i);
     nums(i) = input ('');
end
sum1 = nums(1) + nums(n);
for i=2:n-1
    sum1 = sum1 + 2 * nums(i);
end
sum1 = sum1 * s / 2;
fprintf('intgeral  is : %d \n' , sum1);
else
syms x;
fun = input('enter f(x) : ' , 's');
fun  = str2sym(fun);
a = input('Enter the start of integration range:  ');
b = input('Enter the end of integration range:  ');
n = input('enter count of parts : ');
h = (b-a) / n;
temp = 1;
for i = a:h:b
    nums(temp) = double(subs(fun , x , i));
    temp = temp + 1;
end
sum1 = nums(1) + nums(n+1);
for i=2:n
    sum1 = sum1 + 2 * nums(i);
end
sum1 = sum1 * h / 2;
fprintf('intgeral  is : %d \n' ,sum1 );
end