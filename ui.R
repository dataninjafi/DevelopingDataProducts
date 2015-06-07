library(shiny)
library(shinydashboard)
library(dygraphs)
library(rCharts)

ui <- dashboardPage(
    dashboardHeader(title = "Datavisualisaattori"),
    dashboardSidebar(
        sidebarMenu(
            menuItem("Sairauspoissaolot", 
                 tabName = "sairauspoissaolot", 
                 icon = icon("heart-o")),
            menuItem("Työkyvyttömyyseläkkeet", 
                 tabName = "tkElake", 
                 icon = icon("wheelchair")),
            menuItem("Työtapaturmat", 
                 tabName = "tapaturmat", 
                 icon = icon("flash")),
            menuItem("Työterveyshuolto", 
                 tabName = "tth", 
                 icon = icon("stethoscope")),
            menuItem("Vakuutetut", 
                     tabName = "vakuutetut", 
                     icon = icon("user")),
            menuItem("Eläkeratkaisutoiminta", 
                     tabName = "ratkaisutoiminta", 
                     icon = icon("bar-chart")),
            menuItem("Tutkimukset", 
                     tabName = "tutkimukset", 
                     icon = icon("graduation-cap")),
            menuItem("Asiakastyytyväisyys ", 
                     tabName = "asty", 
                     icon = icon("smile-o")),
            menuItem("Rahoitus", 
                     tabName = "rahoitus", 
                     icon = icon("euro")),
            menuItem("Ostolaskut", 
                     tabName = "ostolaskut", 
                     icon = icon("credit-card")),
            menuItem("Keva organisaationa", 
                     tabName = "keva", 
                     icon = icon("institution"))
        )
    ),
    dashboardBody(
        tabItems(
            tabItem(tabName = "sairauspoissaolot",
                    fluidPage("Aikasarja",dygraphOutput("aikasarja"))
                    ),
             tabItem(tabName = "tkElake", 
                     fluidPage("Ristiintaulukoitu",showOutput("myChart", "polycharts"))
              ),
             tabItem(tabName = "tapaturmat",
                     fluidPage(showOutput("myChart2", "nvd3"))
             ),
            tabItem(tabName = "tth",
                    tags$iframe(src = "http://rpubs.com/welxo88/kela_tth_IvsIIsuhde", seamless=NA, width=1200, height=800)
            ),
            tabItem(tabName = "vakuutetut",
                    fluidPage("Taulukko", DT::dataTableOutput("iris"))
            ),
            tabItem(tabName = "ratkaisutoiminta",
                    "Tähän eläkeratkaisutilastoja"
                    ),
            tabItem(tabName = "tutkimukset",
                    "Tähän tutkimusvisualisointeja"
            ),
            tabItem(tabName = "asty",
                    "Tähän asty-visualisointeja"
            ),
            tabItem(tabName = "rahoitus",
                    "Tähän rahoitusvisualisointeja"
            ),
            tabItem(tabName = "ostolaskut",
                    "Tähän ostolaskuvisualisointeja"
            ),
            tabItem(tabName = "keva",
                    "Tieto kevasta"
            )
        )
    )
)
    
