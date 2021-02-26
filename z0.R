typeof(2)
mode(2)
typeof(2L)
mode(2L)

x <- c(2,16,1,7)
x
length(x)
y <- c(c(2,3),10,c(3,1,-1))
y
length(y)

z1 <- rep(x, times =3)
z2 <- rep(x, each = 3)
z3 <- rep(x, length.out =5)

2:10
seq(2,10,length.out = 10)
seq(2,10, along.with = x)

sqrt(seq(0,1, by = 0.1))

mean(x)
median(x)
which.min(x)
sum(c(TRUE,TRUE,FALSE,FALSE))
all(y<100 & y>-10)
any(y == 1)    

s <- c("ala", "ula", "ola")
s
s[2]
paste(s,collapse = "-")
paste(s, 1:6)
paste(s, step = "-",1:6, collapse = "===")

isFALSE(NA)
isTRUE(NA)
z <- c(1,2)
z[5] = 3
z
z+30
z==1
is.na(z)
mean(z)
mean(z[!is.na(z)])

nx <- c(a=1,b=5,c=0)
nx
nx["a"]
nx[["c"]]
