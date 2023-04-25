
# ++++++ code for ++++++ #
#lead_data_hmcv_4_24_2023.csv#

library(data.table)

hmcv <-fread("https://data.cityofnewyork.us/resource/wvxf-dwi5.csv?$where=inspectiondate>='2018-01-01'&$limit=99999999999")[!currentstatus %in% "VIOLATION DISMISSED"]
lead_paint <- hmcv[grep("SECTION 27-2056.6", novdescription, ignore.case = TRUE), .(bbl, violationid, inspectiondate, CounDist=councildistrict)]

lead_paint[, inspectiondate := as.Date(inspectiondate)]
lead_paint[, yearinspect := year(inspectiondate)]

write.csv(lead_paint,"data/lead_data_hmcv_4_27_2023.csv")
