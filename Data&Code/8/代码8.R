#8-1
setwd("E:\\AAAAAAAAAAAAAAAAAAAAA\\sophomore\\subject\\医疗大数据统计\\Data\\8")
#设置读取文件路径
data8.1<-read.csv("8-1.csv",fileEncoding = "GBK")
#plot函数主要用于绘制散点图和折线图
plot(IOD~DON,data = data8.1,type="p")
#boxplot函数是绘制箱型图的，箱型图是一类用来展示数据分布范围的图形
#以得到一组数据的上限值、下限值、上下四分位值、以及中位数和异常值再绘制箱型图
boxplot(IOD~DON,data = data8.1)
#aov()函数（单因素方差分析）的语法为aov(formula,data=dataframe)
aov.data8.1 <- aov(IOD~DON,data = data8.1)
# summary()：获取描述性统计量，可以提供最小值  、最大值、四分位数和数值型变量的均值
summary(aov.data8.1)


#8-2
data8.2<-read.csv("8-2.csv",fileEncoding = "GBK")
plot(Se~ 病区,data = data8.2)
boxplot(Se~ 病区,data = data8.2)
aov.data8.2<-aov(Se~ 病区,data = data8.2)
summary(aov.data8.2)



