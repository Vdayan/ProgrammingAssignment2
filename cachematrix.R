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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
