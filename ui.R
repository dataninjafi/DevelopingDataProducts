library(shiny)
library(shinydashboard)

ui <- dashboardPage(
    dashboardHeader(title = "Datavisualisaattori"),
    dashboardSidebar(
        menuItem("Sairauspoissaolot", 
                 tabName = "sairauspoissaolot", 
                 icon = icon("heart")),
        menuItem("Työkyvyttömyyseläkkeet", 
                 tabName = "tkElake", 
                 icon = icon("wheelchair")),
        menuItem("Työtapaturmat", 
                 tabName = "tapaturmat", 
                 icon = icon("frow-o")),
        menuItem("Työterveyshuolto", 
                 tabName = "tth", 
                 icon = icon("stetoscope"))
    ),
    dashboardBody("Tähän kuvio")
)
    
