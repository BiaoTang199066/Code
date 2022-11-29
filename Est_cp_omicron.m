clear all
clc


y = xlsread('TangEtAlData','Sheet1');
y(isnan(y))=0;


data_beijing_6 = y(817:861,2);
Dat=data_beijing_6 ;
Dat(Dat==0)=1;
Dat_log=log(Dat);

 
sc2=[12];
 [ss2]=Testchang22(sc2,Dat_log);

 sc3=[35];
 [ss3]=Testchang22(sc3,Dat_log);

figure(1)
plot(1:length(Dat_log),Dat_log)

