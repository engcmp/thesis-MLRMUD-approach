
mean_predict<- function( data )
{
#missing value for non independent variables
wine <- read.csv("C:/Users/hp/Desktop/thesis/train.csv")
test_predict <- read.csv("C:/Users/hp/Desktop/thesis/test.csv")
 sum_tr<-sum(wine[[data]])	
sum_test<-sum(test_predict[[data]],na.rm=TRUE) 
 Train_row<-nrow(wine)
test_row<-sum(!is.na(test_predict[[data]]))
missing<-(sum_tr+sum_test)/(Train_row+test_row)
print(missing)
}