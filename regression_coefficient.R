#
# Licensed to the Apache Software Foundation (ASF) under one or more
ml_reg<- function()
{


Sys.setenv(SPARK_HOME="C:/Apache/spark-1.6.2")
 .libPaths(c(file.path(Sys.getenv("SPARK_HOME"),"R","lib"),.libPaths()))
library(SparkR)

# Initialize SparkContext and SQLContext
sc <- sparkR.init(appName="SparkR-ML-example")
sqlContext <- sparkRSQL.init(sc)


wine <- read.csv("C:/Users/hp/Desktop/thesis/train.csv")
# Train GLM of family 'gaussian'
train <- createDataFrame(sqlContext, wine)  
stat<-summary(glm(quality ~ density + pH+alcohol+type , train, family = "gaussian"))
coef<-as.vector(stat$coefficients)
#summary(model1)
a<-coef[[01]] 
b<-coef[[02]]
c<-coef[[03]]
d<-coef[[04]] 
e<-coef[[05]]
f<-coef[[06]]
g<-coef[[07]]
print(a)
print(b)
print(c) 
print(d)
print(e)
print(f)
print(g)
print(stat)
sparkR.stop()
}

