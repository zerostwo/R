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
