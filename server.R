server <- function(input, output, session) {
  
  datos <- read_sf("./data/mun.geojson")
  
  output$mymap <- renderLeaflet({
    leaflet() %>%
      setView(-92.816, 16.125, 8) %>%
      addTiles() %>%
      addPolygons(data = datos)
  })
}