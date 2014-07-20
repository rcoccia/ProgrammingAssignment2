## Put comments here that give an overall description of what your
## functions do

## Creates a matrix and cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    #cached inverse
    inv <- NULL
    
    #set the matrix
    set <- function(y)
    {
        x <<- y
        inv <<- NULL
    }
    
    #get the data matrix
    get <- function() 
    {
        x            
    }
    
    #set the inverse
    setinv <- function(computedinv)
    {
        inv<<- computedinv
    }
    
    #get the inverse
    getinv <- function()
    {
        inv
    }
    
    #return a list with pointer to funcion
    list(set=set, get=get, setinv=setinv, getinv=getinv)
    
}


## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
      cacheHit <- x$getinv()
      if (!is.null(cacheHit))
      {
          message("hit from cache")
          return (cacheHit)
      }
      
      data <- x$get();
      inv <- solve(data)
      x$setinv(inv)
      
      inv
}
