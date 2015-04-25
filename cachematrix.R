## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# 1 clear out inv variable inv
# 2 define function which stores the matrix in set
# 3 define get function which retrives the original matrix
# 4 define function which inverstes the stores matrix
# 5 define function which retrives the inverted matrix
# 6 creates a vector the 4 functions


makeCacheMatrix <- function(x = matrix()) {
        
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        set_inv <- function(solve) inv <<- solve
        get_inv <- function() inv
        list(set = set, get = get,
             set_inv = set_inv,
             get_inv = get_inv)
        
}


## Write a short comment describing this function
# checks to see if matrix exists
# returns cached inverse matrix if it exists



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$get_inv()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        data<-x$get()
        inv<-solve(data, ...)
        x$set_inv(inv)
        inv

}






##testing creates matrix and test results 
#matrix(rnorm(10000), ncol=100, nrow=100)->test2
#makeCacheMatrix(test2)
#cacheSolve(makeCacheMatrix(test2))
#cacheSolve(makeCacheMatrix(test2))->test3
##checks if matrix * its inverse is equal to the identity matrix
#sapply(test3%*%test2,round, digits=4)==diag(nrow=nrow(test2),ncol=ncol(test2))



