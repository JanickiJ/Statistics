event = c(12,20,27,18,7,3,2,1)

sum <- 0 
l=length(event)
for(i in 1:l){
  sum = (sum + event[i]*(i-1))
}
lambda = sum/sum(event)
lambda

p = 1 - ppois(3,lambda)
p
