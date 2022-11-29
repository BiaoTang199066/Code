clear all
clc
%% omicron
  
col=[1 0 0;  0.2 0.5 0.3;  0.2 0.2 0.5; 0.2 0.8 0.8];
data_name={'Shaanxi','Jiangsu','Liaoning','Heilongjiang'};
Shaanxi=[1,0,1,0,1,3,6,6,9,13,25,43,53,86,52,78,157,152,180,151,155,165,174,123,92,95,35,63,57,46,30,15,13,8,6,8,4,1,5,1,0,0,3];

Jiangsu=[13,12,12,2,39,34,48,20,18,19,30,43,47,38,40,61,54,38,38,50,54,38,26,18,18,6,3,6,3,3,1,1,0,0,1,0,1];
Liaoning=[8,5,17,32,32,32,21,52,14,60,15,4,6,4,7,2,3,5,4,2,0,1,3,1];
Heilongjiang=[1,9,26,19,27,27,35,45,28,16,6,6,8,4,7,7,2,2,2,2];
gamma=1/5;
a=[0.32, 0.26, 0.26,0.4];
b=[-0.655, 1.73, 1.801, 0.978];
a2=[-0.26, -0.27, -0.18,  -0.29];
b2=[11.028, 9.169, 4.442, 6.122];
c2=[24, 19, 9, 9]
delay=round(b./a)+1   

tau3=[5, 13, 0, 0]
tau1=round(b./a)+1   
tau2=[18, 7, 8, 8 ]-1
Tc=(1-a./a2).*(tau1+tau2)+tau3-1
tau4=ceil(Tc)-tau1-tau2-tau3-1
figure
for i=1:4
    y1=0;
    subplot(2,2,i)
    %%  
    R(i)=a(i)/gamma+1
   y1(1)=1;j=2
    for t=1:tau1(i)+tau2(i)
        y1(j)=y1(j-1)*exp(a(i));
        j=j+1;
    end
    hold on
    data=eval(char(data_name(i))); 
    %%  
    y0=y1(tau1(i)+tau2(i)+1);%j=tau1(i)+tau2(i)+1;
    for t=tau1(i)+tau2(i)+1:tau1(i)+tau2(i)+tau3(i)
         y1(j)=y0;
         j=j+1;
    end
    %%  
    for t=tau1(i)+tau2(i)+tau3(i)+1:Tc(i)
        y1(j)=y0*exp(a2(i));
        y0=y1(end);
        j=j+1;
    end
    x2=1:Tc(i)+1;
        h(i)= plot(x2,y1,'-','color',col(i,:),'LineWidth',1.5)
        plot(tau1(i)+1:length(data)+tau1(i),data,'o','color',col(i,:))
        box
        title(data_name(i))
        xlabel('t')
        ylabel('Daily reported cases')
end
sum(data)
length(data)
plot(5,1:110,'-')





