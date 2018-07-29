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
