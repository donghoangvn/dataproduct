library(shiny)
shinyUI( fluidPage(
  titlePanel("Do you fit well?"),
  headerPanel(
    h5("Dong Dinh Hoang - Coursera student")
  ),
  sidebarLayout(
    sidebarPanel(
      h4("Please input your data"),
      numericInput("num1", "Your weight (kg)", value = 0),
      numericInput("num2", "Your height (cm)", value = 0),
      selectInput("sel1", "Your gender", choices = list("Male" = 1, "Female" = 2)),
      actionButton("submitButton","Submit")
    ),
    mainPanel(
      h3("Result"),
      h4("Your body max index (BMI)"),
      verbatimTextOutput("onum1"),
      textOutput("text1")
    )
  )
))