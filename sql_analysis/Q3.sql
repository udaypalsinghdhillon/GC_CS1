/*
Question: What is the number of rides booked by members and non-members(casual) and how does it vary: a) monthly b) day of the week c) peak/non-peak hours?
Assumption: Peak hours have been taken as 07:00 to 10:00 hrs and 16:00 to 20:00 hrs.
Note: Database has "weekday" column which contains day of the week as 1(Monday) to 7(Sunday).
*/

-- Number of rides booked by members and non-members in Januray

SELECT 
    member_casual,
    COUNT(ride_id) AS no_of_trips
FROM 
    jan
GROUP BY
    member_casual
 ;

/*
 Using same syntax as above, number of rides booked for each month was calculated by using the correct table name corresponding to each month
*/


-- Number of rides booked by members and non-members(casual) as per the day of the week

SELECT
    weekday,
    COUNT(ride_id) AS no_of_rides
FROM
    annual_data
WHERE
    member_casual = 'member'
GROUP BY
    weekday
;

SELECT
    weekday,
    COUNT(ride_id) AS no_of_rides
FROM
    annual_data
WHERE
    member_casual = 'casual'
GROUP BY
    weekday
;


-- Number of rides booked by members and non-members(casual) in peak and non-peak hours

SELECT
    member_casual,
    COUNT(ride_id) AS morning_peak_bookings
FROM 
    annual_data
WHERE
    (start_time BETWEEN '07:00:00' AND '10:00:00'
    OR start_time BETWEEN '16:00:00' AND '20:00:00')
GROUP BY
    member_casual;