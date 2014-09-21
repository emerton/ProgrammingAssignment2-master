# Assignment 2: cache the inverse of a matrix

## This functions creates an object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

}
i <- NULL

set <- function(matrix){
		m<<-matrix
		i<<-NULL
}

get<- function(){
	m
}

setInverse <- function(inverse) {
	i<<-inverse
}

list(set=set, get=get,
	setInverse = setInverse
	getInverse = getInverse)

## Compute the inverse of the special matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
m<- x$getInverse()

if( !is.null(m) ){
	message("getting cached data")
	return(m)
}
data <-x$get()

m <- solve(data) %*% data

x$setInverse(m)

m
