## Put comments here that give an overall description of what your
## functions do

## I honestly pulled most of this from an example. I made the matrix test. I understand the logic
## but I could not get this to work. 

makeCacheMatrix <- function(x = matrix()) {  
  # check for square matrix
  test <-ncol(x)&nrow(x)
  if (!test) {
    message(" Matrix is not Square")
      }

    inv <- NULL
    set <- function(y){
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    setInverse <- function(solveMatrix) inv <<- solveMatrix
    getInverse <- function() inv
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  }
## Write a short comment describing this function
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv      
}