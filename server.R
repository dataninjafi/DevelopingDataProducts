library(shiny)
library(dygraphs)
library(dplyr)
library(shinydashboard)
lungDeaths <- cbind(mdeaths, fdeaths)
male <- mdeaths
female <- fdeaths
population <- ldeaths

shinyServer(
    function(input,output) {
        output$timeseries <- renderDygraph({
            get(input$gender) %>% 
                decompose %>%
                .[[input$method]] %>% {
                    if (input$gender=="lungDeaths" & input$method!="seasonal") {
                        colnames(.) <- c("male","female") 
                    } 
                    .
                } %>% 
                dygraph %>% 
                dyRangeSelector
        })
#         output$timeseries <- renderDygraph({
#             get(input$gender) %>% 
#                 decompose %>%
#                 .[input$method] %>% {
#                     if (input$gender=="lungDeaths") names(.) <- c("mdeaths","fdeaths")
#                     .
#                 } 
#                 dygraph %>%
#                 dyRangeSelector
#         })
#         output$progressBox <- renderInfoBox({
#             infobox(
#                 "Progress", paste(input$gender, input$method), icon = icon("list"),
#                 color = "purple", fill = TRUE
#             )
#         })
#         
#         output$oid1 <- renderPrint({input$method})
#         

        
        
    }
)