library(shiny)

# Define server logic
shinyServer(function(input, output) {
        
        # Reactive function to calculate predicted MPG
        predicted_mpg <- reactive({
                car_data <- subset(mtcars, carb == input$car_model)
                predict_mpg <- car_data$mpg - (car_data$wt - input$weight) * 0.2
                return(predict_mpg)
        })
        
        # Display predicted MPG as output
        output$mpg_output <- renderPrint({
                paste("Predicted MPG:", predicted_mpg())
        })
})
