#control-L to clear the shell 


#Vectors
nvec=c(10,5,8,9)
nvec
nam=c('ram','shyam','gopal','harre')
names(nvec)<-nam
nvec
nvec2<- c(8,10,9,3)
nvec+nvec2
sum(nvec2)
prod(nvec2) #product of components
nvec2 > 4

#Matrix
#here we going to make a matrix of btc_eth prices
bitcoin=c(10000,11500,16000,19400,9700)
eth=c(190,280,390,660,520)
crypto_matrix=matrix(c(bitcoin,eth),nrow=5,byrow = FALSE)
colnames(crypto_matrix)<-c('btc','eth')
rownames(crypto_matrix)<-c('feb','apr','june','aug','oct')
print(crypto_matrix)
#now we are going to add a column and row by using cbind,rbind
ltc<-c(40,45,70,90,65)
crypto_matrix<-cbind(crypto_matrix,ltc)
colMeans(crypto_matrix)
crypto_matrix<-rbind(crypto_matrix,colMeans(crypto_matrix))
rownames(crypto_matrix)<-c('feb','apr','june','aug','oct','mean')
crypto_matrix
#Factorization of nominal and ordinal vectors
cancer_types<-c('bening','malig','malig','bening','malig','bening','bening')
factor(cancer_types)
temprature<-c('cold','mid','cold','hot','hot','cold')
temp.fact<-factor(temprature,levels = c('cold','mid','hot'),ordered = T) #here we  provide the order level of factors
temp.fact
summary(temp.fact)


#DATA_FRAME
places<-c('berhampur','mumbai','bhubaneswar','newyork') #let's create a dataframe
house_rent<-c(30,130,80,600)
temp<-c(24,25,28,17)
df<-data.frame(places,house_rent,temp)
#slicing and indexing just like matrices
df[1:2,2:3]
#subset with conditions 
subset(df,temp>24)
order(df$temp)   #it returns the index numbers or row numbers
row_number_sorted<-order(df$temp,decreasing = TRUE)
df[row_number_sorted,]   #it's just slicing of dataFrame
#way's to get 2nd column
df[,2]
df$house_rent
df[[2]]
df[['house_rent']]
df1<-data.frame(places='mohali',house_rent=55,temp=17)
df_final<-rbind(df,df1)  #column names mandatorily same
df_final
df_final[-2,]  #to slice all rows excluding 2nd row



#Logical_operators and loops
x<-10
(x==10)&(x<11)   #and 
(x==9) | (x<11)  #or 
x != 11          #not equal to 
#if_else 
if (x==10){
  print('x is 10')
}else if (x==12){
  print ('x is 12')
}else{
  print ('x is neither 10 or 12')
}

#while_and_for_loop
x=11
y=1
while (y<x) {
  y<-y+1
  print(paste('value of y:',y,y+1))
}
for (i in 1:5) {
  print (i)
  
}

#Functions
seq<-'kajndohaoufholf'
sequence_param<-function(seque){    #here we make a function that return length of a
  return(nchar(seque))
}
sequence_param(seq)
#here is a example of function to find a int in a list
check_no<-function(no,list){
  count=0
  for (i in list) {
    if (i==no) {
      count=count+1
      
    }
  }
  return(count)
}
check_no(56,c(23,87,56,56))




#BUilt_in_R_features
seq(0,10,3)  #just like range(0,10,3)
v1=append(v1,v)  #just like v1.append(v)
#to convert datatypes use as.datafrme,as.matrix,as.list    like this
