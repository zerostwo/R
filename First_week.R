#R Objects and Attributes
"duan" #character
123 #numric
1+2i #complex
x <- rnorm(100)
attributes(x)
x <- 1:10
dim(x) <- c(2,5)
x
x <- 1:3
y <- 4:6
cbind(x, y)
f <- factor(c("male","male", "female"))
f
unclass(f)
ft <- read.csv("Desktop/90g处理-灰喇叭-1.CSV")
length(ft$X400.173700)
mean(ft$X400.173700)
summary(ft$X400.173700)
summary(ft$X73.476760)
plot(ft$X400.173700,ft$X73.476760, lwd = 1, col = "steelblue")
ggplot(ft,aes(X400.173700,X73.476760)) + stat_smooth()
boxplot(ft$X73.476760)
row.names(ft)
y <- data.matrix(ft)
class(y)
y
x <- data.frame(foo = 1:4, bar = c("T", "T", "F", "F"))
x
nrow(x)
ncol(x)
x <- 1:3
y <- 4:6
cbind(x,y)
m <- 1:6
m
dim(m) <- c(2,3)
m
x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
names(x)
ft
names(ft) <- c("x", "y")
head(ft)
x <- list(a = 1,b = 1,c = 1)
x
m <- matrix(1:4, 2, 2)
m
dimnames(m) <- list(c("r1", "r2"),c("c1", "c2"))
m
dir()
source("Documents/R/First_week.R")
readLines("line.txt")
line <- read.table("line.txt",sep = " ", header = T)
line
x <- c("a", "b", "C")
x[1]
x[x >= "b"]
lg <- c(TRUE, FALSE, TRUE)
x[lg]
x <- list(foo = 1:4, bar = 0.6, bar = "hello")
x[1]
x[[1]]
x$bar
x["bar"]
x[c(2,3)]
name <- "foo"
x[[name]] ## computed index for 'foo'
x$name ## elements 'name' doesn't exist
x$foo ## element 'foo' does exist
x[[c(1,3)]]
x <- list(a = list(10, 12, 14), b = c(3.14, 2.71))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]
x <- matrix(1:6, 2, 3)
x
x[1, 2]
## indices can also be missing
x[1,]
x[,2]
x[1, 2, drop = FALSE]
x <- list(foo = 1:4)
x$f
x[["f", exact = FALSE]]
x <- c(1, 2, NA, 3, NA)
bad <- is.na(x)
bad
x[!bad]
table(bad)
x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", NA, "b", "d", NA, "f")
good <- complete.cases(x, y)
good
x[good]
y[good]
library(datasets)
head(airquality)
good <- complete.cases(airquality)
airquality_clear <- airquality[good,]
head(airquality_clear)
summary(airquality)
summary(airquality_clear)

x <- 1:4; y <- 6:9
x + y
x > 2
x >= 2
y == 8
x * y
x / y

x <- matrix(1:4, 2, 2); y <- matrix(rep(10,4), 2, 2)
x * y
x / y
x %*% y ## true matrix multiplication
x <- 1:4
y <- 2
class(x + y)

x <- c(3,5,1, 10, 12, 6)
x[x < 6] <- 0
x[x %in% 1:5] <-0
tail(airquality)
airquality$Ozone[47]
table(is.na(airquality$Ozone))
mean(airquality$Ozone[!is.na(airquality$Ozone)])
head(airquality)

good <- complete.cases(airquality$Ozone, airquality$Temp, airquality$Solar.R)
a <- airquality$Ozone[good] >31
b <- airquality$Temp[good] > 90
c <- a & b
mean(airquality$Solar.R[good][c])

head(airquality)

t6 <- airquality$Month
x <- airquality$Temp[t6]
x
mean(x)

x <- airquality$Ozone[airquality$Month == 5]
max(x[!is.na(x)])

