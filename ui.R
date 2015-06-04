library(shiny)

shinyUI(fluidPage(
    # Application title
    titlePanel("Kevan datavisualisaattori"),
    
    #Sidebar
    sidebarLayout(
        sidebarPanel("Tähän tulee valintapaneeli"),
        mainPanel("Tähän tulee kuvio")
    )
))