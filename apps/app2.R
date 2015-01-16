regression_model <- function(regressors){
  regressors <- c("mpg",unlist(regressors))
  # cat(regressors)
  dataforlm <- mtcars[, regressors]
  fit_gear <- lm(mpg  ~ ., data =  dataforlm )
  return(fit_gear)
}



sum1 <- reactive({regression_model(input$Var_choice_1)})
output$modres1 <- renderPrint({summary(sum1())})