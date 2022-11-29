par(mfrow=c(3,3),cex=0.8,mar=c(4,4,2,2))
###################################ShaanxiDelta
data=read.table("ShaanxiDelta.txt",header=T)
V=data$V
l0=V!=0
l0=which(l0>0)
l0
lV=log(V)
plot(1:length(V),lV,main="Shaanxi",xlab='t',ylab='Daily reported cases(log scale)')
x=l0[1:18]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(13,1,as.expression(substitute(y==a*t+(b),list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))
#
x=l0[22:42]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(30,3,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))


###################################JiangsuDelta
data=read.table("JiangsuDelta.txt",header=T)
V=data$V
l0=V!=0
l0=which(l0>0)
l0
lV=log(V)
plot(1:length(V),lV,main="Jiangsu",xlab='t',ylab='Daily reported cases(log scale)')
l1=7
x=l0[1:l1]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(10,1,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))
#ÏÂ½µ
x=l0[22:42]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(30,3,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))

###################################LiaoningDelta
data=read.table("LiaoningDelta.txt",header=T)
V=data$V
l0=V!=0
l0=which(l0>0)
l0
lV=log(V)
plot(1:length(V),lV,main="Liaoning",xlab='t',ylab='Daily reported cases(log scale)')
x=l0[1:7]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(10,1,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))
#
x=l0[17:24]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(18,3,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))


###################################HeilongjiangDelta
data=read.table("HeilongjiangDelta.txt",header=T)
V=data$V
#V[V==0]=0.001
l0=V!=0
l0=which(l0>0)
l0
lV=log(V)
plot(1:length(V),lV,main="Heilongjiang",xlab='t',ylab='Daily reported cases(log scale)')
x=l0[1:8]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(6,1,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))
#ÏÂ½µ
x=l0[15:24]
y=lV[x]
f=lm(y~x)
abline(f)
summary(f)
text(15,3,as.expression(substitute(y==a*t+b,list(a=round(coef(f)[[2]],2),b=round(coef(f)[[1]],2)))))
points(8,lV[8],col='red',pch=16)


#####################################################################################################
