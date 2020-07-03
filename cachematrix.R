## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# MakeCacheMean creates a special "vector", which is really a list containing a function to:
#1. Set the value of the matrix
#2. Get the value of the matrix
#3. Set the value of the inverse
#4. Get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function (y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
#This function return de inverse of the matrix but first checks if it has already been
# calculated, if so, it gets the inverse and skip the computation.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(m)){
                message("getting cache data")
                return(m)
        }
        data <- x$get()
        i <- inverse(data, ...)
        x$setmean(i)
        i
}
