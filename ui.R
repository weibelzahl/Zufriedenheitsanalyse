library(shiny)
library(ggplot2)

shinyUI(fluidPage(
  img(src = "logo.jpg", align = "right"),
  titlePanel("Zufriedenheitsanalyse"),
  verticalLayout(
    fileInput(
      'data_zufriedenheit', 'Limesurveydaten (R Daten-Datei)',
      accept=c('text/csv', 
               'text/comma-separated-values,text/plain', 
               '.csv')
    ),
    radioButtons('format', "Format", c("pdf"="pdf", "html (nur Kommentare)"="html"),inline = TRUE),
    selectInput('kategorie', 'Welche Studiengänge sollen einbezogen werden?', choices = list(
      Campusstudium = c(`Alle Campusstudiengänge` = 'AlleCampus', 
              "B.Sc. General Management" = 'BScGM',
              "B.Sc. Business Administration" = 'BScBA',
              "B.Sc. Orthobionik" = 'BScO',
              "B.Sc. Verbundwerkstoffe/Composites" = 'BScV',
              "M.Sc. General Management" = 'MScGM',
              "M.Sc. Medizinische Orthobionik" = 'MScMO',
              "M.Sc. Verbundwerkstoffe/Composites" = 'MScV'
              ),
            Fernstudium = c(
              "Alle Fernstudiengänge" = 'AlleFern',
              "Alle Fernstudiengänge BWL" = 'AlleFernBWL',
              "B.A. Betriebswirtschaftslehre" = 'BABWL',
              "M.A. Betriebswirtschaftslehre" = 'MABWL',
              "M.A. Advanced Management" = 'MAAM',
              "Business Administration (MBA)" = 'MBA',
              "Alle Fernstudiengänge Psychologie" = 'AlleFernPsy',
              "B.Sc.Psychologie" = 'BScPsy',
              "M.Sc. Psychologie" = 'MScPsy',
              "B.A. Wirtschaftspsychologie" = 'BAWPsy',
              "M.A. Wirtschaftspsychologie" = 'MAWPsy',
              "M.A. Angewandte Psychologie für die Wirtschaft" = 'MAAPsyW'
              )
    ), selectize = FALSE),
    dateInput('date2',
              label = paste('Welches Datum soll im Report erscheinen?'),
              value = as.character(Sys.Date()),
              format = "dd/mm/yyyy",
              startview = 'month', language = 'de', weekstart = 1
    ),
    downloadButton('downloadPDF', "Erstelle Auswertung"),
  hr(), 
  p("PFH Private Hochschule Göttingen; last update 06/09/2016", align = "right")
)))

