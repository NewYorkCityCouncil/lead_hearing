## Load Libraries -----------------------------------------------

list.of.packages <- 
c ("data.table",
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
remotes::install_github("newyorkcitycouncil/councildown"))

#checks if packages has been previously installed
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
# if not, packages are installed
if(length(new.packages)) install.packages(new.packages)

# packages are loaded
lapply(list.of.packages, require, character.only = TRUE)


# remove created variables for packages
rm(list.of.packages,new.packages)

## Load source files -----------------------------------------------
source("code/utils/bin_geocode.R")
source("code/utils/utils.R")
source("code/utils/funs.R")
