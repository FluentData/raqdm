#' Get status of submitted job
#' 
#' Use this function to access the \code{status} endpoint of the air quality
#' data mart
#' 
#'@param requestId the request Id of a previously submitted notify job.
#'
#'@export
getProfile <- function(requestId) {
  
  params <- list(...)
  
  res <- makeRequest("status", list(id=requestId))
  
  return(res)
  
}
