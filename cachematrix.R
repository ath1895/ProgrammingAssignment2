## Create a pair of functions that cache the inverse of a matrix
## 
## R Programming:Programming Assignment 2
## ath1895
##
## Write a short comment describing this function
## makeCacheMatrix create matrix object that 
##     can cache its inverse
##

makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set <- function(y) {
        x<<-y
        m<<-NULL
    }
    get <-function() x
    setmatrix <- function(matrix) m <<- matrix
    getmatrix <- function() m
    getinverse <- function() m
    list(set = set, get = get,
         setmatrix = setmatrix,
         getmatrix = getmatrix,
         getinverse = getinverse)
}


## Write a short comment describing this function
## cacheSolve computes the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m<-x$getmatrix()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
        }
    data <-x$get()
    m <-solve(data, ...)
    x$setmatrix(m)   
    m
}


