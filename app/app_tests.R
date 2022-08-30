library(shiny)

ui <- fluidPage(
  textInput("name", "What's your name?", placeholder = "Enter your text here"),
  passwordInput("password", "What's your password?", placeholder = "Enter your password here"),
  textAreaInput("story", "Tell me about yourself", rows = 2,
                placeholder = "Enter your text here", resize = "both"),
  numericInput("num", "Number one", value = 0, min = 0, max = 100, step = 10),
  sliderInput("num2", "Number Two", value = 5000, min = 0, max = 10000, step = 1000, ticks = FALSE,
              post = "€", animate = animationOptions(loop = TRUE), sep = ","),
  sliderInput("rng", "Range", value = c(10, 20), min = 0, max = 100,
              step = 5, ticks = FALSE, animate = TRUE, dragRange = TRUE)
)

server <- function(input, output, session) {
}

shinyApp(ui, server)
