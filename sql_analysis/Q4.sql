/*
Question: What is the average trip duration by members and non-members(casual) and how does it vary:
a) monthly 
b) day of the week 
Note: Database has "weekday" column which contains day of the week as 1(Monday) to 7(Sunday).
*/

-- Average trip duration by members and non-members(casual) overall

SELECT
    member_casual,
    ROUND(AVG(ride_length_mins),2) AS average_trip_duration
FROM 
    annual_data
GROUP BY
    member_casual
ORDER BY
    average_trip_duration DESC;


-- Average trip duration monthly

SELECT
    member_casual,
    ROUND(AVG(ride_length_mins),2) AS average_trip_duration
FROM 
    jan
GROUP BY
    member_casual
ORDER BY
    average_trip_duration DESC;

/*
 Using same syntax as above, average ride duration for each month was calculated by using the correct table name corresponding to each month
*/


-- Average trip duration week per the day of the week by members and non-members(casual)

-- Members

SELECT
    weekday,
    ROUND(AVG(ride_length_mins),2) AS average_trip_duration
FROM 
    annual_data
WHERE
    member_casual = 'member'
GROUP BY
    weekday;

-- Non-members(Casual)

SELECT
    weekday,
    ROUND(AVG(ride_length_mins),2) AS average_trip_duration
FROM 
    annual_data
WHERE
    member_casual = 'casual'
GROUP BY
    weekday;




