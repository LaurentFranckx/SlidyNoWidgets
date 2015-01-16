output$plothisto <- renderPlot({
  xname = reactive(input$histo_var)
  hist(mtcars[, input$histo_var] , xlab =  xname(), main = paste("Histogram of ", xname()), breaks = input$bin) 
  
}
)


