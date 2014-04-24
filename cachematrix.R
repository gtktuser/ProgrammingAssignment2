## Prepares a matrix for inverse caching
## usage:
## a <- makeCacheMatrix(matrix(1:4,2))
## a$get() displays current values for a
## a$set(matrix(1:9,3)) changes the matrix values for a
## a$getInv() gets the inverse ONLY after cacheSolve(a) was called
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInv <- function(solve) m <<- solve
        getInv <- function() m
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}

## Returns a matrix that is the inverse of 'x'
## after it was previously "prepared" with makeCacheMatrix above
## usage:
## x <- makeCacheMatrix(matrix(1:4,2))
## cacheSolve(x)

cacheSolve <- function(x, ...) {
        m <- x$getInv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setInv(m)
        m
}

