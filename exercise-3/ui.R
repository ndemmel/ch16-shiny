# UI for scatterplot
library(shiny)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
shinyUI <- shinyUI(fluidPage( 
 
  # A page header
  h1("Exploring the MPG Dataset"), 
  
  # Add a select input for the x variable
  selectInput(
    "x_var", "X Variable",
    choices = select_values,
    selected = "displ"
  ),
  
  # Add a select input for the y variable
  selectInput(
    "y_var", "Y Variable",
    choices = select_values,
    selected = "cyl"
  ),

  # Add a sliderInput to set the size of each point
sliderInput("size", label = "Size of point", min = 0, max = 10, value = 5), 

  # Add a selectInput that allows you to select a color from a list of choices
  sliderInput( 
    "color", "Color", 
    choices = c(red = "red", blue = "blue", green = "green")
  ),

  # Plot the output with the name "scatter"
plotOutput("scatter")
))
