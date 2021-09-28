
library(shiny)

shinyUI(fluidPage(
  titlePanel("Predict Horsepower from MPG"),
  
  sidebarPanel(
    sliderInput("sliderMPG", "What is the MPG of the car?", 10, 35, value=20),
    checkboxInput("showModel1", "Model 1", value =TRUE),
    checkboxInput("showModel2", "Model 2", value =TRUE),
    submitButton("Predict")
  ),
  mainPanel(
    plotOutput("plot1"),
    h4("Predict HP - Model 1:"),
    textOutput("pred1"),
    h4("Predict HP -Model 2:"),
    textOutput("pred2")
  )
))
