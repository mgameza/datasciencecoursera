# Function to create the special "matrix" object that contains not only the functions needed:
# set, get, setsolve and getsolve, but also the variables required:
# x (the result searched) and m (the data, in this case, the matrix)

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
