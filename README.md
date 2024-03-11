# Google-Data-Analytics-Case-Study-1
Google Data Analytics capstone case study for Cyclistic bike-share analysis 

**Case study:** *How does a bike-share navigate speedy success?*

**Course:** [Google Data Analytics Capstone: Complete a Case Study](https://www.coursera.org/learn/google-data-analytics-capstone/)

## Scenario
You are a junior data analyst working on the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations. In order to answer the business questions, follow the steps of the data analysis process: Ask, Prepare, Process, Analyze, Share, and Act.


## Ask
Three questions will guide the future marketing program:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

Moreno has assigned you the first question to answer: How do annual members and casualriders use Cyclistic bikes differently?

### -> Business Task: 
Analyze and understand the distinct patterns of bike usage between annual members and casual riders of Cyclistic. This involves identifying the differences in behavior, preferences, and utilization patterns to gain insights that can inform targeted marketing strategies and business decisions. The goal is to optimize the marketing program by tailoring offerings and incentives based on the unique needs and behaviors of these two customer segments.


## Prepare
Now, prepare your data for analysis using the Case Study Roadmap as a guide.

### -> Data Sources: 
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


## Process
Then, process your data for analysis using the Case Study Roadmap as a guide.

### -> Tools:
I have used `Microsoft Excel` to clean the data. I’m using `BigQuery` to store and analyze the data as ‘Cyclistic bike share’ dataset has more than 5.2 million rows and it would be difficult to store and analyze it using Microsoft excel or spreadsheet which are unable to manage huge volumes of data. To create data visualizations, I’m using `Tableau`.

### -> Change Log:
|#|Title|Description|Status|
| --- | :---: | --- | :---: |
| 1) | Merge Datasets | The 12 CSV files are uploaded to the BigQuery dataset “Cyclistic_Bike_Share” and then merged into a table named “Bike_Share_Data_2023” that contains rows for entire year | Completed |
| 2) | Add Column | Added a column for finding ride duration named “ride_length” | Completed |
| 3) | Add Column | Added a column for finding the ride day named “day_of_week” | Completed |
| 4) | Add Column | Added a column for finding the month of ride named “month” | Completed |
| 5) | Remove Columns | Removed columns ‘start_station_id’ and ‘end_station_id’ as they don’t add value to our analysis | Completed |
| 6) | Remove Duplicate Rows | Duplicate rows are removed for the analysis | Completed |
| 7) | Remove Rows with Null Values | Rows containing Null values are detected and removed for the analysis | Completed |

### -> Data Observation:
#### 1) Column names and data types:
<img src="https://github.com/BasitKhan03/Data-Analytics-Case-Study-1/assets/101899595/e1ea58c6-326f-4a4c-8762-9f861f4a0178" width="245px">

#### 2) Number of null values in each column:
<img src="https://github.com/BasitKhan03/Data-Analytics-Case-Study-1/assets/101899595/2cbee7ea-8020-475f-b235-93bf0153f92d" width="710px">
<img src="https://github.com/BasitKhan03/Data-Analytics-Case-Study-1/assets/101899595/0b493bd3-f40f-40d0-aa39-e3151b1bde6a" width="670px">

#### 3)	Number of duplicate rows:
<img src="https://github.com/BasitKhan03/Data-Analytics-Case-Study-1/assets/101899595/8b6012f3-6ef0-43a3-aec9-5ccd03c9a800" width="200px">

#### 4) Distinct rider types in the column ‘member_casual’:
<img src="https://github.com/BasitKhan03/Data-Analytics-Case-Study-1/assets/101899595/65783073-d1b7-4042-94b6-53d989a0c302" width="230px">

#### 5)	Distinct rideable types in the column 'rideable_type’:
<img src="https://github.com/BasitKhan03/Data-Analytics-Case-Study-1/assets/101899595/6e9b84ba-72d9-4bf6-81cd-648220ad8c40" width="225px">


## Analyze & Share
Now that your data is stored appropriately and has been prepared for analysis, start putting it to work. After you have performed your analysis and gained some insights into your data, create visualizations to share your findings.

