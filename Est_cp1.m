clear all
clc


y = xlsread('TangEtAlData','Sheet1');
y(isnan(y))=0;




data_heilongjiang_4 = y(645:664,14);
Dat=data_heilongjiang_4;
Dat(Dat==0)=1;
Dat_log=log(Dat);
sc1=[11];
[ss1]=Testchang22(sc1,Dat_log);



 
 figure(2)
 plot(1:length(Dat_log),Dat_log)
