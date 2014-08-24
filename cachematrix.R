## This function is used to create an invertible matrix object.
## 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      s<-NULL
      set<-function(y){
        x<<-y
        s<<-NULL
      }
      get<-function() x
      setsolve<-function(solve) s<<=solve
      getsolve<-function() s
      list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)
      
}


## Use if.else loop to write the function

cacheSolve <- function(x, ...) {
     s=s$getsolve()    ##
     if(is.null(s)){
        data<-x$get()
        s=solve(data)
        x$setsolve(s)
        s
     }else{
          message("get the inverse of the matrix")
          return(s)
     }
}
