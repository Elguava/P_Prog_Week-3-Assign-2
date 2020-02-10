
## Put comments here that give an overall description of what your

## functions do



## Write a short comment describing this function



makeCacheMatrix <- function(x = matrix()) {
  inv_mx <- NULL
  set <- function(y) {
    x<<- y
    inv_mx <<- NULL
  }
  get <- function()x
  setinverse <- function(inverse) inv_mx <<- inverse
  getinverse <- function() inv_mx
  list(set = set, get = get, setinverse= setinverse, getinverse = getinverse)
}




## Write a short comment describing this function

## Caching The Inverse of a Matrix:
## matrix inverse is a timely computation and caching the computation may be of some benefit if you calculate it a lot of times.
## This script creates a special object that the matrix and caches its inverse.

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
inv_mx <- x$getinverse()
if(!is.null(inv_mx)) {
  message("getting cached data")
  return(inv_mx)
}
data <- x$get()
inv_mx <- solve(data, ...)
x$setinverse(inv_mx)
inv_mx
}


  
