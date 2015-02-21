## This function creates a cache to store values so they don't need to be recalculated 
## for repeated function calls 

##How to use:
##1. Assign a matrix to makeCacheMatrix and assign it's output to a variable. Then pass that variable through cacheSolve
##Example code:
##
##> testmatrix<-matrix(rnorm(100),10,10)
##> testcache<-makeCacheMatrix(testmatrix)
##> cacheSolve(testcache)
##

makeCacheMatrix <- function(x = numeric()) {
  m <- NULL
  set <- function(y) { #sets the value of the vector
    x <<- y 
    m <<- NULL
  }
  get <- function() x #gets the value of the vector
  setsolve <- function(solve) m <<- solve #sets the value of the solve function
  getsolve <- function() m #gets the value of the solve functino
  list(set = set, get = get, 
       setsolve = setsolve,
       getsolve = getsolve) #assigns values into a list (this is the return of the function since it is the last item)
}