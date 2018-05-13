shinyUI(
  fluidPage(titlePanel("Simple Image upload test"),
            tags$hr(),
            fluidRow(
              column(width=4,
                     fileInput("file1", "Choose a file", accept = c('image/png', 'image/jpeg')),
                     imageOutput('outputImage')
              ),
              column(width=8#,
                     #plotOutput("plot")
              )
            )
  )
)