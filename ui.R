library(shiny)

shinyUI(fluidPage(
  titlePanel("Bollinger Bands"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Select a stock. 
        Data will be retrieved from yahoo finance."),
    
      textInput("symb", "Symbol", "AMZN"),
    
      dateRangeInput("dates", 
        "Date range",
        start = "2015-01-01", 
        end = as.character(Sys.Date())),
      
      br(),
      br(),
      
      checkboxInput("log", "Plot y axis on log scale", 
        value = FALSE),
      
     checkboxInput("adjust", 
        "Adjust prices for inflation", value = FALSE)
    ),
    
    mainPanel(plotOutput("plot"))
  )
))