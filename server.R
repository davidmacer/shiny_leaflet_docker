library(shiny)
library(leaflet)
library(sf)

datos <- read_sf("./data/mun.geojson")

server <- function(input, output, session) {
  
  points <- output$mymap <- renderLeaflet({
    leaflet() %>%
      setView(-92.816, 16.125, 8) %>%
      addTiles() %>%
      addPolygons(data = datos)
  })
}