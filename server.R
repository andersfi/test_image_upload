shinyServer(function(input, output) {
  output$outputImage <- renderImage({
    ###This is to plot uploaded image###
    if (is.null(input$file1)){
      outfile <- "./images/temporary.jpg"
      contentType <- "image/jpg"
      #Panda image is the default
    }else{
      outfile <- input$file1$datapath
      contentType <- input$file1$type
      #Uploaded file otherwise
    }
    
    list(src = outfile,
         contentType=contentType,
         width=300)
  }, deleteFile = TRUE)
})
