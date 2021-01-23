## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        
  Inverse <- NULL
  
  set <- function(Matrix) {
          
    x <<- Matrix
    Inverse <<- NULL
    
  }
  
  get <- function() x
  SetInverse <- function(InVerse) InVerse <<- InVerse
  GetInverse <- function() InVerse
  
  list(set = set,
       get = get,
       SetInverse = SetInverse,
       GetInverse = GetInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
  ## Return a matrix that is the inverse of 'x'
        Inverse <- x$getmean()
        
        if(!is.null(m)) {
                
                message("getting cached data")
                return(Inverse)
                
        }
        
        MaTrix <- x$get()
        m <- solve(MaTrix, ...)
        x$SetInverse(Inverse)
        Inverse
}