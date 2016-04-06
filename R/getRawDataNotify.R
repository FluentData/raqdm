#'Return monitoring data asynchronously
#'
#'Use this function to access the \code{rawDataNotify} endpoint of the air 
#'quality data mart.
#'
#'@param \dots named query parameters to be included in the query
#'
#'@export
getRawData <- function(...) {
  
  params <- list(...)
  
  params$format <- "DMCSV"
  
  res <- makeRequest("rawDataNotify", query = params)
  
  return(res)
  
}