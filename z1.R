#1 
median(precip)
#2 
sd(precip)
#3
names(precip[precip == mean(precip)])
#4
names(precip[abs(median(precip)-precip) < 0.5])
#5
names(which.min(precip))
#6
sum(precip > median(precip))
#7
names(precip[precip>fivenum(precip)[4]])
#8
names(precip[precip<fivenum(precip)[2]])

