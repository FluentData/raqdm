#'Get List of parameter codes
#'
#'Use this function to access the \code{list} endpoint of the air quality data
#'mart. 
#'
#'@param name the name of the parameter to list
#'@param criteria a named list of query parametersto subset the named parameter
#'
#'@export
getList <- function(name, criteria, format = "data.frame") {
  
  service <- "list"
  
  if(missing(criteria)) {
    criteria <- list()
  }
  
  criteria$name <- name
  
  res <- makeRequest(service, criteria)
  
  s <- read.table(textConnection(res), sep = "\t", quote = "", stringsAsFactors = FALSE)
  
  if(format == "list") {
    op <- s[, 1]
    names(op) <- s[, 2]
  } else if(format == "data.frame") {
    op <- s
    names(op) <- c("code", "description")
  }
  
  return(op)
  
}