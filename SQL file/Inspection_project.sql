SELECT * FROM restaurant_inspections;

-- KPI's
-- Total Inspections carried out
SELECT COUNT(*) Total_Inspection
FROM restaurant_inspections;


-- Average score of the inspections
SELECT ROUND(AVG(SCORE)) AvgScore
FROM restaurant_inspections;

-- 1. Count the total number of inspections by borough.
SELECT LOCATION, COUNT(*) AS Total_Inspection
FROM restaurant_inspections
GROUP BY LOCATION
ORDER BY Total_Inspection DESC;

-- 2. Calculate the distribution of grades (A, B, C, etc.) across NYC.
SELECT LOCATION, COUNT(*) AS Total_Inspection,
SUM(CASE WHEN GRADE = 'A' THEN 1 END) AS 'Grade_A',
SUM(CASE WHEN GRADE = 'B' THEN 1 END) AS 'Grade_B',
SUM(CASE WHEN GRADE = 'C' THEN 1 END) AS 'Grade_C',
SUM(CASE WHEN GRADE = 'N' THEN 1 END) AS 'Grade_N',
SUM(CASE WHEN GRADE = 'P' THEN 1 END) AS 'Grade_P',
SUM(CASE WHEN GRADE = 'Z' THEN 1 END) AS 'Grade_Z',
SUM(CASE WHEN GRADE = 'NOT GRADED' THEN 1 END) AS 'Not Graded'
FROM restaurant_inspections
GROUP BY LOCATION
ORDER BY Total_Inspection DESC;

-- 3. Identify the most common inspection types (Initial, Re-inspection, Pre-permit).
SELECT INSPECTION_TYPE, COUNT(*) AS Total_Inspection
FROM restaurant_inspections
GROUP BY INSPECTION_TYPE
ORDER BY Total_Inspection DESC
LIMIT 10;

-- 4. Find the top 10 most frequent violations (e.g., “Evidence of mice,” “Improper food temperature”).
SELECT VIOLATION_CODE, COUNT(*) AS Total_Inspection
FROM restaurant_inspections
GROUP BY VIOLATION_CODE
ORDER BY Total_Inspection DESC
LIMIT 10;

-- 5.Compare critical vs. non-critical violations.
SELECT CRITICAL_FLAG, COUNT(*) AS Total_Inspection
FROM restaurant_inspections
WHERE CRITICAL_FLAG != 'Not Applicable'
GROUP BY CRITICAL_FLAG
ORDER BY Total_inspection DESC;

-- 6. See which boroughs or neighborhoods have the highest rate of critical violations.
SELECT LOCATION, COUNT(*) AS Critical_Inspection
FROM restaurant_inspections
WHERE CRITICAL_FLAG = 'critical'
GROUP BY LOCATION
ORDER BY Critical_Inspection DESC;

-- 7. Compare grades by cuisine type (e.g., Chinese vs American vs Italian).
SELECT CUISINE_DESCRIPTION, COUNT(*) AS Total_Inspection,
SUM(CASE WHEN GRADE = 'A' THEN 1 END) AS 'Grade_A',
SUM(CASE WHEN GRADE = 'B' THEN 1 END) AS 'Grade_B',
SUM(CASE WHEN GRADE = 'C' THEN 1 END) AS 'Grade_C',
SUM(CASE WHEN GRADE = 'N' THEN 1 END) AS 'Grade_N',
SUM(CASE WHEN GRADE = 'P' THEN 1 END) AS 'Grade_P',
SUM(CASE WHEN GRADE = 'Z' THEN 1 END) AS 'Grade_Z',
SUM(CASE WHEN GRADE = 'NOT GRADED' THEN 1 END) AS 'Not Graded'
FROM restaurant_inspections
GROUP BY CUISINE_DESCRIPTION
ORDER BY Total_Inspection DESC
LIMIT 10;

-- 8. Find the top 5 cuisines with the lowest average scores.
SELECT CUISINE_DESCRIPTION, ROUND(AVG(SCORE)) AvgScore
FROM restaurant_inspections
GROUP BY CUISINE_DESCRIPTION
ORDER BY AvgScore ASC
LIMIT 5;

-- 9. Identify cuisines with the highest proportion of “Critical” violations.
SELECT CUISINE_DESCRIPTION, COUNT(*) AS Critical_Inspection
FROM restaurant_inspections
WHERE CRITICAL_FLAG = 'critical'
GROUP BY CUISINE_DESCRIPTION
ORDER BY Critical_Inspection DESC
LIMIT 10;

-- 10. Check if violations or scores have improved or worsened over time.
SELECT YEAR(INSPECTION_DATE) Year, ROUND(AVG(SCORE)) AvgScore
FROM restaurant_inspections
GROUP BY Year
ORDER BY Year ASC;

-- 11. Highlight if certain neighborhoods consistently perform worse.
SELECT LOCATION, ROUND(AVG(SCORE)) AS AvgScore,
SUM(CASE WHEN YEAR(INSPECTION_DATE) = 2015 THEN 1 END) AS '2015',
SUM(CASE WHEN YEAR(INSPECTION_DATE) = 2016 THEN 1 END) AS '2016',
SUM(CASE WHEN YEAR(INSPECTION_DATE) = 2017 THEN 1 END) AS '2017',
SUM(CASE WHEN YEAR(INSPECTION_DATE) = 2018 THEN 1 END) AS '2018',
SUM(CASE WHEN YEAR(INSPECTION_DATE) = 2019 THEN 1 END) AS '2019',
SUM(CASE WHEN YEAR(INSPECTION_DATE) = 2020 THEN 1 END) AS '2020',
SUM(CASE WHEN YEAR(INSPECTION_DATE) = 2021 THEN 1 END) AS '2021',
SUM(CASE WHEN YEAR(INSPECTION_DATE) = 2022 THEN 1 END) AS '2022',
SUM(CASE WHEN YEAR(INSPECTION_DATE) = 2023 THEN 1 END) AS '2023',
SUM(CASE WHEN YEAR(INSPECTION_DATE) = 2024 THEN 1 END) AS '2024',
SUM(CASE WHEN YEAR(INSPECTION_DATE) = 2025 THEN 1 END) AS '2025'
FROM restaurant_inspections
GROUP BY LOCATION
ORDER BY AvgScore DESC;