server <- function(input, output, session) {
  
  points <- eventReactive(input$recalc, {
    cbind(rnorm(40) * 2 + 13, rnorm(40) + 48)
  }, ignoreNULL = FALSE)
  
  output$mymap <- renderLeaflet({
    leaflet() %>%
      setView(-92.816, 16.125, 8) %>%
      addTiles() %>%
      addPolygons(data = datos)
  })
}