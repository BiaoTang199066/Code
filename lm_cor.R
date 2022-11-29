par(mfrow=c(1,2))

x=c(1.724624,1.622481,1.599018,1.490909,1.478627,1.066138)
y=c(2.92, 2.56, 2.68, 3.46, 3.4, 4)
cor.test(x,y,alternative='less')
cor.test(x,y,alternative='less',method='spearman')
L1=lm(y~x)
summary(L1)
plot(x,y,xlab='P',ylab=expression(R[c1]),main='Delta',pch=21,cex=1.5,col='blue',bg='red')

abline(lm(y~x),lwd=2)
corpd=cor(x,y)
text(1.2,2.7,as.expression(substitute(Cor[p]==corp,list(corp=round(corpd,2)))))
corsd=cor(x,y,method='spearman')
text(1.2,2.6,as.expression(substitute(Cor[s]==cors,list(cors=round(corsd,2)))))
text(1.3,3,as.expression(substitute(R[c1]==a*P+b,list(a=round(coef(L1)[[2]],2),b=round(coef(L1)[[1]],2)))))

# 北京 河北 广东 上海 山东 辽宁 江西 陕西 吉林
x=c(2.65, 2.33834, 2.3,   2.210952, 2.175725, 1.994274,1.96, 1.911034, 1.829977)
y=c(3.04, 3.16, 2.14, 3.34, 3.52, 3.22,3.46, 3.4, 3.7)
z=c(0.34, 0.36, 0.19, 0.39, 0.42, 0.37, 0.45, 0.41, 0.4)
 
cor.test(x,y,alternative='less')
cor.test(x,y,alternative='less',method='spearman',exact=FALSE)
plot(x,y,xlab='P',ylab=expression(R[c1]),main='Omicron',pch=21,cex=1.5,col='blue',bg='red')
L2=lm(y~x)
summary(L2)
abline(lm(y~x),lwd=2)
corp=cor(x,y)
text(2,2.3,as.expression(substitute(Cor[p]==corp,list(corp=round(corp,2)))))
cors=cor(x,y,method='spearman')
text(2,2.2,as.expression(substitute(Cor[s]==cors,list(cors=round(cors,2)))))
text(2.2,2.8,as.expression(substitute(R[c1]==a*P+b,list(a=round(coef(L2)[[2]],2),b=round(coef(L2)[[1]],2)))))


