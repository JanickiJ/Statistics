##macierz testowa
a <- matrix(1,4,3)
a[1,2] <- 2
a[2,3] <- 2
a


prob <- function(m) {
  m/sum(m)
}

a = prob(a)


boundary <- function(prob, i){
  vector <- vector()
  if(i == 1){
    vector <- rowSums(prob)
  }
  else if (i == 2){
    vector <- colSums(prob)
  }
  vector
}


boundary(a,1)


conditional <- function(prob, i, v){
  vector <- vector()
  if(i == 1){
    vector <- prob[v,]/boundary(prob,i)[v]
  }
  else if (i == 2){
    vector <- prob[,v]/boundary(prob,i)[v]
  }
  vector
}


conditional(a,1,2)


mean <- function(prob, i){
  vectorX <- vector()
  vectorY <- vector()
  for(j in 1:nrow(prob)){
    vectorX[j] <- j*sum(prob[j,])
  }
  for(j in 1:ncol(prob)){
    vectorY[j] <- j*sum(prob[,j])
  }
  
  result <- c(sum(vectorX),sum(vectorY))
  if(!is.na(i) && (i==1 || i==2)){
      result[i]
  }
  else{
    result
  }
}


mean(a,NA)


covariance <-function(prob){
  var(prob)
}

covariance(a)

independent <- function(prob){
  bx = boundary(prob, 1)
  by = boundary(prob, 2)
  for(i in 1:nrow(prob)){
    for(j in 1:ncol(prob)){
      if(bx[i]*by[j] != prob[i,j]){
        FALSE
      }
    }
  }
  TRUE
}

independent(a)
  
3.15-qnorm(0.975, 0, 1)*(4/500)
3.15+qnorm(0.975, 0, 1)*(4/500)
3.15 + c(-1, 1) * qnorm(0.975) * 0.2 / 5