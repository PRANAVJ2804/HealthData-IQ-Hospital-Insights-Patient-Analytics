create database Python_Sql_Project;
use Python_Sql_Project;

select * from hospinfo;

# List hospitals with emergency services in 'California':
SELECT "Hospital Name", City, State
FROM HospInfo
WHERE "Emergency Services" = TRUE AND State = 'CA';

# Count of hospitals by state
SELECT State, COUNT(*) AS Total_Hospitals
FROM HospInfo
GROUP BY State
ORDER BY Total_Hospitals DESC;

# Show all hospitals not meeting EHR criteria
SELECT "Hospital Name", State, "Meets criteria for meaningful use of EHRs"
FROM HospInfo
WHERE "Meets criteria for meaningful use of EHRs" = 'N';

# Hospitals with overall rating of 5
SELECT "Hospital Name", State, "Hospital overall rating"
FROM HospInfo
WHERE "Hospital overall rating" = '5';

# Total hospitals by ownership type
SELECT "Hospital Ownership", COUNT(*) AS Count
FROM HospInfo
GROUP BY "Hospital Ownership"
ORDER BY Count DESC;

# Rank hospitals within each state by overall rating using window function
SELECT "Hospital Name", State, "Hospital overall rating",
       RANK() OVER (PARTITION BY State ORDER BY "Hospital overall rating" DESC) AS Rating_Rank
FROM HospInfo
WHERE "Hospital overall rating" NOT IN ('Not Available');

# Find top 3 hospitals in each state based on effectiveness
WITH RankedHospitals AS (
  SELECT "Hospital Name", State, "Effectiveness of care national comparison",
         ROW_NUMBER() OVER (PARTITION BY State ORDER BY 
            CASE "Effectiveness of care national comparison"
              WHEN 'Above the national average' THEN 1
              WHEN 'Same as the national average' THEN 2
              WHEN 'Below the national average' THEN 3
              ELSE 4
            END
         ) AS `Rank`
  FROM HospInfo
)
SELECT *
FROM RankedHospitals
WHERE `Rank` <= 3;

# Find hospitals where safety of care is below average but mortality is above average
SELECT "Hospital Name", State, "Safety of care national comparison", "Mortality national comparison"
FROM HospInfo
WHERE "Safety of care national comparison" = 'Below the national average'
  AND "Mortality national comparison" = 'Above the national average';

# Top 10 cities (with state) that have the most hospitals
SELECT City,
       State,
       COUNT(*) AS Hospital_Count
FROM HospInfo
GROUP BY City, State
ORDER BY Hospital_Count DESC
LIMIT 10;

# Count of hospitals by hospital type
SELECT "Hospital Type",
       COUNT(*) AS Hospital_Count
FROM   HospInfo
GROUP  BY "Hospital Type"
ORDER  BY Hospital_Count DESC;