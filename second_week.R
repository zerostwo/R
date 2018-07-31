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
