# Assignment 2: First, cache the inverse of a matrix

## This function creates an object that will be able to cache its inverse

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

## Then compute the inverse of the special matrix

cacheSolve <- function(x, ...) {
        ## This returns a matrix that is the inverse of 'x'
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
