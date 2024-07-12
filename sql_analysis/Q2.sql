/* 
Question: What is the biketype preference of members and non-members(casual)?

*/


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