library(shiny)
library(ggplot2)

shinyServer(function(input, output) {

  output$downloadPDF <-
    downloadHandler(
      filename = function() {
        if(input$format=="pdf"){
          extension <- ".pdf"
        }else{
          extension <- ".html"
        }
        
        paste("Zufriedenheit_", paste(as.character(input$kategorie)), extension, sep = "")
        },
      content = function(file) {
        # get file
        inFile <- input$data_zufriedenheit

        # hand over config
        studiengang_id <- paste(as.character(input$kategorie))
        datum <- paste("", format(input$date2, format = "%d.%m.%Y"))

        # generate PDF
        library(knitr)
        knit2pdf("zufriedenheitsanalyse.rnw", encoding = "UTF-8")
        # copy pdf/html to 'file'
        if(input$format=="pdf"){
          file.copy("zufriedenheitsanalyse.pdf", file)
        }else{
          file.copy("zufriedenheitsanalyse.html", file)
        }
          
        # delete generated files
         file.remove(
            "zufriedenheitsanalyse.pdf", 
            "zufriedenheitsanalyse.tex",
            "zufriedenheitsanalyse.aux", 
            "zufriedenheitsanalyse.log",
            "zufriedenheitsanalyse.toc",
            "zufriedenheitsanalyse.html"
        )
        # delete folder with plots
        unlink("figure", recursive = TRUE)
      },
      contentType = "application/pdf"
    )
})
