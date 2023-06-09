## Load Libraries -----------------------------------------------

list.of.packages <- 
c ("dplyr", "ggplot2",
  "data.table",
"leaflet",
"zoo",
"leaflet",
"purrr",
"sf",
"httr",
"rmarkdown",
"htmltools",
"Rcpp",
"htmlwidgets", 
"stringr",
"dplyr",
"ggiraph",
"vroom",
remotes::install_github("newyorkcitycouncil/councildown"))

#checks if packages has been previously installed
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
# if not, packages are installed
if(length(new.packages)) install.packages(new.packages)

# packages are loaded
lapply(list.of.packages, require, character.only = TRUE)


# remove created variables for packages
rm(list.of.packages,new.packages)


## Load data for 01_litigations_lead.Rmd ---------------------------
council_districts = unzip_sf("https://www.nyc.gov/assets/planning/download/zip/data-maps/open-data/nycc_21d.zip") %>% 
	st_read() %>% 
	st_transform(st_crs(4326))
  
pluto_file <- fread("https://data.cityofnewyork.us/resource/64uk-42ks.csv?$limit=99999999") 
pluto_sub <- pluto_file[unitsres > 0, .(
    bbl = str_sub(as.character(bbl), 1, 10),
    borough = borough,
    council_dist = council)]
    
under_six_df <- read.csv('../data/input/council-estimates_under-6.csv')
under_six_df <- under_six_df %>% 
       rename("council_district" = "CounDist")
# make geometry column a list to convert into spatial
under_six_df$geometry <- as.list(under_six_df$geometry)
# make into a spatial object
under_six_shp <- under_six_df %>% st_as_sf()  
st_crs(under_six_shp) <- 4326
    
    
