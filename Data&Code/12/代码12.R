setwd("E:\\AAAAAAAAAAAAAAAAAAAAA\\sophomore\\subject\\医疗大数据统计\\Data\\12")
#设置读取文件路径

#12-1
library(survival)  #载入survival包
# survival库是一个用于生存分析的常用库，包含Surv函数。
data12.1<-read.csv("12-1.csv")
# surv函数：用于构建生存分析模型中的生存时间和事件发生的数据格式
Surv(data12.1$scsj,data12.1$zt)

fit<-survfit(Surv(data12.1$scsj,data12.1$zt)~1,data=data12.1)
#Survfit函数：用于计算生存曲线和生存概率
#通过增加一个因子变量，可以根据该变量的不同水平来比较不同组别之间的生存情况
summary(fit) #summary()



#12-2
data12.2<-read.csv("12-2.csv")
colnames(data12.2)[1]<-c("xh")  #colnames：指定矩阵的列名称
data12.2$qcjzrs<-data12.2$qcrs-data12.2$ssls/2
data12.2$q<-data12.2$swls/data12.2$qcjzrs
data12.2$p<-1-data12.2$q
data12.2$s[1]<-data12.2$p[1]

for(i in 2:22){
  data12.2$s[i]<- data12.2$s[i-1]*data12.2$p[i]
}

x<-data12.2$q/(data12.2$p*data12.2$qcrs)
y<-c(x[1],rep(NA,21))
for(i in 2:22){
  y[i]<-sum(x[1:i])
}  #循环求和

for(i in 1:22){
  data12.2$se[i]<-data12.2$s[i]*sqrt(y[i])
}  #循环求方差

data12.2



#12-3
library(survival)

data12.3<-read.csv("12-3.csv")
#ifelse函数：条件语句函数
data12.3$zb<-ifelse(data12.3$zb==1,"辅助化疗","单纯手术")
survdiff(Surv(scsj,zt)~zb,data=data12.3) # survdiff函数：进行生存曲线的时序检验
 
alpha<-0.05
qchisq(1-alpha/2,df=1,lower.tail = TRUE)


#12-5
library(survival)

#############################################################
data12.5<-read.table("12-5.csv",sep=",")
hanshu<-survfit(Surv(data12.5$V1,data12.5$V2)~data12.5$V3)

plot(hanshu, xlab=" 生存时间（月）",ylab="",lty=1:2,
     mark.time=TRUE,mark=3,conf.int=F,lwd=1.5,cex.lab=1.2,
     xlim=c(0,25),ylim=c(0,1),axes=F)

legend(16,1,c("辅助药物组","单纯治疗组"),bty="n",lty = 1:2) #标签

mtext("生存率",side=2,2,font=2,cex=1.2)  #纵坐标标签
############################################################

axis(2,pos=c(0),at=seq(from=0,to=1,by=0.2),las=1)  #纵坐标
axis(1,pos=c(0),at=seq(from=0,to=25,by=5))  #横坐标


