#'@export
aqdmConnection <- R6Class("raqdmQuery", 
  public = list(
    initialize = function(notify = TRUE, user = Sys.getenv("RAQDM_USER"),
                                       pass = Sys.getenv("RAQDM_PASS")) {
    
      if(user != "") {
        private$user = user
      } else {
        stop("You must provide an AQDM username.")
      }
      
      if(pass != "") {
        private$pass = pass
      } else {
        stop("You must provide an AQDM password.")
      }
    
      private$notify <- notify
    
    },
    setNotify = function(notify) {private$notify <- notify},
    print = function() {
      cat("AQDM Connection:\n  user:\t", private$user, "\n  notify:\t", private$notify)
    },
    rawData = function(...) {
      if(private$notify) {
        func <- getRawDataNotify
      } else {
        func <- getRawData
      }
      
      
      
    },
    profile = function(...) {
      
    },
    list = function(name, params) {
      
    },
    retrieve = function(requestId) {
      
    },
    available = function() {
      
    },
    status = function(requestId) {
      getStatus(requestId)
    }
    
  ),
  active = list(

  ),
  private = list(
    user = NULL,
    pass = NULL,
    notify = TRUE,
    requests = list()
  )
)

