attach(Auto)

#1
mean(mpg[cylinders == 4])
#2
median(weight)
#3
mean(mpg[year == 72])
#4
var(acceleration)
#5
var(acceleration[origin ==3])
#6
sum(horsepower > mean(horsepower))
#7
max(horsepower[weight < mean(weight)])
#8
sum(mpg > mean(mpg))
#9
min(cylinders[mpg > mean(mpg)])
#10
sum(displacement == max(displacement))
#11
max(weight[displacement < median(displacement)])

detach(Auto)
