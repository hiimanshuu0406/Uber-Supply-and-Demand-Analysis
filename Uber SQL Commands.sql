CREATE DATABASE Uber_Data_Project;
USE Uber_Data_Project;
SHOW TABLES;
RENAME TABLE `uber request data cleaned` TO uber_data_table;
SELECT * FROM uber_data_table
LIMIT 10;
-- 1. Total Requests by Status
SELECT Status, COUNT(*) AS Total_Requests
FROM uber_data_table
GROUP BY Status;

--  2. Requests by Hour
SELECT `Request Hour`, COUNT(*) AS Total_Requests
FROM uber_data_table
GROUP BY `Request Hour`
ORDER BY `Request Hour`;

-- 3. Requests by Pickup Point and Status
SELECT `Pickup Point`, Status, COUNT(*) AS Total
FROM uber_data_table
GROUP BY `Pickup Point`, Status
ORDER BY `Pickup Point`;

-- 4. Incomplete Trips (Missing Drop Timestamp)
SELECT COUNT(*) AS Incomplete_Trips
FROM uber_data_table
WHERE `Drop Timestamp` = 'NA';

-- 5. Breakdown of Incomplete Trips by Status
SELECT Status, COUNT(*) AS Count
FROM uber_data_table
WHERE `Drop Timestamp` = 'NA'
GROUP BY Status;

-- 6. Breakdown by Pickup Point (Airport/City)
SELECT `Pickup point`, COUNT(*) AS Count
FROM uber_data_table
WHERE `Drop Timestamp` = 'NA'
GROUP BY `Pickup point`;

-- 7. Cancelled & No Car Requests (Morning hours only)
SELECT Status, COUNT(*) AS Count
FROM uber_data_table
WHERE `Request Hour` BETWEEN 4 AND 10
GROUP BY Status;






