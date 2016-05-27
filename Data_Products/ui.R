library(shiny)

# UI for application that analyzes mtcars dataset
#https://dmshrestha.shinyapps.io/DataProducts
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Mtcars Estimator!"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 100,
                  value = 30)
      #fluidRow(column(3, verbatimTextOutput("colmt")))
    ),
    sidebarPanel(
      textInput("estimator","Estimator", "hp"),
      textInput("color1","Color", "red")
    )
  ),
  
    # Show a plot of the generated distribution for selected estimator
    mainPanel(
      plotOutput("distPlot"),
      plotOutput("gPlot"),
      fluidRow(column(3, verbatimTextOutput("colmt")))
    )
  )
)
