## A pair of functions that cache the inverse of a matrix


## So this function creates a special matrix object that can cache it's inverse
makeCacheMatrix <- function( m = matrix() ) {
	
	## Initialize the inverse property
    i <- NULL

    ## This is a method to set the matrix
    set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }

    ## So this is a method to get the matrix
    get <- function() {
    	## Return the matrix
    	m
    }

    ## So this method to set the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## Method to get the inverse of the matrix
    getInverse <- function() {
        ## Return the inverse property
        i
    }

    ## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## The cacheSolve function computes the inverse of the special matrix returned by "makeCacheMatrix".
## If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {

    ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()

    ## Just return the inverse if its already set
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

    ## Gets he matrix from our object
    data <- x$get()

    ## Calculates the inverse using matrix multiplication
    m <- solve(data) %*% data

    ## Set the inverse to the object
    x$setInverse(m)

    ## Return the matrix
    m
}