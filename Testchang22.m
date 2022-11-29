function [ss]=Testchang22(sc0,Dat)


%Dat=ID;
%r=1/10;

cuminfected=cumsum(Dat);



Mdat=cuminfected;
%sc0=[6];
ss0=[sc0(1)];%切换点的时间点
T=7;

%NN1=6;%总年份数，2011至2016,6年
NN2=length(Mdat);
%s=NN1*2-1;
%w=2*pi/365;
Tdata=1:NN2;
NMdat1=Mdat(1:end-1);
NMdat2=Mdat(2:end);
dist1=Tdata(2:end)-Tdata(1:end-1);
%S0=5.778*10^7;
%N=S0;
Y=(NMdat2-NMdat1)./((NMdat1).*((dist1)'.^(1/2)));
%B2=(-1)*[1,sin(w*Tdata),cos(w*Tdata),Tdata.*sin(w*Tdata),Tdata.*cos(w*Tdata)].*(NMdat1)^(1/2).*(dist)^(1/2);

a0=1.5*10^5;b0=200;

% NN3=length(ss0);
% ss(1)=ss0(1);
% ss(2:NN3-1)=ss0(2:NN3-1)+30;
% ss(NN3)=ss0(1);
 LL=length(ss0);

for  p3=1:NN2-1
        B3(p3,:)=(-1);%*[1/(N-NMdat1(p3))].*(dist1(p3))^(1/2);
end


for k=1:LL
   % if  k==LL
       %   Ns=ss0(k)-T:ss0(k)-1;   
    %else
    Ns=ss0(k)-T:ss0(k)+T;
     %end
    N2=length(Ns);
    NY=Y(Ns);
    NB=B3(Ns,:);
    NMdat=NMdat1(Ns);
    dist=dist1(Ns);
    [Num1,TTh]=Thresh11(N2, NY,NB, NMdat,dist);
    TTh;
    ss(k)=ss0(k)-T+TTh;
    n1=a0+length(NY)/2;
    
end
% figure(2)
% plot(1:NN2,Mdat)
% hold on 
% y=1:max(Mdat)/100:max(Mdat);
% for i=1:length(ss)
% plot(ss(i),y,'.','MarkerSize',6);
% end
ss







