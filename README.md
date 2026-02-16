# Road_Accident_Analysis

Road Accident Dashboard Analysis (2021–2022)
Complete Project Description
1️⃣ Project Objective

The objective of this project was to create a Road Accident Dashboard for the years 2021 and 2022 to provide meaningful insights into:

Total casualties and accidents

Year-over-Year (YoY) performance

Accident severity distribution

Vehicle-wise impact

Monthly trends

Road type risk

Area (Urban/Rural) distribution

Day vs Night comparison

Location-based accident concentration

The goal was to enable data-driven road safety decisions.

2️⃣ Data Preparation – MySQL

The raw accident dataset was first cleaned and transformed in MySQL.

Data Cleaning & Transformation:

Created new grouping columns:

vehicle_group

weather_group

light_group

Used CASE statements to categorize:

Multiple vehicle types → Car, Bike, Bus, Van, Agriculture, Others

Weather → Fine, Rain, Snow, Others

Light Conditions → Day, Night

Purpose:

Simplified complex categories

Improved aggregation

Made the data dashboard-ready

3️⃣ Data Modeling – Power BI
Calendar Table Creation:

Created a Calendar Table from:

January 2021 to December 2022

Generated:

Year

Month

Quarter

Year-Month

Relationship:

Established One-to-Many relationship

Calendar (One side)

Road Accident table (Many side)

Enabled proper time intelligence calculations

4️⃣ DAX Measures Created

Key measures developed:

Total Casualties

Total Accidents

Previous Year Casualties

YoY Growth %

Casualties by Severity

Percentage Contribution (Urban/Rural, Day/Night)

These measures allowed dynamic KPI visualization and interactive filtering.

 5️⃣ Key Findings from Analysis
🔹 Overall Performance

2021 Total Casualties: 222,146

2022 Total Casualties: 195,737

YoY Growth: –11.9%

 2022 shows measurable improvement compared to 2021.

🔹 Severity Analysis (2022)

Fatal: 2,855

Serious: 27,045

Slight: 165,837

Slight injuries dominate total casualty numbers.

🔹 Vehicle Type Impact

Cars contribute the highest number of casualties.

Passenger vehicles are the major risk factor.

🔹 Monthly Trend

November is the highest casualty month in both years:

2021: 20,975

2022: 18,439

Shows consistent seasonal risk pattern.

🔹 Road Type Risk

Single carriageway roads show the highest casualty concentration.

Infrastructure improvement required.

🔹 Area Distribution

Urban: 61.94%

Rural: 38.05%

Urban areas contribute majority of accidents due to traffic density.

🔹 Light Condition Analysis

Day: 73.8%

Night: 26.15%

Most accidents occur during daytime due to higher traffic movement.

🔹 Weather Analysis

Fine weather accounts for 156,522 casualties.

Indicates accidents are more behavior-driven than weather-driven.

🔹 Location-Based Risk

Birmingham recorded the highest casualties.

Requires focused safety intervention.

 6️⃣ Overall Conclusion

Although 2022 shows a –11.9% reduction in total casualties, the analysis reveals that accidents are highly concentrated in:

Passenger vehicles (Cars)

Urban areas

Daytime traffic

Fine weather conditions

Single carriageway roads

Peak month (November)

High-risk city (Birmingham)

This suggests that road safety risks are largely influenced by traffic density and driver behavior, rather than environmental factors alone.

 7️⃣ Final Recommendations

To further reduce accident rates:

Strengthen urban traffic monitoring

Improve infrastructure on single carriageways

Target high-risk month (November)

Implement stricter car driver regulations

Conduct location-based intervention in Birmingham

🟢 Final Project Impact

This dashboard provides:

✔ Clear KPI monitoring
✔ Year-over-Year comparison
✔ Risk identification
✔ Data-driven policy support
✔ Interactive and dynamic analysis

It enables authorities to take informed decisions to further reduce road accident casualties.
