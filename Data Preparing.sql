-- Create a new table named `Bike_Share_Data_2023` in the `Cyclistic_Bike_Share` dataset if it doesn't exist, by combining data from various monthly tables from December 2022 to November 2023. 
-- Each monthly table represents bike share data for a specific month and year. The `UNION ALL` operator is used to concatenate the data from each monthly table into the new table without removing duplicate rows.

CREATE TABLE IF NOT EXISTS `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023` AS (
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.Dec_2022`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.Jan_2023`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.Feb_2023`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.Mar_2023`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.Apr_2023`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.May_2023_1`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.May_2023_2`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.Jun_2023_1`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.Jun_2023_2`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.Jul_2023_1`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.Aug_2023_1`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.Aug_2023_2`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.Sep_2023_1`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.Sep_2023_2`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.Oct_2023_1`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.Oct_2023_2`
  UNION ALL
  SELECT * FROM `zippy-venture-409222.Cyclistic_Bike_Share.Nov_2023`
);


-- Retrieve the count of rows from the `Bike_Share_Data_2023` table within the `Cyclistic_Bike_Share` dataset.

SELECT COUNT(*) AS No_of_rows FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023`;

