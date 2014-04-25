## This function will take a matrix as input and create four functions that retrive the matrix 
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
