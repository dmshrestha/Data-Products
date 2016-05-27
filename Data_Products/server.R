library(shiny)
library(ggplot2)
#library(mtcars)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
 
  output$distPlot <- renderPlot({
    col1 <-input$estimator
    color1<-input$color1
    x    <- mtcars[,col1] #mtcars data
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = color1, border = 'white')
  })
  
  output$gPlot <- renderPlot({
    col1 <-input$estimator
    color1<-input$color1
    qqnorm(resid(model1()),color=color1)
    #x    <- mtcars[,col1] #mtcars data
    #ggplot(data=mtcars, aes(x=disp, y=col1)) +
    #  geom_point(aes(size=input$bins),color=color1) +
    #  scale_size_continuous(range=c(-1,5)) +
    #  theme(legend.position = "none")
  })
  
  model1 <- reactive({
    col1 <-input$estimator
    lm(mpg ~ am+wt+hp+disp, data = mtcars);
  })
  
  output$colmt <- renderPrint({ 
    colnames(mtcars)
  })
})
