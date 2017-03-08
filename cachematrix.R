## These functions work together to find the inverse of a matrix and
## store the inverse in a cache so that the results can be used
## later without having to re-calculate the inverse again.


## makeCacheMatrix() sets up a function that creates a matrix and
## caches the inverse, which can be called with cachSolve()

source("cachematrix.R")
makeCacheMatrix <- function(a = matrix()) {
  b <- NULL  
  set <- function(c) { 
    a <<- c
    b <<- NULL
  }
  get <- function() a 
  setinverse <- function(solve) b <<- solve 
  getinverse <- function() b 
  list(set = set, get = get,  
       setinverse = setinverse,
       getinverse = getinverse)  
}


## cacheSolve() finds the inverse of the matrix if the inverse
## has not already been calculated and stored in the cache. 
## It prints out the stored inverse, or if the inverse of the
## matrix has not yet been calculated, it calculates it, stores it
## in the cache, and prints the result. 

cacheSolve <- function(a, ...) {
  b <- a$getinverse() 
  if(!is.null(b)) { 
    message("Getting Cached Data")
    return(b)
  }  
  data <- a$get()  
  b <- solve(data, ...)
  a$setinverse(b)
  b
}

