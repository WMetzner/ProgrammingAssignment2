## Put comments here that give an overall description of what your
## The first function, makeCacheMatrix, creates the data structure;
## this is a list with two elements; it is a global variable, i.e. store in the top-most environment
## the first element stores the matrix, 
## the second is NULL initially, until a call to the second function creates the inverse and stores it there
## to use these functions with another matrix, just store the matrix with a call to makeCacheMatrix

makeCacheMatrix <- function(mX = matrix()) {
    mGlobal <<- list( mX, NULL)
    TRUE
	}

# calculate inverse if needed, return inverse; also print info if the inverse is calculated
cacheSolve <- function() {
    if( is.null( mGlobal[[2]])) {
            message( "calculating matrix inverse")
            mGlobal[[2]] <<- solve( mGlobal[[1]])  }
    mGlobal[[2]]
    }
