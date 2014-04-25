##This function will retrive a cached matrix, and return the inverse of that cached matrix.
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