# INTRODUCTION

Welcome to the Cyclistic Bike-Share Analysis Project! This project is a comprehensive case study focusing on understanding how Cyclistic, a bike-share company in Chicago, can increase its annual memberships by analyzing the usage patterns of casual riders and annual members. As a junior data analyst at Cyclistic, this project involves exploring historical bike trip data to generate insights and develop data-driven recommendations to inform marketing strategies. The ultimate goal is to design effective marketing campaigns to convert casual riders into annual members, ensuring sustained growth and success for the company.

SQL Queries? Check them out here [SQL analysis folder](/sql_analysis/)


# BACKGROUND

This project is part of the Google Data Analytics Certification course on Coursera, which I completed as a capstone project. The course provided a solid foundation in data analysis, covering various tools and techniques that were applied in this case study. The objective of the capstone project was to demonstrate the application of data analytics skills to solve real-world business problems. You can find more information about the course [here](https://www.coursera.org/professional-certificates/google-data-analytics).

## Data
The dataset used in this project is publicly available and can be accessed [here](https://divvy-tripdata.s3.amazonaws.com/index.html). This dataset includes the historical bike trip data for Cyclistic, which was used to analyze the differences in usage patterns between casual riders and annual members.

The data used would cover rider information spanning a one-year period from January 2023 to December 2023. The data has been made available by Motivate International Inc. with [license](https://divvybikes.com/data-license-agreement) and is originally stored in separate CSV files organized by the different months of the year here.

### Data Limitations

The dataset contains some null values that were deleted and hence not used in the analysis.

## Scenario
I'm a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, my team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, my team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve my recommendations, so they must be backed up with compelling data insights and professional data visualizations.

## Business Task
1) How do annual members and casual riders use Cyclistic bikes differently?
2) Why would casual riders buy Cyclistic annual memberships?
3) How can Cyclistic use digital media to influence casual riders to become members?


# TOOLS USED

In this project, I utilized a variety of tools to manage, analyze, visualize, and share data effectively:

- **Excel**: Used for data cleaning and transformation to prepare the dataset for analysis. Additionally, Excel was used to visualize data through bar graphs, charts, and other visual aids.
- **SQL**: Used for detailed data analysis, enabling complex queries and data manipulation.
- **PostgreSQL**: Employed for database management, ensuring efficient storage and retrieval of the bike trip data.
- **Visual Studio Code**: Utilized for database management and executing SQL queries, providing an integrated development environment.
- **Git and GitHub**: Used for version control and sharing my SQL scripts and analysis, ensuring collaboration and proper management of code versions.

# THE ANALYSIS

Each query for this project aimed at investigating specific aspects of the bike sharing data

## 1. SHARE OF RIDES FOR MEMBER AND CASUAL RIDERS
We can calculate the number and percentage of rides by the type of user.
```sql
SELECT 
    member_casual,
    COUNT(ride_id) AS no_of_trips
FROM 
    annual_data
GROUP BY
    member_casual
 ;
```

| Member Type   | Number of Rides |
|---------------|-------------|
| Casual        | 2047618     |
| Member        | 3626397     |

![alt text](assets/Q1.png)
*From the data, it is evident that annual members constitute a larger share of the rides compared to casual riders. Specifically, annual members accounted for approximately 64% of the total rides, while casual riders accounted for the remaining 36%. This indicates that while casual riders form a significant portion of the user base, the majority of the usage comes from annual members.*

## 2. What is the bike-type preference of member and casual riders?




Here we calculate the bike-type preference for:
-  All Rides
-  Members
-  Casual

```sql
--Share of each bike-type in all ride bookings

SELECT
    rideable_type,
    COUNT(ride_id) AS no_of_trips
FROM 
    annual_data
GROUP BY
    rideable_type
ORDER BY
    no_of_trips DESC;

-- Share of each bike-type in all member bookings

SELECT
    rideable_type,
    COUNT(ride_id) AS no_of_trips_members
FROM 
    annual_data
WHERE
    member_casual = 'member'
GROUP BY
    rideable_type;

-- Share of each bike-type in all non-member(casual) bookings

SELECT
    rideable_type,
    COUNT(ride_id) AS no_of_trips_casual
FROM 
    annual_data
WHERE
    member_casual = 'casual'
GROUP BY
    rideable_type;
```

####  All Rides
| Bike Type    | Number of Trips |
|--------------|-----------------|
| Electric bike | 2,900,810       |
| Classic bike  | 2,694,974       |
| Docked bike   | 78,231          |

![alt text](assets/Q2/Q2bike_type.png)

####  Members
| Bike Type    | Share of Each Bike Type in Total Member Rides |
|--------------|-----------------------------------------------|
| Classic bike | 1,818,334                                     |
| Electric bike| 1,808,063                                     |

![alt text](assets/Q2/Q2member.png)

####  Casual Riders

| Bike Type    | Share of Each Bike Type in Total Casual Rides |
|--------------|-----------------------------------------------|
| Classic bike | 876,640                                       |
| Electric bike| 1,092,747                                     |
| Docked bike  | 78,231                                        |

![alt text](assets/Q2/Q2casual.png)

From the analysis, it is clear that the preferences for bike types vary between members and casual riders. Overall, electric bikes are slightly more popular, with 2.9 million rides, compared to 2.69 million rides for classic bikes and a smaller number of rides for docked bikes.

Among members, the preference is nearly evenly split between electric bikes and classic bikes, each accounting for approximately 50% of the rides. This indicates that members appreciate both types of bikes equally for their commutes or leisure rides.

In contrast, casual riders show a stronger preference for electric bikes, which constitute 53% of their rides. Classic bikes follow at 43%, with docked bikes making up a small 4% of the rides. This suggests that casual riders may prefer the convenience and speed of electric bikes for their occasional use.

## 3. 











# WHAT I LEARNED

