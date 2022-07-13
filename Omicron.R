par(mfrow=c(2,3),cex=0.8,mar=c(4,4,3,1))
####################################Jilin
data=read.table("Jilin.txt",header=T)
V=data$V
#V[V==0]=0.001
l0=V!=0
l0=which(l0>0)
l0
lV=log(V)
plot(1:length(V),lV,main="Jilin",xlab='t',ylab='Daily reported cases(log scale)')
#plot(1:length(V),lV,main="吉林",xlab='时间',ylab='新增报告病例(对数)')
l1=14
x=l0[1:l1]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(15,3,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))
#下降
x=l0[45:70]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(50,5,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))



####################################Beijing
data=read.table("Beijing.txt",header=T)
V=data$V
#V[V==0]=0.001
l0=V!=0
l0=which(l0>0)
l0
lV=log(V)
plot(1:length(V),lV,main="Beijing",xlab='t',ylab='Daily reported cases(log scale)')
#plot(1:length(V),lV,main="北京",xlab='时间',ylab='新增报告病例(对数)')
x=l0[1:14]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(11,2,as.expression(substitute(y==a*t+(b),list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))
#下降
x=l0[35:40]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(25,3,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))
#points(14,lV[14],pch=16)


####################################Shaanxi
data=read.table("Shaanxi.txt",header=T)
V=data$V
#V[V==0]=0.001
l0=V!=0
l0=which(l0>0)
l0
lV=log(V)
plot(1:length(V),lV,main="Shaanxi",xlab='t',ylab='Daily reported cases(log scale)')
#plot(1:length(V),lV,main="陕西",xlab='时间',ylab='新增报告病例(对数)')
l1=8
x=l0[1:l1]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(10,1,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))
#下降
x=l0[12:25]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(15,3,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))

###################################Shanghai
data=read.table("Shanghai.txt",header=T)
V=data$V
l0=V[V==0]
lV=log(V)
plot(1:length(V),lV,main="Shanghai",xlab='t',ylab='Daily reported cases(log scale)')
x=1:15
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(33,2,as.expression(substitute(y==a*x+(b),list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))
#中间
x=16:34
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(35,4,as.expression(substitute(y==a*x+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))
#中间
x=35:45
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(50,8,as.expression(substitute(y==a*x+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))


#下降
x=55:80
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(68,6,as.expression(substitute(y==a*x+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))

#points(16,lV[16],col='red')
points(33,lV[33],col='red',pch=16)#3/28
points(38,lV[38],col='red',pch=16)#4/2
points(47,lV[47],col='red',pch=16)#4/11
points(58,lV[58],col='red',pch=16)#4/22
points(64,lV[64],col='red',pch=16)#4/28


####################################Guangdong
data=read.table("Guangdong.txt",header=T)
V=data$V
#V[V==0]=0.001
l0=V!=0
l0=which(l0>0)
l0
lV=log(V)
plot(1:length(V),lV,main="Guangdong",xlab='t',ylab='Daily reported cases(log scale)')
#plot(1:length(V),lV,main="广东",xlab='时间',ylab='新增报告病例(对数)')
l1=8
x=l0[1:l1]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(18,2.5,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))
# 下降1
x=l0[30:40]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(30,0.8,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))

#下降
x=l0[62:72]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(52,5,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))




####################################Hebei
data=read.table("Hebei.txt",header=T)
V=data$V
#V[V==0]=0.001
l0=V!=0
l0=which(l0>0)
l0
lV=log(V)
plot(1:length(V),lV,main="Hebei",xlab='t',ylab='Daily reported cases(log scale)')
#plot(1:length(V),lV,main="河北",xlab='时间',ylab='新增报告病例(对数)')
x=l0[1:14]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(15,1,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))
#下降
x=l0[18:32]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(30,3,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))
#points(14,lV[14],col='red')

#下降
x=l0[36:45]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(33,6,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))
#points(46,lV[46],col='red')