**Data Visualizations:** [Tableau](https://public.tableau.com/app/profile/basit.khan3186/viz/GoogleDataAnalyticsCapstoneCaseStudy/Dashboard1)

### -> Analysis:

To address our business objective, it would be helpful to visualize key observations regarding the distinct ways casual riders and members use their bikes. We will start our analysis first by finding out the ratio of casual riders and members

![image](https://github.com/BasitKhan03/Google-Data-Analytics-Case-Study-1/assets/101899595/2906784c-c94b-42a2-b498-a85dea4c0ecb)

Casual riders make up around 35.67% of total rides while members make up around 64.33%. 

![image](https://github.com/BasitKhan03/Google-Data-Analytics-Case-Study-1/assets/101899595/037449a9-a073-4dc6-9614-32cc1a96f3eb)

But casual riders spend almost double the time per ride than a member does. So there’s a good possibility to maximize the number of annual memberships. Next, we will analyze the different types of bikes and their usage.

![image](https://github.com/BasitKhan03/Google-Data-Analytics-Case-Study-1/assets/101899595/6ce694c6-c053-4af8-92c8-eae96e5f594c)

We can see that the majority of riders use ‘Classic bikes’, and nearly half of them opt for ‘Electric bikes’. While a very small amount of riders use ‘Docked bikes’.  

![image](https://github.com/BasitKhan03/Google-Data-Analytics-Case-Study-1/assets/101899595/b6f41dfa-6855-4636-b794-432e3cea3599)

The charts for each bike type display percentages relative to the overall total. ‘Classic bikes’ are used by 42% members and 21% casual riders while ‘Electric bikes’ are used by 23% members and 14% casual riders. ‘Docked bikes’ are only used by a small amount (2%) of casual riders. 
Now, we will observe the overall trends for total rides and average ride duration over the year and over the week.

![image](https://github.com/BasitKhan03/Google-Data-Analytics-Case-Study-1/assets/101899595/f8033622-e6cd-49c8-a0e3-a2b2d812995a)

The number of rides increases with the progression of the year, reaching a peak in August, and then gradually decreases towards the end of the year. This implies that there are more trips during the summer and spring seasons, while the number decreases in winter.

![image](https://github.com/BasitKhan03/Google-Data-Analytics-Case-Study-1/assets/101899595/4685b204-80ee-4446-aeb9-76a575bd387d)

As the week begins, the number of rides increases, remains relatively constant throughout the week, and experiences a slight drop on Sundays. During weekdays, the average ride duration remains fairly consistent, whereas on weekends, there is an uptick in the average ride duration.
Next, we will analyze the monthly, weekly, and hourly number of rides for both members and casual riders.

![image](https://github.com/BasitKhan03/Google-Data-Analytics-Case-Study-1/assets/101899595/c38da8d3-9ff8-4916-aa49-9ebf8174c609)

• **Month:** The number of rides for both members and casual riders increases as the year progresses, reaching a peak in August for members and in July for casual riders, followed by a gradual decline towards the year-end. Furthermore, members consistently surpass casual riders in the number of rides each month throughout the year. 

• **Week:** At the beginning of the week, members see a slight increase in the number of rides, followed by a relatively consistent trend during weekdays, and then a gradual decrease on the weekend. In contrast, casual riders maintain a consistent number of rides on weekdays and experience an increase on the weekend. The difference in the number of rides between members and casual riders is significant on weekdays, with members having more rides. This difference decreases on the weekend, reaching its minimum on Saturdays. However, throughout the entire week, members consistently have more rides than casual riders.

• **Hour:** Throughout the day, members experience two peaks in the number of rides, the first occurring between 6-10 am, followed by a gradual increase towards their second peak between 4-8 pm, and then decreasing towards the end of the day. On the other hand, casual riders see a gradual increase in the number of rides throughout the day, peaking in the evening and decreasing afterward.

Next, we will analyze the monthly, weekly, and hourly average ride duration for both members and casual riders.

![image](https://github.com/BasitKhan03/Google-Data-Analytics-Case-Study-1/assets/101899595/6f32e2b9-2b63-437d-b3b4-f4ac1daa095e)

• **Month:** Throughout the year, casual riders have a higher average ride duration than members, with the average ride duration for casual riders peaking in the summer and spring seasons. In contrast, members maintain a consistent average ride duration throughout the entire year.

•	**Week:** Throughout the week, casual riders have a higher average ride duration than members, with an increase on the weekends. In contrast, members maintain a consistent average ride duration throughout the entire week.

•	**Hour:** Throughout the day, casual riders have a higher average ride duration than members, peaking between 9 am and 3 pm, while members maintain a relatively consistent average ride duration throughout the entire day.

The analysis shows that casual riders travel longer distances, approximately twice as much as members, but less frequently. Casual riders opt for extended journeys on weekends, during non-commuting hours, and in the spring and summer seasons, hinting at a preference for recreational purposes. In contrast, annual members, with significantly shorter average trip durations, likely utilize the bikes for daily commuting between home and work. Notably, ridership experiences a decline in the later months of the year, potentially attributed to seasonal changes, particularly in October when temperatures drop, and the possibility of snow arises. An intriguing observation is the peak in casual member ridership during July. Considering the typical school calendar in Chicago, ending around mid-July, and resuming at the end of August, we could speculate that the majority of these users are not high school students.

Now, let's examine the maximum ride duration for each type of rider. Interestingly, one casual rider recorded an exceptionally long ride duration of 12,136 minutes on their bike. That's equivalent to approximately 202 hours spent riding. On the other hand, the maximum ride duration for members was 1,498 minutes, which is equivalent to approximately 25 hours.

![image](https://github.com/BasitKhan03/Google-Data-Analytics-Case-Study-1/assets/101899595/c8b5d5e4-d2c8-439b-b031-2b14e6149b50)

To gain deeper insights into the distinctions between casual and member riders, we can analyze the locations of starting and ending stations.

![image](https://github.com/BasitKhan03/Google-Data-Analytics-Case-Study-1/assets/101899595/b21243c5-8dc8-479d-90e2-30cb3d76351f)

Casual riders tend to initiate trips from stations near cultural and recreational landmarks like museums, parks, beaches, and aquariums, while members often start journeys from stations near universities, residential areas, eateries, and other amenities. Popular stations among annual members are evenly distributed around office and business areas, whereas stations favored by casual riders are closer to the coastline, indicating potential leisure activities.

![image](https://github.com/BasitKhan03/Google-Data-Analytics-Case-Study-1/assets/101899595/db497769-a8ed-4ab4-8f44-fee229b795c0)

A consistent pattern emerges in the locations where trips end as well. Casual riders tend to finish their journeys near parks, museums, and other recreational spots, while members typically conclude their trips near universities, residential areas, and commercial hubs. This further strengthens the argument that casual riders use bikes for leisure activities, whereas members rely heavily on them for daily commuting purposes.

These are the top 10 start and end stations for members:

![image](https://github.com/BasitKhan03/Google-Data-Analytics-Case-Study-1/assets/101899595/ecca2117-6f10-410f-9fa3-db875bc08bd7)

Now, let’s look at the top 10 start and end stations for casual riders:

![image](https://github.com/BasitKhan03/Google-Data-Analytics-Case-Study-1/assets/101899595/60208527-740f-4c86-ae3e-1717acd419e1)

The top start and end stations for members are predominantly near work locations and downtown areas, while those for casual riders are often near public recreational areas. And overall the top 10 start and end stations are:

![image](https://github.com/BasitKhan03/Google-Data-Analytics-Case-Study-1/assets/101899595/19a0803e-77f6-4865-bd01-a8ff6a0986b0)

### -> Summary:
Casual riders tend to use bikes consistently throughout the day, with higher activity levels on weekends, especially during the summer and spring months, for recreational purposes. Their rides are typically twice as long as members' rides, although less frequent. They often begin and end their trips near parks, museums, coastal areas, and other leisure spots. In contrast, members primarily ride bikes on weekdays, particularly during commute hours in summer and spring. They take shorter rides, approximately half the duration of casual riders, but ride more frequently. Members typically start and end their trips near universities, residential areas, and commercial districts.

Based on the analysis, we can conclude that:

*	In 2023, the proportion of members (64.33%) exceeded that of casual riders (35.67%).

*	The average ride duration for casual riders (23.43 minutes) exceeded that of members (12.48 minutes).

*	Casual riders recorded the longest ride duration, totaling 34,948,960 minutes (equivalent to approximately 58,248 hours), whereas members accumulated a ride duration of 33,560,122 minutes (equivalent to approximately 55,934 hours).

*	August emerged as the most popular month, witnessing 570,370 rides with an average ride duration of 18.15 minutes.

*	December experienced the lowest popularity, recording 131,454 rides with an average ride duration of 11.60 minutes.

*	Saturday emerged as the most popular day for bike sharing overall, with 636,229 rides and an average ride duration of 19.93 minutes.

*	Sunday ranked as the least popular day for bike sharing overall, with only 541,107 rides, yet it had the highest average ride duration of 20.03 minutes.

*	Saturday stood out as the most popular day for casual riders, boasting an average ride duration of 26.50 minutes while Thursday emerged as the most favored day for members, featuring an average ride duration of 11.90 minutes.

*	The top start and end station overall was "Streeter Dr & Grand Ave".

*	For members, the most popular start station was "Kingsbury St & Kinzie St", from which 23,303 trips originated. The most popular end station for members was "Clinton St & Washington Blvd", where 24,223 trips concluded.

*	The top start station for casual riders was "Streeter Dr & Grand Ave", from which 42,185 trips began, while the most popular end station for casual riders was also "Streeter Dr & Grand Ave", with 46,534 trips concluding there.

*	The longest ride duration for a casual rider was 12,136 minutes, equivalent to approximately 202 hours, while for a member, it was 1,498 minutes, or approximately 25 hours.
  
*	The majority of bike usage is attributed to Classic bikes, followed by approximately half the usage for Electric bikes, while Docked bikes are the least utilized. Specifically, Classic bikes are utilized by 42% of members and 21% of casual riders, while Electric bikes are preferred by 23% of members and 14% of casual riders. Additionally, only a small fraction (2%) of casual riders utilize Docked bikes.


## Act
Now that you have finished creating your visualizations, act on your findings. Prepare the deliverables Morena asked you to create, including the three top recommendations based on your analysis.

### -> Recommandations:
Once the disparities between casual and member riders are identified, tailored marketing strategies can be crafted to target casual riders and encourage them to become annual members:

1.	Implement targeted marketing campaigns during peak seasons and weekends, focusing on tourist and recreational locations frequented by casual riders. Highlight the benefits of annual membership, such as convenience, cost-effectiveness, and exclusive perks.

2.	Offer promotional incentives to encourage casual riders to upgrade to annual memberships, such as discounted upgrades during peak riding occasions like weekends and summer months. Utilize location-based advertisements on social media platforms to reach casual riders at popular start stations.

3.	Launch a retention campaign aimed at increasing member engagement, particularly during less popular months, by offering rewards or benefits for continued usage. Educate casual riders about the advantages of membership through informative campaigns, addressing potential misconceptions and showcasing the value of long-term commitment to Cyclistic.






