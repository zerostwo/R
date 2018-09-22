fi = read.csv("../duansq/Documents/Lius_nutrition_lab/Craterellus/灰喇叭菌多糖提取实验/段小雨-灰喇叭菌-红外光谱/90g处理-灰喇叭-1.CSV")
hist(fi$X400.173700,fi$X73.476760)
head(fi)
sname <- c("x","y")
name(fi) <- sname
names(fi) <- sname
x = fi$x
y = fi$y
hist(x,y)
x
type(x)
plot(x ,y ,xlab = "Wavenumbers(cm-1)", ylab = "%Transmittance", cex = 0.2, col = "skyblue",
     xlim = c(400,4000))
