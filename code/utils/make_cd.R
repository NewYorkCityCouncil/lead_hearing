library(polylabelr)
library(sf)
library(dplyr)
library(purrr)

set.seed(20190108)

dists <- sf::st_read("https://data.cityofnewyork.us/api/geospatial/yusd-j4xi?method=export&format=GeoJSON")

names(st_geometry(dists)) <- NULL

dists <- dists %>%
  mutate(lab_coord = map(geometry, ~poi(st_coordinates(.), precision = .000001)),
         lab_x = map_dbl(lab_coord, "x"),
         lab_y = map_dbl(lab_coord, "y"))
