#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    fluidPage(
      # App title
      titlePanel("Stock Visualization App"),

      # App subtitle
      tags$h4("Visualize daily stock prices for Google and Meta"),

      # Date range input
      fluidRow(
        column(
          width = 6,
          dateRangeInput(
            inputId = "date_range",
            label = "Select date range",
            start = as.Date("2020-01-01"),
            end = as.Date("2023-03-01")
          )
        )
      ),

      # Stock plot output
      fluidRow(
        column(
          width = 12,
          plotOutput("stock_plot")
        )
      )
    )

  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "Medium2Solution"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
