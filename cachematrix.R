## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## estas son las funciones que almacenan en memoria cache el inverso de una matriz 
## esta funcion genera un objeto llamado matrix que podra almacenar en memoria cache su inverso

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}




## Write a short comment describing this function
## esta funcion cacheSolve calcula el inverso de la matriz que devuelve makeCacheMatrix
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv      
}
