library(shiny)
library(ggplot2)

shinyServer(function(input, output) {

  output$downloadPDF <-
    downloadHandler(
      filename = function() {
        
        paste("Zufriedenheit_", paste(as.character(input$kategorie)), ".pdf", sep = "")
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
        # copy pdf to 'file'
        file.copy("zufriedenheitsanalyse.pdf", file)
          
        # delete generated files
        file.remove(
            "zufriedenheitsanalyse.pdf", "zufriedenheitsanalyse.tex",
            "zufriedenheitsanalyse.aux", "zufriedenheitsanalyse.log",
            "zufriedenheitsanalyse.toc"
        )
        # delete folder with plots
        unlink("figure", recursive = TRUE)
      },
      contentType = "application/pdf"
    )
})
