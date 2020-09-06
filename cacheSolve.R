# Function to calculate the inverse of the matrix 
# Depending on if the inverse was calculated previously,
# the function obtains the inverse of the data structure in memory (cache).
# Otherwise, it calculate the inverse using the matrix stored in memory. 

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
