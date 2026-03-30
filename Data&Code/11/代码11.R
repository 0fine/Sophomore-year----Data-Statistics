setwd("E:\\AAAAAAAAAAAAAAAAAAAAA\\sophomore\\subject\\医疗大数据统计\\Data\\11")
#设置读取文件路径

data11.1<-read.csv("11-1.csv")
#cor()用于计算两个向量之间的相关系数
xgxs<-cor(data11.1$OAP,data11.1$DON)
xgxs

# 添加显著性标记：
# 使用cor.mtest做显著性检验；
cor.test(data11.1$OAP,data11.1$DON)
#cor.test(x,y) #pearson相关性检验