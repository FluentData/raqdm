#' Retrieve a submitted job
#' 
#' Use this function to access the \code{retrieve} endpoint of the air quality
#' data mart
#' 
#'@param requestId the request Id of a previously submitted notify job.
#'
#'@export
getRetrieve <- function(requestId) {
  
  params <- list(...)
  
  res <- makeRequest("retrieve", list(id=requestId))
  
  return(res)
  
}
