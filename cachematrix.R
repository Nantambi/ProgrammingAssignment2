## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makecachedmatrix-creates an object to hold a matrix
makeCacheMatrix <- function(x = matrix()) {
        cachedinverse<-function(newx){
                x<<-newx
                cachedinverse<<-NULL
}
        get<-function()x
        setcachedinverse<-function(inverse)cachedinverse<<-inverse
        getcachedinverse<-function()cachedinverse
        list(set=set,get=get,setcachedinverse=setcachedinverse,getcachedinverse=getcachedinverse)
}


## Write a short comment describing this function
cachedsolve-returns the inverse of the matrix
cacheSolve <- function(x, ...) {
       cached<-x$getcachedinverse()
        if(!is.null(cached)){
                return(cached)
        }
        z<-x$get()
        cached<-solve(z)
        x$setcachedinverse(cached)
        cached
}
