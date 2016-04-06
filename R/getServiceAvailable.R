#' Check status of AQDM
#' 
#' Use this function to access the \code{serviceAvailable} endpoint of the air quality
#' data mart
#'
#'@export
getServiceAvailable <- function() {
  
  res <- makeRequest("serviceAvailable")
  
  return(grepl("^Ready", res))
  
}
