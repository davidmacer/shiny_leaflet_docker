library(shiny)
library(leaflet)
library(sf)

ui <- fluidPage(
  leafletOutput("mymap")
)