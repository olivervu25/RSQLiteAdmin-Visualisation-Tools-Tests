#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd

source("R/plot_function.R")

app_server <- function(input, output, session) {
  # Render the plot based on the date range input
  output$stock_plot <- renderPlot({
    create_plot_stock(input$date_range[1], input$date_range[2])
  })

}
