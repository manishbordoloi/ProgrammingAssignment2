## The functions makeCacheMatrix and cacheSolve are used to find the inverse of a matrix.
 

## The function makeCacheMatrix takes up any matrix and first set matrix to set the values of the elements of the matrix and then
## uses the get matrix function to get the elements of the matrix 

makeCacheMatrix <- function(x = matrix()) {
 m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}


## This function tries to find if any cached inverse matrix is present in the cached
## Else it calculates the inverse itself.

cacheSolve <- function(x=matrix(), ...) {
    ## Return a matrix that is the inverse of 'x'
		m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
