-- Total BEV and PHEV each year
SELECT YEAR, SUM(BEV_Units) AS TotalBEV, SUM(PHEV_Units) AS TotalPHEV
FROM israel_ev_2023_2024_summary
GROUP BY Year;

-- YoY Growth BEV 2023-2024
SELECT 
  (67171 - 48219) * 100.0 / 48219 AS YoY_Growth_Percent;


  -- Top 5 Brands 2024
SELECT TOP 5 Brand, BEV_Units_2024
FROM israel_ev_by_brand_2024
ORDER BY BEV_Units_2024 DESC;

-- Market_share by brand 
SELECT Brand,
       BEV_Units_2024,
       ROUND(BEV_Units_2024 * 100.0 / (SELECT SUM(BEV_Units_2024) FROM israel_ev_by_brand_2024), 2) AS MarketSharePct
FROM israel_ev_by_brand_2024
ORDER BY MarketSharePct DESC;