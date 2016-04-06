#' Get information about monitors asynchronously
#' 
#' Use this function to access the \code{profileNotify} endpoint of the air quality
#' data mart
#' 
#'@param \dots named query parameters to be included in the query
#'
#'@export
getProfile <- function(...) {
  
  params <- list(...)
  
  res <- makeRequest("profileNotify", query = params)
  
  return(res)
  
}
