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
