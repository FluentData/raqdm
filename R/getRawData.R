#'Return monitoring data synchronously
#'
#'Use this function to access the \code{rawData} endpoint of the air quality
#'data mart.
#'
#'@param \dots named query parameters to be included in the query
#'
#'@export
getRawData <- function(...) {
  
  params <- list(...)
  
  params$format <- "DMCSV"
  
  res <- makeRequest("rawData", query = params)
  
  res <- read.csv(textConnection(res), stringsAsFactors = FALSE)
  
  return(res)
  
}