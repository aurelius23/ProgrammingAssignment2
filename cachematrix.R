# Put comments here that give an overall description of what your
# functions do

# Write a short comment describing this function
  #cache solve builds some functions and return them in a list in he parent environment.
  # the functions are: get(), set(), setsolve() and getsolve().

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


# Write a short comment describing this function
# Return a matrix that is the inverse of 'x'

#CacheSolve is able to calculate and store the Inverse matrix for the input argument if it is of type makeCacheMatrix()
  


cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
        

