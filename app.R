library(shiny)

ui <- fluidPage(
  titlePanel("歡迎參加 R-Ladies Taipei!"),

  sidebarLayout(
    sidebarPanel("sidebar panel"),
    mainPanel("main panel")
  )
)

server <- function(input, output) {}

shinyApp(ui = ui, server = server)
