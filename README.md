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
The data is downloaded from the provided link [divvy-tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html), and it is stored in a secure and accessible location for analysis.

#### • Data Organization:- 
The data is organized across 12 files, each labeled with the naming convention ‘YYYYMM-divvy-tripdata’, where each file corresponds to one month of Cyclistic's ride information. Each file encompasses essential details such as ride ID, bike type, start time, end time, start station, end station, start location coordinates, end location coordinates, and a classification indicating whether the rider is a member or a casual user. The specific column names associated with this data include ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, 
end_lat, end_lng, and member_casual. This structured arrangement facilitates a comprehensive exploration of Cyclistic's bike usage patterns over the specified time frame.

#### • Licensing, Privacy, Security, and Accessibility:- 
The data has been made available by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement). The usage of the data adheres to the provided license terms, ensuring compliance with legal and ethical considerations. Privacy has been maintained by excluding personally identifiable information, adhering to data-privacy regulations. 

#### • Data Integrity Verification:- 
The integrity of the data has been verified by checking for missing values, inconsistencies, and outliers. Any discrepancies found have been documented, and appropriate cleaning and preprocessing steps have been taken to address them.

#### • Data Issues:- 
While the data is instrumental in addressing the question of different bike usage patterns between annual members and casual riders, limitations exist due to the absence of personally identifiable information, impacting the ability to correlate certain user details. 


## - Process
Then, process your data for analysis using the Case Study Roadmap as a guide.

### Tools:
I have used `Microsoft Excel` to clean the data. I’m using `BigQuery` to store and analyze the data as ‘Cyclistic bike share’ dataset has more than 5.2 million rows and it would be difficult to store and analyze it using Microsoft excel or spreadsheet which are unable to manage huge volumes of data. To create data visualizations, I’m using `Tableau`.

### Change Log:
|#|Title|Description|Status|
| --- | :---: | --- | :---: |
| 1) | Merge Datasets | The 12 CSV files are uploaded to the BigQuery dataset “Cyclistic_Bike_Share” and then merged into a table named “Bike_Share_Data_2023” that contains rows for entire year | Completed |
| 2) | Add Column | Added a column for finding ride duration named “ride_length” | Completed |
| 3) | Add Column | Added a column for finding the ride day named “day_of_week” | Completed |
| 4) | Add Column | Added a column for finding the month of ride named “month” | Completed |
| 5) | Remove Columns | Removed columns ‘start_station_id’ and ‘end_station_id’ as they don’t add value to our analysis | Completed |
| 6) | Remove Duplicate Rows | Duplicate rows are removed for the analysis | Completed |
| 7) | Remove Rows with Null Values | Rows containing Null values are detected and removed for the analysis | Completed |

### Data Observation:
#### 1) Column names and data types:
<img src="https://github.com/BasitKhan03/Data-Analytics-Case-Study-1/assets/101899595/e1ea58c6-326f-4a4c-8762-9f861f4a0178" width="260px">

#### 2) Number of null values in each column:
<img src="https://github.com/BasitKhan03/Data-Analytics-Case-Study-1/assets/101899595/2cbee7ea-8020-475f-b235-93bf0153f92d" width="740px">
<img src="https://github.com/BasitKhan03/Data-Analytics-Case-Study-1/assets/101899595/0b493bd3-f40f-40d0-aa39-e3151b1bde6a" width="690px">

#### 3)	Number of duplicate rows:
<img src="https://github.com/BasitKhan03/Data-Analytics-Case-Study-1/assets/101899595/8b6012f3-6ef0-43a3-aec9-5ccd03c9a800" width="210px">

#### 4) Distinct rider types in the column ‘member_casual’:
<img src="https://github.com/BasitKhan03/Data-Analytics-Case-Study-1/assets/101899595/65783073-d1b7-4042-94b6-53d989a0c302" width="230px">

#### 5)	Distinct rideable types in the column 'rideable_type’:
<img src="https://github.com/BasitKhan03/Data-Analytics-Case-Study-1/assets/101899595/6e9b84ba-72d9-4bf6-81cd-648220ad8c40" width="230px">


## - Analyze
To address our business objective, it would be helpful to visualize key observations regarding the distinct ways casual riders and members use their bikes. We will start our analysis first by finding out the ratio of casual riders and members

<img src="https://github.com/BasitKhan03/Data-Analytics-Case-Study-1/assets/101899595/3f11b9e1-ddaf-4a75-b59f-92468173e0ae" width="85%" height="85%" align="center">










