### Exercise 3 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 

# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter
shinyServer <- shinyServer(function(input, output) {
  output$scatter <- renderPlot( {
    
    # Store x and y values to plot
  x_choice <- mpg[[input$x_var]]
  y_choice <- mpg[[input$y_var]]
  

    # Store the title of the graph in a variable
  title <- paste0("MPG Data: ", input$x_var, "vs", input$y_var)
    
    # Create ggplot scatter
  scatter_plot <- ggplot(mpg) + 
    geom_point(mapping = aes(x = x_choice, y = y_choice), 
             size = input$size, 
             color = input$color) +
    labs(x = input$x_var, y = input$y_var, title = title)
  scatter_plot
  })
})
