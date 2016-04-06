#'Generic Request function for data mart
#'
#'This function is used by all other request functions. It is an attempt to 
#'keep things DRY. If U.S. EPA changes their endpoint this is where it should 
#'be updated.
#'
#'@param service The endpoint that is being queried
#'@param query a named list of query parameters to be passed to the service.
#'
#'This will return the raw content of the response from the server so additional
#'processing will be required by the functions that wrap it. For example, the 
#'list endpoints return a tab-delimited file that will need to be converted to 
#'a data frame or a list.
#'
#'@export
makeRequest <- function(service, query, error = "warn") {
  
  url <- "https://aqs.epa.gov/api/"
  
  if(!missing(query)) {
    query <- paste(names(query), query, sep = "=", collapse = "&")
    url <- paste0(url, service, "?", query)
  } else {
    url <- paste0(url, service)
  }
  
  req <- httr::GET(url)
  
  if(httr::status_code(req) == 200) {
    return(httr::content(req))
  } else {
    if(error == "warn") {
      warning(httr::http_status(req))
      return(httr::content(req))
    } else {
      stop(httr::http_status(req))
    }
  }

}