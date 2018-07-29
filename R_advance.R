x <- c(1,9,2,8,3,9,4,5,7,6)
mean(x)
median(x)
var(x)
sd(x)
summary(x)
x <- rnorm(1000)
hist(x)
dotchart(x)
boxplot(x)
x
median(x)
#plot()
hist(airquality$Wind, xlab = "Wind")
boxplot(airquality$Wind, xlab = "Wind", ylab = "Speed")
boxplot(Wind~Month, airquality, xlab = "Month", ylab = "Speed")

plot(airquality$Wind,airquality$Temp, xlab = "Wind",ylab = "Temp")

with(airquality,plot(Wind,Temp,type = "n"))
title("The relationship between temp and wind")
with(subset(airquality,Month==5),points(Wind,Temp,col="red"))
with(subset(airquality,Month==6),points(Wind,Temp,col="blue"))
with(subset(airquality,Month==7),points(Wind,Temp,col="green"))
with(subset(airquality,Month==8),points(Wind,Temp,col="black"))
fit <- lm(Temp~Wind, airquality)
abline(fit, lwd = 2,col = "yellow")
legend("topright", pch = 1,col = c("red","blue","green","black"),legend = c(5,6,7,8))
#par()
par("bg")
par("col")
par("mar")
par("mfrow")
par("mfcol")
?par

par(mfrow = c(1,2))
hist(airquality$Wind)
hist(airquality$Temp)

par(mfrow = c(1,1))
boxplot(airquality$Wind)

#lattice
library(lattice)
xyplot(Temp~Ozone, data = airquality)
airquality$Month <- factor(airquality$Month)

q <- xyplot(Temp~Ozone|Month, data = airquality, layout = c(5,1))
print(q)
class(q)

set.seed(1)
x <-  rnorm(100)
f <- rep(0:1,each = 50)
y <- x +f -f*x + rnorm(100,sd = 0.5)
f <- factor(f,labels = c("group1","goup2"))
xyplot(y~x|f, layout = c(2,1))

xyplot(y~x|f, panel = function(x,y){
  panel.xyplot(x,y)
  panel.abline(v = mean(x),h = mean(y), lty = 2)
  panel.lmline(x,y,col = "red")
  
})

#ggolot2
library(ggplot2)
qplot(Wind,Temp,data = airquality,color= Month)
qplot(Wind,Temp,data = airquality,color= I("red"))
qplot(Wind,Temp,data = airquality,shape= Month)
qplot(Wind,Temp,data = airquality,size= Month ,color = I("blue"))
qplot(Wind,Temp,data = airquality,geom = c("point","smooth"),color = Month)
qplot(Wind,Temp,data = airquality,facets = .~Month)
qplot(Wind,Temp,data = airquality,facets = Month~.)
qplot(Wind,data = airquality, facets = Month~.)
qplot(y = Wind, data = airquality)
qplot(Wind,data = airquality,geom = "density")
qplot(Wind,data = airquality,geom = "dotplot")

ggplot(airquality,aes(Wind,Temp)) + geom_point(color = "steelblue",alpha = 0.4, size = 5)
ggplot(airquality,aes(Wind,Temp)) + geom_point(aes(color = Month),alpha = 0.4, size = 5)

ggplot(airquality,aes(Wind,Temp)) + geom_point() + geom_smooth()
ggplot(airquality,aes(Wind,Temp)) + geom_point() + stat_smooth()
ggplot(airquality,aes(Wind,Temp)) + stat_smooth()
ggplot(airquality,aes(Wind,Temp)) + stat_smooth(method = "lm",se = FALSE,aes(col=Month))
ggplot(airquality,aes(Wind,Temp)) + stat_smooth(method = "lm",se = FALSE)
duan
