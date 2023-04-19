library(httr)
library(tidyverse)


get_lat_lon_bin <- function(bin) {
  id <- Sys.getenv("NYC_GEOCLIENT_ID")  
  key <- Sys.getenv("NYC_GEOCLIENT_KEY")
  
  
  params <- list(bin = bin,
                 app_id = id,
                 app_key = key)
  
  base_url <- "https://api.cityofnewyork.us/geoclient/v1/bin.json"
  
  out <- GET(base_url, query = params) %>% 
    content(as = "text") %>% 
    jsonlite::fromJSON()
  
  paste(out$bin$latitudeInternalLabel, out$bin$longitudeInternalLabel, sep = ",")
}



