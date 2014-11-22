## Programming Assignment you will take advantage of the scoping rules of
## the R language and how they can be manipulated to preserve state inside
## of an R object.

## This function create a special matrix object that offer caching 
makeCacheMatrix <- function(x = matrix()) {
        
}


## This function computes the inverse of the special
## matrix object returned by `makeCacheMatrix` above. If the inverse has
## already been calculated (and the matrix has not changed), then the
## `cachesolve` should retrieve the inverse from the cache. Otherwise it will call
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        solve(x)
}
