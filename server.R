
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(maps)
library(mapdata)
library(ggplot2)
library(plyr)
library(mapproj)

states_map <- map_data("state")

econ <- read.delim("AM1531AS101.dat",header = TRUE,sep="|",stringsAsFactors = FALSE)
lengthIs <- function(x) nchar(x)==3
summcat <- sapply(econ$NAICS2012,lengthIs)
## Filter out Total Categories to leave only detail
econ <- econ[summcat,]
## Filter out US to only leave states
econ <- econ[econ$GEO_ID != "0100000US",]

mantype <- sort(unique(econ$NAICS2012_TTL))
Years <- sort(unique(econ$YEAR))

shinyServer(function(input, output) {
  

  output$SalariesByState <- renderPlot(
    {
      paydata <- ddply(econ[econ$YEAR %in% input$Years & econ$NAICS2012_TTL %in% input$mantypes,],~GEO_TTL,summarise,pay=sum(PAYANN))
      Pay <- paydata$pay
      title <- "Annual Salaries by State"
      p <- ggplot(paydata, aes(map_id = tolower(paydata$GEO_TTL)))
      p <- p + geom_map(aes(fill = Pay), map = states_map, colour='white') + expand_limits(x = states_map$long, y = states_map$lat)
      p <- p + coord_map() + theme_bw()
      p <- p + labs(x = "Long", y = "Lat", title = title)
      print(p)
    })

  output$mantypeControls <- renderUI({
      checkboxGroupInput('mantypes', 'Manufacturing Activities', mantype, selected=mantype)
  })
  output$years <- renderUI({
    checkboxGroupInput('Years','Years of Data',Years,selected=Years)
  })
  
  output$table <- renderDataTable({
    paydata <- ddply(econ[econ$YEAR %in% input$Years & econ$NAICS2012_TTL %in% input$mantypes,],~GEO_TTL,summarise,pay=sum(PAYANN))
    return(paydata)
    })
  
})
