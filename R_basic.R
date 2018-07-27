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
