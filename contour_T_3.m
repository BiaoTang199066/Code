clear all
clc
%% 清零时间和再生数、控制时间以及控制力度的关系
%% 三维图
gamma=1/6;
gamma2=1/2;
tau=1:50;q=0.6;
k=1;
for R0=2:0.1:2.4
    for i=1:length(tau)         
        Rc=(1-q)*R0;
%         T1(i,k)=-((R0-1)*(tau(i)-1)*gamma)/((Rc-1)*gamma2)+tau(i); 
         T1(i,k)=-((R0-1)*(tau(i))*gamma)/((Rc-1)*gamma2)+tau(i); 
    end
    k=k+1;
end
figure
subplot(131)
hold on 
plot(19,3.7,'pk','MarkerFaceColor','r') %jilin
plot(12,3.28,'pk','MarkerFaceColor','b') %beijing
plot(11,3.4,'pk','MarkerFaceColor','g') %shaanxi
plot(46,2.56,'pk','MarkerFaceColor',[0.2,0.8,0.8]) %Shanghai Omicron
plot(28,2.32,'pk','MarkerFaceColor',[0.5,0.2,0.8]) %guangdong
plot(19,3.22,'pk','MarkerFaceColor',[0.8,0.8,0.2]) %hebei

plot(16,2.75,'ok','MarkerFaceColor','m') %shaaxi delta
plot(15,2.3,'ok','MarkerFaceColor','y') %jiangsu delta
plot(12,2.3,'ok','MarkerFaceColor','c') %liaoning
plot(9,3,'ok','MarkerFaceColor','k') %heilongjiang
legend('Jilin Omicron','Beijing Omicron','Shaanxi Omicron','Shanghai Omicron', 'Guangdong Omicron', 'Hebei Omicron', 'Shaanxi Delta', 'Jiangsu Delta','Liaoning Delta','Heilongjiang Delta')
[c,h]=contour(tau,2:0.1:2.4,T1',[30,60,90,150,500,])
caxis([0,700])
set(h,'ShowText','on','TextStep',get(h,'LevelStep')*1)
xlabel('\tau_2')
ylabel('R_{c1}')
title('Sc=0.6')

% q0=1-(1/R0)+0.05;
tau=1:50;q=0.7;
k=1;
for R0=2:0.1:3.3
    for i=1:length(tau)         
        Rc=(1-q)*R0;
%         T2(i,k)=-((R0-1)*(tau(i)-1)*gamma)/((Rc-1)*gamma2)+tau(i);  
T2(i,k)=-((R0-1)*(tau(i))*gamma)/((Rc-1)*gamma2)+tau(i); 
    end
    k=k+1;
end

subplot(132)
hold on 
plot(19,3.7,'pk','MarkerFaceColor','r') %jilin
plot(12,3.28,'pk','MarkerFaceColor','b') %beijing
plot(11,3.4,'pk','MarkerFaceColor','g') %shaanxi
plot(46,2.56,'pk','MarkerFaceColor',[0.2,0.8,0.8]) %Shanghai Omicron
plot(28,2.32,'pk','MarkerFaceColor',[0.5,0.2,0.8]) %guangdong
plot(19,3.22,'pk','MarkerFaceColor',[0.8,0.8,0.2]) %hebei

plot(18,2.75,'ok','MarkerFaceColor','m') %shaaxi delta
plot(14,2.3,'ok','MarkerFaceColor','y') %jiangsu delta
plot(13,2.3,'ok','MarkerFaceColor','c') %liaoning
plot(9,3,'ok','MarkerFaceColor','k') %heilongjiang
% legend('Jilin Omicron','Beijing Omicron','Shaanxi Omicron', 'Shaanxi Delta', 'Jiangsu Delta','Liaoning Delta','Heilongjiang Delta')
[c,h]=contour(tau,2:0.1:3.3,T2',[30,60,90,150,200,500,1000])
caxis([0,1000])
set(h,'ShowText','on','TextStep',get(h,'LevelStep')*.1)
xlabel('\tau_2')
ylabel('R_{c1}')
title('Sc=0.7')

% q0=1-(1/R0)+0.05;
tau=1:50;q=0.8;
k=1;
for R0=2:0.1:6
    for i=1:length(tau)         
        Rc=(1-q)*R0;
%         T3(i,k)=-((R0-1)*(tau(i)-1)*gamma)/((Rc-1)*gamma2)+tau(i);  
T3(i,k)=(1-((R0-1)*gamma)/((Rc-1)*gamma2))*tau(i); 
    end
    k=k+1;
end

subplot(133)
hold on 
plot(19,3.7,'pk','MarkerFaceColor','r') %jilin
plot(12,3.28,'pk','MarkerFaceColor','b') %beijing
plot(11,3.4,'pk','MarkerFaceColor','g') %shaanxi
plot(46,2.56,'pk','MarkerFaceColor',[0.2,0.8,0.8]) %Shanghai Omicron
plot(28,2.32,'pk','MarkerFaceColor',[0.5,0.2,0.8]) %guangdong
plot(19,3.22,'pk','MarkerFaceColor',[0.8,0.8,0.2]) %hebei

plot(16,2.75,'ok','MarkerFaceColor','m') %shaaxi delta
plot(15,2.3,'ok','MarkerFaceColor','y') %jiangsu delta
plot(12,2.3,'ok','MarkerFaceColor','c') %liaoning
plot(9,3,'ok','MarkerFaceColor','k') %heilongjiang
% legend('Jilin Omicron','Beijing Omicron','Shaanxi Omicron', 'Shaanxi Delta', 'Jiangsu Delta','Liaoning Delta','Heilongjiang Delta')
[c,h]=contour(tau,2:0.1:6,T3',[30,60,90,150,200,500,1000])
caxis([0,250])
set(h,'ShowText','on','TextStep',get(h,'LevelStep')*1)
xlabel('\tau_2')
ylabel('R_{c1}')
title('Sc=0.8')
% R0=2.5;q0=1-(1/R0)+0.05;
% tau=1:20;q=q0:0.05:1  
% for R0=2:0.1:4
%     for i=1:length(tau)
%         for   j=1:length(q)
%         Rc=(1-q(j))*R0;
%         T1(i,j,k)=-(R0-1)*tau(i)/(Rc-1);
%         end
%     end
%     k=k+1;
% end