
wine <- read.csv("C:/Users/hp/Desktop/thesis/eng.csv")
df<- data.frame(wine)
c_col<-ncol(df)
ind_names<-vector( mode="character",c_col)
ves_com<-vector( mode="integer",c_col)
dependent_select<- function()
{

for( i in 1:c_col)
{
  c<-0
for(j in 1:c_col)
{
#print(cor.test(df[,i],df[,j])$p.value)
if(cor.test(df[,i],df[,j])$p.value <0.05 )
{
	c<- c+1
}
}
ves_com[i]<-c
print(c)
}
dep_index<-which(ves_com==max(ves_com))
colnames(wine[dep_index])
}


independent_select<- function(data)
{
dep_index<-which(colnames(df)==data)
for( j in 1:c_col)
{
if(cor.test(df[,dep_index],df[,j])$p.value <0.05 )
 {
	ind_names[j]<- colnames(df[j])
 }	
}
print(ind_names)
}