
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#


library(shiny)


shinyUI(fluidPage(
  
  navbarPage("Annual Salaies - Manufacturing"),
  sidebarPanel(uiOutput("years"),uiOutput("mantypeControls")),
  mainPanel(tabsetPanel(tabPanel("States",plotOutput("SalariesByState"),
  dataTableOutput(outputId="table")),tabPanel("About",mainPanel(includeMarkdown("Readme.md")))))
)
)
