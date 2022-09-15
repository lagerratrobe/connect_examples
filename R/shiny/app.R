library(dplyr)
library(shiny)

# Simple mtcars data set with 3 columns
df <- mtcars %>% select(cyl, mpg)
df$model <- row.names(df)
row.names(df) <- NULL

# Define shiny layout
ui <- fluidPage(
  titlePanel("mtcars shiny example"),
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "num_cyl",
                  label = h4("Cylinders"),
                  choices = unique(df$cyl),
                  selected = 8)
      ),
    mainPanel(
      h2("MPG by Cylinder"),
      tableOutput("table_data")
    )
  )
)

# Define server logic
server <- function(input, output, session) {
  car_data <- reactive({
    df[df$cyl == input$cyl,]
  })
  
  output$table_data <- renderTable({
    filter(df, cyl == input$num_cyl)
  })
}

# Run the app
shinyApp(ui = ui, server = server)