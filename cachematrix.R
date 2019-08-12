## Put comments here that give an overall description of what your

## functions do

## This test has the goal to write a pair of functions, namely, 

## "cacheSolve" and "makeCacheMatrix" that cache the inverse of a matrix

## Write a short comment describing this function

## makeCacheMatrix is a function that creates kind of a "matrix" object that can 

## cache your inverse for the input meaning it is an invertible square matrix.

makeCacheMatrix <- function(y = matrix()) {


  inv <- NULL

  set <- function(z) {



    y <<- z



    inv <<- NULL



  }



  get <- function() y



  setinv <- function(inverse) inv <<- inverse



  getinv <- function() inv



  list(set = set, get = get, setinv = setinv, getinv = getinv)



}



## Write a short comment describing this function

## cacheSolve is a function that computes the inverse of the matrix


## returned by makeCacheMatrix above. If the inverse has already been calculated 


## then the cachesolve should retrieve the inverse from the cache


cacheSolve <- function(y, ...) {


        ## Return a matrix that is the inverse of 'y'


  inv <- y$getinv()


  if(!is.null(inv)) {


    message("result")


    return(inv)


  }


  data <- y$get()


  inv <- solve(data, ...)


  y$setinv(inv)


  inv


}



## ---------------Checking the program------------------------



M <- matrix(rnorm(36),6,6)



M0 <- makeCacheMatrix(M)



cacheSolve(M0)

            [,1]       [,2]       [,3]         [,4]        [,5]       [,6]
[1,] -0.67019759  0.2314881  0.6406118 -0.166020475  0.50722838 -0.2122172
[2,]  0.56916205  0.2487320 -0.9264466  0.344649201 -0.17144975  0.2652428
[3,]  0.86093774 -0.5126006 -0.8395565  0.022102603 -0.11968612  0.2902987
[4,]  0.02037916  0.1320115 -0.7263692  0.006934291 -0.42582851  0.3642678
[5,]  0.37895933  0.3128733 -0.3398468  0.443006611  0.02394496  0.6121490
[6,] -0.18914976  0.2780954 -0.2152560 -0.498092480 -0.21426064 -0.2571265
