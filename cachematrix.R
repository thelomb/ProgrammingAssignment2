## Programming Assignment you will take advantage of the scoping rules of
## the R language and how they can be manipulated to preserve state inside
## of an R object.

## This function create a special matrix object
makeCacheMatrix <- function(x = matrix()) {
        
        ## when constructing matrix the inverted matrix emptied
        invMatrix <- NULL
        
        ## set function
        set <- function(y) {
                x<<- y
                invMatrix<<-NULL
        }
        
        ## get function
        get <- function (){
                x
        }
        
        ## set the inverse matrix
        setInvMatrix <- function(inverse){
                invMatrix<<- inverse
        }
        
        ## get the inverse matrix
        getInvMatrix <- function(){
                invMatrix
        }
        
        list(set = set, get = get,
             setInvMatrix = setInvMatrix,
             getInvMatrix = getInvMatrix)        
}


## This function computes the inverse of the special
## matrix object returned by `makeCacheMatrix` above. If the inverse has
## already been calculated (and the matrix has not changed), then the
## `cachesolve` should retrieve the inverse from the cache. Otherwise it will call

cacheSolve <- function(x, ...) {

        ## the inverse matrix is retrieve from the special matrix
        invMatrix <- x$getInvMatrix()
        
        ## if it exists the cache matrix is retrieved
        if(!is.null(invMatrix)) {
                
                message("getting inverted matrix cached data")
                return(invMatrix)
        }
        
        ## if inverse matrix does not exists, retrieve the special matrix
        myMatrix <- x$get()
        
        ## Return a matrix that is the inverse of 'myMatrix'
        myMatrix <- solve(myMatrix, ...)
        
        ## Set the inverse matrix in the special object
        x$setInvMatrix(myMatrix)
        
        ## return the inverse matrix
        myMatrix
}
