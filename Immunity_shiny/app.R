#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


library(shiny)

immuno <- read.csv("measles_df.csv", stringsAsFactors = F, check.names = F)


ui <- fluidPage(
    titlePanel("ASEAN Immunity status"),
    sidebarLayout(
        sidebarPanel(
            selectInput("yearInput", "Year", choices = c("2004", 
                                                         "2005", 
                                                         "2006",
                                                         "2007",
                                                         "2008",
                                                         "2009",
                                                         "2010",
                                                         "2011",
                                                         "2012",
                                                         "2013",
                                                         "2014"))
          
        ),
        mainPanel(
            plotOutput("coolplot"),
            br(),
            tableOutput("results")
        )
    )
        
)

?selectInput

server <- function(input, output) {
    output$coolplot <- renderPlot({
        plot(immuno$`2004`)
    })
}

shinyApp(ui = ui, server = server)
