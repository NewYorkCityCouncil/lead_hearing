# title: "04_litigations_lead_tables_and_stats"
# date: "2023-04-27"

# Run files 01-03 first.

# ---- MAP 1 TABLE -----
# ---- get table of litigations by cd
lit_tbl <- arrange(as.data.frame(lead_litigations_cd_sums) %>% select('council_district', 'count'), council_district)
# sum(lit_tbl$count) - just checking
# ---- write out as .csv
write.csv(lit_tbl, "data/output/litigations_by_cd.csv", row.names=FALSE)

# ---- MAP 3, 4 TABLE ----
# ---- get table of litigations per thousand buildings by cd
lit_per_thousand_tbl <- arrange(as.data.frame(under_six_shp_short) %>% select('council_district', 'lit_per_thous_bbl'), council_district)
lit_per_thousand_tbl$rounded <- round(lit_per_thousand_tbl$lit_per_thous_bbl,2)
# ---- write out as .csv
write.csv(lit_per_thousand_tbl, "data/output/litigations_per_thousnd_bldngs_by_cd.csv", row.names=FALSE)

# ---- LITIGATIONS OVER TIME TABLE ----
# ---- get table of litigations over time
lit_over_time <- lead_litigations %>% group_by(yr) %>% summarise(count=n())
# ---- write out as .csv
write.csv(lit_over_time, "data/output/litigations_over_time.csv", row.names=FALSE)

# ---- STAT: LEAD CASES IN NYC COURTS ----
# ---- get unique building owners
length(unique(lead_litigations$respondent))
# ---- get pct in bronx
round(nrow(lead_litigations[lead_litigations$boroid == 2,])/nrow(lead_litigations),2)

