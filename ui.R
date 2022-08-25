library(shiny)
library(leaflet)
library(sf)

r_colors <- rgb(t(col2rgb(colors()) / 255))
names(r_colors) <- colors()
datos <- read_sf("./data/mun.geojson")

ui <- fluidPage(
  leafletOutput("mymap"),
  p(),
  actionButton("recalc", "New points")
)