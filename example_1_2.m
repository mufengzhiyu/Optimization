% example 2 
clear;clc;
%�����������м���������
a = -5;
b = 5;
%����������ͼ���ȡ�������
step=0.1;
iter=(b-a)/step; %��������
xx1 = a:step:b;
xx2 = a:step:b;
[x1,x2]=meshgrid(xx1,xx2);
%��������Ŀ�꺯����������
y = (x1).^2+(x2).^2;
%����������ͼ��������
figure
surf(x1,x2,y)

title('f(x_1,x_2)=(x_1)^2+(x_2)^2','FontSize',20)
