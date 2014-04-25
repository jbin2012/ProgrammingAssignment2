## This first function will take a matrix as input and create four functions that retrive the matrix 
## from a cache and allow other functions to operate on the cached matrix. 
## The functions defined within the funtion permit, cacheing a matrix, retriving a matrix,
## cache the inverse of the matrix, and retrive the inverse of the matrix.
## This function only sets up other functions.  It does not perform any mathmatical operations

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    setmat <- function(y) {           ##this function is used to set the matrix using the R prompt
        x <<- y                       ##and the $ operator
        m <<- NULL
    }
    getmat <- function() x    ##this function retrives the cached matrix usign the R prompt and the $ operator
    setsolve <- function(invMat) m <<- invMat     ##this function can be used to cache the inverse of the matrix
    getsolve <- function() m                      ##this function retrives the cached matrix inverse
    list(setmat = setmat, getmat = getmat,
         setsolve = setsolve,
         getsolve = getsolve)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

##The following function will retrive a cached matrix, and return the inverse of that cached matrix.
##if the inverse to the cached matrix has already been calculated and cached, it will not re-calculate
## but return the cached inverse to the matrix and state that it is "getting cached data"

cacheSolve <- function(x, ...) {
    m2 <- x$getsolve()       ##this function looks to see if the inverse has already been calculated
    if(!is.null(m2)) {
        message("getting cached data")
        return(m2)           ##returns the previsoulsy calculated inverse to the matrix
    }
    data <- x$getmat()       ##this functions retrives the cached matrix for which an inverse matrix is desired.
    m2 <- solve(data, ...)   ##this function calculates the inverse to the matrix
    x$setsolve(m2)           ##this function will cache the calculated inverse matrix
    m2                       ##returns the inverse matrix to the console
}