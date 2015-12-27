## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## cache Matrix is matrix stored in other environment

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
      set <- function(y) {
              x <<- y
              m <<- NULL
      }
      get <- function() x
      setInverse <- function(mean) m <<- mean
      getInverse <- function() m
      list(set = set, get = get,
           setInverse = setInverse,
           getInverse = getInverse)

}


## Write a short comment describing this function
## function will set the inverse of the matrix by using setInverse if not set alredy ,
## otherwise will set it by computing by solve(x)


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
     if(!is.null(m)) {
             message("getting cached data")
             return(m)
     }
     data <- x$get()
     m <- solve(data, ...)
     x$setInverse(m)
     m

}
