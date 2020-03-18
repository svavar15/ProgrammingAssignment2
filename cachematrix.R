## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    # assign value to object in an environment with <<-
    x <<- y
    m <<- NULL
  }
  
  
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m 
  #sets the value in list
  list(set = set, 
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getInverse()
    #Check data
    if(!is.null(i)){
      #Get the data and skip computation
      message("getting cached data")
      return(i)
    }
    #else calculate inverse
    data <- x$get()
    i <- solve(data, ...)
    #sets the value
    x$setInverse(i)
    return(i)
}
