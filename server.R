library(shiny)
bmi <- function(x, y) round(x/(y/100)^2,2)
advice <- c("WHO")
sex <- function(z) {ifelse(z==1, 
                             advice <- c("bmi<120 : underweight", "bmi=20-25 : normal","bmi >=25 : overweight"), 
                             advice <- c("bmi<19 : underweight", "bmi=19-24: normal", "bmi >=24 : overweight"))
  advice}
shinyServer(
  function(input, output){
    output$onum1 <- renderPrint({
      input$submitButton
      isolate(bmi(input$num1,input$num2))})
    output$text1 <- renderPrint({sex(input$sel1)})
  }
)