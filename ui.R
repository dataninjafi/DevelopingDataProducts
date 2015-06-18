library(shiny)
library(shinydashboard)
library(dygraphs)
library(markdown)

ui <- dashboardPage(
    dashboardHeader(title = "Time Series Visualiser"),
    dashboardSidebar(
        sidebarMenu(
            menuItem("Documentation", 
                     tabName = "documentation", 
                     icon = icon("book")),
            menuItem("Time Series Visualiser", 
                 tabName = "timeseries", 
                 icon = icon("heart-o"))
        )
    ),
    dashboardBody(
        tabItems(

            tabItem(tabName = "documentation",
                    fluidPage(includeMarkdown("documentation.md"))
            ),
            tabItem(tabName = "timeseries",
                    fluidRow(
                      box(selectInput("gender","Choose a data set:",
                                      c("UK population" = "population",
                                        "UK population, females" = "female",
                                        "UK population, males" = "male",
                                        "UK population, both genders" = "lungDeaths"))
                      ),
                      box(selectInput("method","Explore data:",
                                      c("Observed deaths" = "x",
                                        "Seasonal fluctuation in deaths" = "seasonal",
                                        "Trend in deaths" = "trend",
                                        "Randomness in deaths" = "random"))
                      )
                    ),
                    fluidPage("Monthly Deaths from Lung Diseases in the UK" , 
                              dygraphOutput("timeseries"))
                              #verbatimTextOutput("timeseries"))
            )
        )
    )
)
    
