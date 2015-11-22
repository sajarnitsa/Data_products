# server.R

library(quantmod)
source("Bollinger.R")

shinyServer(function(input, output) {

  output$plot <- renderPlot({
    data <- getSymbols(input$symb, src = "yahoo", 
      from = input$dates[1],
      to = input$dates[2],
      auto.assign = FALSE)
                 
    chartSeries(data, theme = chartTheme("white"),  
      type = "bar", log.scale = input$log, TA="addVo();addBBands()")
    reChart(major.ticks='months')
  })
  
})