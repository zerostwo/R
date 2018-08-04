## if-else
x <- 6
if(x > 3) {
        y <- 10
} else {
        y <- 0
}
y

y <- if(x > 3) {
        10
} else {
        3
}
rm(y)
y

## for loops
for(i in 1:10) {
        print(i)
}

x <- c("a", "b", "c", "d")
for(i in 1:4) {
        print(x[i])
}

seq_along(x)

for(i in seq_along(x)) {
        print(x[i])
}

for(letter in x) {
        print(letter)
}

for(i in 1:4) print(x[i])

x <- matrix(1:6, 2, 3)

for(i in seq_len(nrow(x))) {
        for(j in seq_len(ncol(x))) {
                print(x[i, j])
        }
}

for(i in 1:9) {
        for(j in 1:9) {
                print(i * j)
        }
}

## while loops
count <- 0
while(count < 10) {
        print(count)
        count <- count + 1
}

s <- 0
i <- 0
while(i <= 100) {
        s <- s + i
        i <- i + 1
}
print(s)

i <- 1
j <- 1
while(i < 10) {
        while(j < 10) {
                print(i * j)
                i <- i + 1
                j <- j + 1
        }
}

z <- 5
while(z >=3 && z <= 10) {
        print(z)
        coin <- rbinom(1,1,0.5)
        
        if(coin == 1) {
                z <- z + 1
        } else {
                z <- z-1
        }
}
## repeat, next, break
x0 <- 1
tol <- 1e-8

repeat {
        x1 <- computeEstimate()
        
        if(abs(x1 - x0) < tol) {
                break
        } else {
                x0 <- x1
        }
}

for(i in 1:100) {
        if(i > 20) {
                next
        }
}


## fucntion
add2 <- function(x, y) {
        x + y
}
add2(1,1)

above10 <- function(x) {
        use <- x >10
        x[use]
}

aboven <- function(x, n) {
        use <- x > n
        x[use]
}
x <- rnorm(1000000)
hist(aboven(x, 1.5)) 

columnmean <- function(y, removeNA = TRUE) {
        nc <- ncol(y)
        means <- numeric(nc)
        for(i in 1:nc) {
                means[i] <- mean(y[,i], na.rm = removeNA)
        }
        means
}
columnmean(airquality)
head(airquality)

mydata <- rnorm(100)
sd(x)
plot(x)
args(lm)
lm(data = mydata, y ~ x, 1:100, model = F)

mydata <- rnorm(100)
lm(y ~ x, mydata, 1:100, model = FALSE)

x <- 1:10
if(x > 5) {
        x <-0
}

## Dates and Times
x <- as.Date("1999-05-24")
x
unclass(x)
unclass(as.Date("1970-01-02"))

weekdays(x)

x <- Sys.time()
x
p <- as.POSIXlt(x)
names(unclass(p))
p$sec

x <- Sys.time()
x
unclass(x)
x$sec
p <- as.POSIXlt(x)
p$sec

dead <- as.Date("2099-05-24")
class(dead)
dead <- as.POSIXct(dead)
class(dead)
birth <- as.POSIXct("1999-05-24")
unclass(dead) - unclass(birth)
unclass(x) - unclass(birth)

datestring <- c("January 10, 2018 10:40", "December 9, 2017 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x

x <- as.Date("1999-05-24")
y <- strptime("January 10, 2018 10:40", "%B %d, %Y %H:%M")
x - y
x <- as.POSIXlt(x)
x - y

## test
