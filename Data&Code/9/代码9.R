setwd("E:\\AAAAAAAAAAAAAAAAAAAAA\\sophomore\\subject\\医疗大数据统计\\Data\\9")
#设置读取文件路径

#9-11
data9.11<-read.csv("9-11.csv",sep=",",header=F)
mean<-mean(data9.11$V1)  #平均值
sd<-sd(data9.11$V1)  #标准偏差
A<-table(cut(data9.11$V1,br=c(27,39,51,63,75,89)))
##table() 可以用来统计每个因子频数
#cut()函数通过将一个连续变量分割后形成因子变量
Pr<-pnorm(c(28,40,52,64,76,89),mean,sd)
#pnorm（）该函数给出正态分布随机数的概率小于给定数的值
p<-c(Pr[2]-Pr[1],Pr[3]-Pr[2],Pr[4]-Pr[3],Pr[5]-Pr[4],Pr[6]-Pr[5])
t<-length(data9.11$V1)*p
Xsquard<-sum((A-t)^2/t)
Xsquard

#table() 可以用来统计每个因子频数
#cut()函数通过将一个连续变量分割后形成因子变量