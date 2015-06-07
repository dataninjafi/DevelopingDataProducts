library(shiny)
library(rCharts)
library(dygraphs)
library(dplyr)
library(DT)
lungDeaths <- cbind(mdeaths, fdeaths)

shinyServer(
    function(input,output) {
        output$aikasarja <- renderDygraph({
            cbind(mdeaths, fdeaths) %>% 
            dygraph() %>% 
            dyRangeSelector()
        })
        
        output$iris <- DT::renderDataTable(iris, filter = 'top', options = list(lengthChange = FALSE))
        
        output$myChart <- renderChart2({
             r1 <- rPlot(mpg ~ wt | am + vs, data = mtcars, type = "point", color = "gear")
         })
        
        output$myChart2 <- renderChart2({
            as.data.frame(HairEyeColor) %>% 
            filter(Sex == "Male") %>%
            nPlot(Freq ~ Hair, group = "Eye", data = ., type = "multiBarHorizontalChart")
        })    
    }
)