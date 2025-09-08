# EV Market Analysis Portfolio
**Project:** Israel EV Market Analysis (2023–2024)  
**Author:** Nisim Gershon — Market Analyst (Junior)  
**Contact:** Nige2122@gmail.com

## Contents
- `EV_Market_Report_EN_with_SQL.pdf` — Full market report (English) with SQL screenshots and charts.
- `EV_Market_Report_HE_with_SQL.pdf` — Full market report (Hebrew).
- `EV_Dashboard.pbix` — Power BI interactive dashboard (exported).
- `data/` — CSV source files (`israel_ev_by_brand_2024.csv`, `israel_ev_2023_2024_summary.csv`).
- `SQL/queries.sql` — Sample SQL queries used (Top brands, YoY growth, market share).
- `visuals/` — PNG images used in the reports.

## Executive summary
This project analyzes the Israeli EV market between 2023 and 2024. Key findings:
- BEV registrations increased from 48,219 (2023) to 67,171 (2024) (+39% YoY).
- PHEV registrations decreased from 15,157 to 6,044.
- BYD, Tesla, and MG are the leading brands in 2024.

## How to run / view
1. Open `EV_Market_Report_EN_with_SQL.pdf` to read the full analysis.
2. To interact with data, open `EV_Dashboard.pbix` in Power BI Desktop.
3. To reproduce analysis: import CSVs from `/data` into your SQL/Power BI environment.

## SQL examples (short)
```sql
-- Top brands 2024
SELECT Brand, BEV_Units_2024
FROM ev_brand
ORDER BY BEV_Units_2024 DESC
LIMIT 5;
