## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this function returns the special matrix which basically is a list
## this list contains the matrix 'x' and its inverse 'inverted_x'
makeCacheMatrix <- function(x = matrix()){
  list("x"=x,"inverted_x"=NULL)
}

## Write a short comment describing this function
## this function first checks if the inverse of x is initial stored or not
## if not it calculates the inverse using solve
## stores the inverse in the special matrix and returns it
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ## where x is a special matrix      
  if(!is.null(x$inverted_x))
  {
    message("getting cached data")
    return(x$inverted_x)
  }
  inverted_matrix<-solve(x$x,...)
  x$inverted_x<<-inverted_matrix
  inverted_matrix
  
}
