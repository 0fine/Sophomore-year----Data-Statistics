setwd("E:\\AAAAAAAAAAAAAAAAAAAAA\\sophomore\\subject\\医疗大数据统计\\Data\\10")
#设置读取文件路径


#10-1
A<-read.csv("10-1.csv",fileEncoding = "GBK")
median(A$DON)  # median() 函数用来计算样本的中位数
#执行wilcoxon秩和检验验证数据分布是否一致
#函数及格式：wilcox.test(y~x,data)  y是连续变量，x是一个二分变量
##exact表示是否算出精确的p值，correct表示大样本时是否做连续型修正
zhihejianyan1<-wilcox.test(A$DON-A$ 中位数,exact=FALSE,correct=FALSE)
zhihejianyan1
#执行wilcoxon秩和检验验证数据分布是否一致
#函数及格式：wilcox.test(y~x,data)  y是连续变量，x是一个二分变量
##exact表示是否算出精确的p值，correct表示大样本时是否做连续型修正


#10-2
B<-read.csv("10-2.csv",fileEncoding = "GBK")
zhihejianyan2<-wilcox.test(B$ 放射免疫法,B$ 酶联免疫法,exact=FALSE,paired=TRUE,correct=FALSE)
zhihejianyan2


#10-3
C<-read.csv("10-3.csv",fileEncoding = "GBK")
zhihejianyan3<-wilcox.test(Ca含量 ~ 性别,data=C,exact=FALSE,correct=FALSE,paired=FALSE)
zhihejianyan3



#10-4
D<-read.csv("10-4.csv",fileEncoding = "GBK")
zhihejianyan4<-wilcox.test(分值 ~ 地区,data=D,exact=FALSE,correct=FALSE,paired=FALSE)
zhihejianyan4

#10-5
E<-read.csv("10-5.csv",fileEncoding = "GBK")
zhihejianyan5<-wilcox.test(临床分度 ~ 地区,data=E,exact=FALSE,correct=FALSE,paired=FALSE)
zhihejianyan5

#10-6
F<-read.csv("10-6.csv",fileEncoding = "GBK")
# kruskal.test检验：用于比较多个独立样本的中位数是否相等
#适用于数据不满足正态分布或方差不齐的情况
zhihejianyan6<-kruskal.test(TNF ~ 组别,data=F)
zhihejianyan6

