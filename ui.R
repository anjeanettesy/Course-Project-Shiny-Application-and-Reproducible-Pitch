library(shiny)

# Define UI for the Shiny app
shinyUI(fluidPage(
        
        # Application title
        titlePanel("Car MPG Predictor"),
        
        # Sidebar layout
        sidebarLayout(
                sidebarPanel(
                        # Input: Select car model
                        selectInput("car_model", "Select Car Model:", choices = unique(mtcars$carb)),
                        # Input: Enter weight
                        numericInput("weight", "Enter Weight:", value = 2000, min = 1000, max = 5000)
                ),
                
                # Main panel
                mainPanel(
                        # Output: Display predicted MPG
                        verbatimTextOutput("mpg_output")
                )
        )
))
