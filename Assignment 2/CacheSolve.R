##Returns the inverse of a matrix using the solve function
##Must be passed the output of the makeCacheMatrix function to work

cacheSolve <- function(x, ...) {
    m <- x$getsolve() #checks if "m" was already caclulated if true, it returns the existing value
    if(!is.null(m)) { 
      message("getting cached data")
      return(m)
    }
    data <- x$get() #code only runs if there isn't cached data. Code actually calculates the matrix inverse.
    m <- solve(data, ...)
    x$setsolve(m)
    m
  }