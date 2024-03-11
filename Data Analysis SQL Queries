-- Count of Rides by Rideable Type

SELECT DISTINCT rideable_type, COUNT(rideable_type) AS no_of_rides
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY rideable_type;


-- Count of Rides by Rider Type

SELECT DISTINCT member_casual, COUNT(member_casual) AS no_of_rides
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY member_casual;


-- Total Ride Duration by Rider Type

SELECT DISTINCT member_casual, SUM(ride_length) AS total_ride_duration
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY member_casual
ORDER BY total_ride_duration DESC;


-- Average Ride Duration by Rider Type

SELECT member_casual, AVG(ride_length) AS avg_ride_duration
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY member_casual
ORDER BY avg_ride_duration DESC;


-- Comprehensive Rider Statistics: Count, Total Ride Duration, and Average Ride Duration

SELECT member_casual, COUNT(rideable_type) AS no_of_rides, SUM(ride_length) AS total_ride_duration, AVG(ride_length) AS avg_ride_duration
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY member_casual
ORDER BY no_of_rides DESC;


-- Monthly Distribution of Total Rides and Average Ride Duration

SELECT month, COUNT(*) AS total_rides, AVG(ride_length) AS avg_ride_duration
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY month
ORDER BY total_rides DESC;


-- Daily Distribution of Total Rides and Average Ride Duration

SELECT day_of_week, COUNT(*) AS total_rides, AVG(ride_length) AS avg_ride_duration
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY day_of_week
ORDER BY total_rides DESC;


-- Count of Rides by Rider Type and Rideable Type

SELECT member_casual, rideable_type, COUNT(*) AS total_rides
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY member_casual, rideable_type
ORDER BY member_casual, total_rides DESC;


-- Monthly Count of Rides by Rider Type

SELECT month, member_casual, COUNT(*) AS total_rides
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY month, member_casual
ORDER BY member_casual, total_rides DESC;


-- Count of Rides by Day of the Week and Rider Type
 
SELECT day_of_week, member_casual, COUNT(*) AS total_rides
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY day_of_week, member_casual
ORDER BY member_casual, total_rides DESC;


-- Count of Rides by Hour of the Day and Rider Type

SELECT EXTRACT(HOUR FROM started_at) AS hour_of_day, member_casual, COUNT(*) AS total_rides
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY hour_of_day, member_casual
ORDER BY member_casual, total_rides DESC;


-- Average Ride Duration by Month and Rider Type

SELECT month, member_casual, AVG(ride_length) AS avg_ride_duration
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY month, member_casual
ORDER BY member_casual, avg_ride_duration DESC;


-- Average Ride Duration by Day of the Week and Rider Type

SELECT day_of_week, member_casual, AVG(ride_length) AS avg_ride_duration
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY day_of_week, member_casual
ORDER BY member_casual, avg_ride_duration DESC;


-- Average Ride Duration by Hour of the Day and Rider Type

SELECT EXTRACT(HOUR FROM started_at) AS hour_of_day, member_casual, AVG(ride_length) AS avg_ride_duration
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY hour_of_day, member_casual
ORDER BY member_casual, avg_ride_duration DESC;


-- Top 10 Start Stations with the Highest Number of Rides Overall

SELECT start_station_name, COUNT(*) AS no_of_rides 
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY start_station_name
ORDER BY no_of_rides DESC
LIMIT 10;


-- Top 10 End Stations with the Highest Number of Rides Overall

SELECT end_station_name, COUNT(*) AS no_of_rides 
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY end_station_name
ORDER BY no_of_rides DESC
LIMIT 10;


-- Top 10 Start Stations with the Highest Number of Rides for Members

SELECT start_station_name, COUNT(*) AS no_of_rides 
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
WHERE member_casual = 'member'
GROUP BY start_station_name
ORDER BY no_of_rides DESC
LIMIT 10;


-- Top 10 End Stations with the Highest Number of Rides for Members

SELECT end_station_name, COUNT(*) AS no_of_rides 
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
WHERE member_casual = 'member'
GROUP BY end_station_name
ORDER BY no_of_rides DESC
LIMIT 10;


-- Top 10 Start Stations with the Highest Number of Rides for Casual Riders

SELECT start_station_name, COUNT(*) AS no_of_rides 
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
WHERE member_casual = 'casual'
GROUP BY start_station_name
ORDER BY no_of_rides DESC
LIMIT 10;


-- Top 10 End Stations with the Highest Number of Rides for Casual Riders

SELECT end_station_name, COUNT(*) AS no_of_rides 
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
WHERE member_casual = 'casual'
GROUP BY end_station_name
ORDER BY no_of_rides DESC
LIMIT 10;


-- Maximum Ride Duration for Each Rider Type

SELECT member_casual, MAX(ride_length) AS max_ride_duration
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY member_casual
ORDER BY max_ride_duration DESC;


-- Average Start Location and Total Rides by Station and Rider Type

SELECT start_station_name, member_casual, AVG(start_lat) AS start_lat, AVG(start_lng) AS start_lng, COUNT(ride_id) AS total_rides
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY start_station_name, member_casual
ORDER BY total_rides DESC;


-- Average End Location and Total Rides by Station and Rider Type

SELECT end_station_name, member_casual, AVG(end_lat) AS end_lat, AVG(end_lng) AS end_lng, COUNT(ride_id) AS total_rides
FROM `zippy-venture-409222.Cyclistic_Bike_Share.Bike_Share_Data_2023_V3`
GROUP BY end_station_name, member_casual
ORDER BY total_rides DESC;

