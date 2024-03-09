# Data-Analytics-Case-Study-1
Google Data Analytics capstone case study for Cyclistic bike-share analysis 

## Scenario
You are a junior data analyst working on the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations. In order to answer the business questions, follow the steps of the data analysis process: Ask, Prepare, Process, Analyze, Share, and Act.


## - Ask
Three questions will guide the future marketing program:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

Moreno has assigned you the first question to answer: How do annual members and casualriders use Cyclistic bikes differently?

### Business Task: 
Analyze and understand the distinct patterns of bike usage between annual members and casual riders of Cyclistic. This involves identifying the differences in behavior, preferences, and utilization patterns to gain insights that can inform targeted marketing strategies and business decisions. The goal is to optimize the marketing program by tailoring offerings and incentives based on the unique needs and behaviors of these two customer segments.


## - Prepare
Now, prepare your data for analysis using the Case Study Roadmap as a guide.

### Data Sources: 
The data used for analysis is sourced from Motivate International Inc. and represents the historical trip data of Cyclistic for the past 12 months. The datasets have been made available under a license that permits their use for this case study. Efforts have been made to assess and mitigate biases, ensuring credibility during analysis.

#### • Data Location:- 
The data is downloaded from the provided link *[divvy-tripdata]*(https://divvy-tripdata.s3.amazonaws.com/index.html), and it is stored in a secure and accessible location for analysis.

#### • Data Organization:- 
The data is organized across 12 files, each labeled with the naming convention ‘YYYYMM-divvy-tripdata’, where each file corresponds to one month of Cyclistic's ride information. Each file encompasses essential details such as ride ID, bike type, start time, end time, start station, end station, start location coordinates, end location coordinates, and a classification indicating whether the rider is a member or a casual user. The specific column names associated with this data include ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, 
end_lat, end_lng, and member_casual. This structured arrangement facilitates a comprehensive exploration of Cyclistic's bike usage patterns over the specified time frame.

#### • Licensing, Privacy, Security, and Accessibility:- 
The data has been made available by Motivate International Inc. under this license. The usage of the data adheres to the provided license terms, ensuring compliance with legal and ethical considerations. Privacy has been maintained by excluding personally identifiable information, adhering to data-privacy regulations. 

#### • Data Integrity Verification:- 
The integrity of the data has been verified by checking for missing values, inconsistencies, and outliers. Any discrepancies found have been documented, and appropriate cleaning and preprocessing steps have been taken to address them.

#### • Data Issues:- 
While the data is instrumental in addressing the question of different bike usage patterns between annual members and casual riders, limitations exist due to the absence of personally identifiable information, impacting the ability to correlate certain user details. 


## - Process
Then, process your data for analysis using the Case Study Roadmap as a guide.

### Tools:
I have used Microsoft Excel to clean the data. I’m using BigQuery to store and analyze the data as ‘Cyclistic bike share’ dataset has more than 5.2 million rows and it would be difficult to store and analyze it using Microsoft excel or spreadsheet which are unable to manage huge volumes of data. To create data visualizations, I’m using Tableau.

