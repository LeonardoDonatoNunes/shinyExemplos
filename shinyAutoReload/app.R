library(shiny)

options(shiny.autoreload = TRUE)

ui <- fluidPage(
  
    textInput('teste', "Teste"),
    textOutput('teste_out')
    
)

server <- function(input, output, session) {
  output$teste_out <- renderText({
      input$teste
  })
}

shinyApp(ui, server)