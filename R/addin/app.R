#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

panel <- function(title, style = "default", ...) {
  tags$div(class = paste0("panel panel-", style),
    tags$div(class = "panel-heading", 
      tags$h3(class = "panel-title", title)        
    ),
    tags$div(class = "panel-body", ...)
  )
}

# Define UI for application that draws a histogram
ui <- shinyUI(fluidPage(
  panel(title = "Parameters", style = "primary",
    selectInput("pc", "Parameter Class", choices = c(), width = "100%"),
    selectInput("param", "Parameter", choices = getList("param", format = "list"), width = "100%")
  )
  
  
))

# Define server logic required to draw a histogram
server <- shinyServer(function(input, output) {
   
 
})

# Run the application 
shinyApp(ui = ui, server = server)

