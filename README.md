# project_template
a template repository for future github projects


## Basic Repo Structure Overview

***

## Readme Example



### Lead in NYC Homes
Data analysis and visuals for NYCC 04.25.2023 ['Oversight - Lead-Based Paint Hazards'](https://legistar.council.nyc.gov/MeetingDetail.aspx?ID=1088690&GUID=98ED2BD8-8C91-4DD7-B43B-A02670026577&Options=info%7C&Search=) hearing.

An associated webpage for this analysis can be found [on the council website](https://council.nyc.gov/data/lead-in-nyc-homes/) 

***  

#### Data Sources 
- [The Department of Housing Preservation and Development (HPD) Housing Litigation Division (HLD) Housing Litigations](https://data.cityofnewyork.us/Housing-Development/Housing-Litigations/59kj-x8nc)

- [Department of Housing
Preservation and Development (HPD) Lead Violations](https://data.cityofnewyork.us/Housing-Development/LEAD-VIOLATIONS/up7n-jfw5/data)

#### Methodology 

##### Summary & Intention
New York City can be a challenging place for small businesses to operate. In addition to adhering to occasionally complex regulatory schemes enforced by multiple City agencies, business owners confront hurdles including rising rents, taxation, competition from chain stores and e-commerce retailers, and various zoning restrictions. Over the course of the last year, a slew of beloved local establishments across the city closed amid skyrocketing costs.

Local Law 157 of 2019 seeks to gather data about the state of vacant storefronts to conduct the sort of studies needed to understand the full scope of storefront vacancy in New York City. The bill requires the department of finance to collect data and establish a public dataset of commercial properties in the City.

The data team analyzed local law 57 data in order to:
- Assess the severity of the problem 
- Identify vacant storefront hotspots 
- Release recommendations for better reporting

#### Main Takeaways
Through an analysis of this data, the New York City Council Data Team has investigated hotspots of storefront vacancies and potential economic correlations:

- Overall, the highest vacancy rates are found in the lower and midtown Manhattan and downtown Brooklyn business areas. These are also the areas that received that most COVID-19 grants and loans.
- At the neighborhood level, West Brighton, Stuyvesant Town-Cooper Village, Turtle Bay-East Midtown and Brooklyn Heights-Cobble Hill have the highest vacancies. 
- At a more granular level, census tracts with the higher vacancy rates have, on average, 216 storefronts per census tract and are mostly located in lower Manhattan.
- While the vacancy rate hovers around 12% for most census tracts, those with lower income residents are more likely to have very high vacancy rates (above 20% vacancy).
- Improving current reporting of Local Law 157 of 2019 is important to fully understand the issue. Recommendations are provided below.

#### Recommendations
Certain changes could be made by the Department of Finance to improve the overall usability of the data set. Those changes include:

- Adding a column for the date and specifically the year of the data collected
- Streamlining the multiple datasets for each year into one dataset to allow for easy integration in live updating tools/maps/charts and more accessibility to citizen data scientists
- Reduce geocode null values
- Require class 1 properties to update their status as of 6/30 or date sold if earlier than 6/30
- Require owners to report the primary business activity of the last business that leased the storefront

#### Scripts
