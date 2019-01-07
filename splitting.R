
splitting<- function(filename,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,...)
{
  x<-read.csv(file=filename,header=TRUE ,sep=",")
  test<-subset(x,is.na(x[[data1]]) | is.na(x[[data2]])| is.na(x[[data3]])| is.na(x[[data4]])| is.na(x[[data5]])| is.na(x[[data6]])| is.na(x[[data7]])| is.na(x[[data8]])| is.na(x[[data9]]) | is.na(x[[data10]])| is.na(x[[data11]])| is.na(x[[data12]])| is.na(x[[data13]]))
  train<- x[complete.cases(x),]
  write.csv(test,file="C:/Users/hp/Desktop/thesis/test.csv")
  write.csv(train,file="C:/Users/hp/Desktop/thesis/train.csv")

}
