#' Get information about monitors synchronously
#' 
#' Use this function to access the \code{profile} endpoint of the air quality
#' data mart
#' 
#'@param \dots named query parameters to be included in the query
#'
#'@export
getProfile <- function(...) {
  
  params <- list(...)
  
  res <- makeRequest("profile", query = params)
  
  res <- read.csv(textConnection(res), stringsAsFactors = FALSE)
  
  return(res)
  
}
