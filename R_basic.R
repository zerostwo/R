# Vector
x <- vector("character",10)
x1 <- 1:4
x2 <- c(1,2,3,4)
x3 <- c(TRUE,10,"a")
x4 <- c("a","b","c")
as.numeric(x4)
as.logical()
as.character()
class(x1)
names(x1) <- c("a","b","c","d")

# Matrix
x <- matrix(1:6,nrow = 3,ncol = 2)
dim(x)
attributes(x)
y <- 1:6
dim(y) <- c(3,2)
rbind(y,x)
cbind(x,y)

#Array
x <- array(1:24,dim = c(4,6))
x1 <- array(1:24,dim = c(2,3,4))

#List 
l <- list("duan",10,TRUE)
l2 <- list(a=1,b=2,c=3)
x <- matrix(1:6,2,3)
dimnames(x) <- list(c("a","b"),c("c","d","e"))

#Factoe
x <- factor(c("female","female","male","male","female"))
x <- factor(c("female","female","male","male","female"),levels = c("male","female"))
table(x)
class(unclass(x))

#Missing value
x <- c(1,NA,2,NaN)
is.na(x)
is.nan(x)

#Data frame
df <- data.frame(id = c(1,2,3,4),name = c("a","b","c","d"),gender = c(TRUE,FALSE,TRUE,TRUE))
nrow(df)
ncol(df)

#Date and time
x <- date()
class(x)
x2 <- Sys.Date()
x3 <- as.Date("2014-10-11")
weekdays(x3)
months(x3)
quarters(x3)
julian(x3)
x4 <- as.Date("1999-05-24")
x2-x4

#Subsetting List
x <- list(id= 1:4,height = 170,gender = "male")
x[1]
x[[1]]
x$height
x[c(1,2)]
y <- "id"
x[["id"]]
x[[y]]

#Missing value
x <- c(1,NA,2,NA)
is.na(x)
x[!is.na(x)]
y <- c(NA,2,3,NA)
z <- complete.cases(x,y)
x[z]
y[z]

#example
library(datasets)
head(airquality)
g <- complete.cases(airquality)
airquality[g,][1:10,]
airquality[g,]

#Vectorized
x <- 1:5
y <- 6:10
x + y
x/y
x*y
x <- matrix(1:4,2,2)
y <- matrix(rep(2,4),2,2)
x*y
x/y
x %*% y

#lapply
str(lapply)
x <- list(a = 1:10,b=c(11,21,31,41,51))
lapply(x, mean)
x <- 1:4
lapply(x,runif,0,100)

x <- list(a = matrix(1:6,2,3),b = matrix(4:7,2,2))
lapply(x,function(a) a[1,])

#sapply
x <- list(a = 1:10,b=c(11,21,31,41,51))
z <- sapply(x, mean)

#apply
x <- matrix(1:16,4,4)
apply(x,2,mean)
rowSums(x)
colMeans(x)
x <- matrix(rnorm(100),10,10)
apply(x,1,quantile,probs=c(0.25,0.75))
x <- array(rnorm(2*3*4),c(2,3,4))
apply(x,c(1,2),mean)
apply(x,c(1,3),mean)

#mapply
x <- list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
mapply(rep,1:4,4:1)

s <- function(n,mean,std){
  rnorm(n,mean,std)
}
hist(s(100,3,3))
mapply(s, 1:5, 5:1, 2)

#tapply
str(tapply)
x <- c(rnorm(5), runif(5), rnorm(5,1))    
f <- gl(3,5)

tapply(x,f,mean,simplify = T)

#split
x <- c(rnorm(5), runif(5), rnorm(5,1))
f <- gl(3,5)
split(x,f)
sapply(split(x,f), mean)
head(airquality)
s <- split(airquality,airquality$Month)
table(airquality$Month)
lapply(s, function(x) colMeans(x[,c("Ozone", "Wind", "Temp")]))

sapply(s, function(x) colMeans(x[,c("Ozone", "Wind", "Temp")],na.rm = TRUE))

#sort and order
x <- data.frame(v1 = 1:5, v2 = c(10,7,9,6,8), v3 = 11:15, v4 = c(1,1,2,2,1))
sort(x$v2)
sort(x$v2, decreasing = TRUE)

order(x$v2)
x[order(x$v2),]
x[order(x$v4,x$v3,decreasing = TRUE),]

#sumarize data
head(airquality,10)
tail(airquality,20)
str(head)

summary(airquality)
str(airquality)

table(airquality$Ozone, useNA = "ifany")

