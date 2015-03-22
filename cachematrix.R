## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        l <- NULL
        set <- function(y) {
                x <<- y
                l <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) l <<- solve
        list (set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        l <- x$getsolve()
        if (!is.null(l)) {
                message ("getting cached data")
                return (l)
        }
        data <- x$get()
        l <- solve (data,...)
        x$setsolve(l)
        l
        ## Return a matrix that is the inverse of 'x'
}
