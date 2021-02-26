OM = c(0.3,0.2,0.2,0.15,0.10,0.05)
N = length(OM)

event <- function(ev){
  arr = rep(FALSE,N)
  for(i in ev){
    if(i<=N){
      arr[i] <- TRUE
    }
  }
  return(arr)
}

##test event
event1 <- event(c(1,5,6,7,8,0,9))
event1

union <- function(e1, e2){
  len = length(e1)
  arr = rep(FALSE,len)
  
  for(i in seq(len)){
    arr[i] = (e1[i] || e2[i])
  }
  return (arr)
} 

##test union
event2 <- union(c(FALSE,FALSE,TRUE,FALSE,FALSE),c(TRUE,TRUE,FALSE,TRUE,FALSE))
event2 


intersect <- function(e1, e2){
  len = length(e1)
  arr = rep(FALSE,len)
  
  for(i in seq(len)){
    arr[i] = e1[i] && e2[i]
  }
  return (arr)
}

##test intersect
event3 <-  intersect(c(TRUE,FALSE,TRUE,FALSE,FALSE),c(TRUE,TRUE,FALSE,TRUE,FALSE))
event3


complement <-function(e){
  arr <- e
  for (i in seq(length(e))){
    if(arr[i]){
      arr[i] = FALSE
    }
    else{
      arr[i] = TRUE
    }
  }
  return (arr)
}

##test complement
event4 <- complement(c(TRUE,FALSE,TRUE,FALSE,FALSE))
event4

prob <-function(space, event){
  p = 0
  for(ev in event){
    p <- p + space[ev]
  }
  return (p)
}

##test prob
event5 <- c(1,3,5)
prob(OM,event5)

