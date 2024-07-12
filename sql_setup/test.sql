
 SELECT 
    COUNT(ride_id) AS No_of_bookings,
    member_casual
 FROM jan
 GROUP BY
    member_casual
 ;


 SELECT
    COUNT(ride_id) AS no_of_trips,
    rideable_type
FROM jan
GROUP BY
    rideable_type
ORDER BY
    no_of_trips DESC;


 SELECT
    COUNT(ride_id) AS no_of_trips_members,
    rideable_type
FROM jan
WHERE
    member_casual = 'member'
GROUP BY
    rideable_type;

 SELECT
    COUNT(ride_id) AS no_of_trips_casual,
    rideable_type
FROM jan
WHERE
    member_casual = 'casual'
GROUP BY
    rideable_type
ORDER BY
    no_of_trips_casual DESC;

SELECT
    member_casual,
    ROUND(AVG(ride_length_mins),2) AS average_trip_duration
FROM dec
GROUP BY
    member_casual
ORDER BY
    average_trip_duration DESC;

SELECT
    COUNT(ride_id) AS morning_peak_bookings

FROM jan
WHERE
    (start_time BETWEEN '07:00:00' AND '10:00:00'
    OR start_time BETWEEN '16:00:00' AND '19:00:00')
    AND member_casual = 'member'
    ;

SELECT
    start_station_name,
    COUNT(ride_id) AS bookings

FROM jan
WHERE
    start_station_name IS NOT NULL
    AND member_casual = 'member'
GROUP BY
    start_station_name
HAVING
    COUNT(ride_id) > '300'
ORDER BY
    bookings DESC;


SELECT
    start_station_name,
    COUNT(ride_id) AS bookings

FROM jan
WHERE
    start_station_name IS NOT NULL
    AND member_casual = 'casual'
GROUP BY
    start_station_name
--HAVING
    --COUNT(ride_id) > '700'
ORDER BY
    bookings DESC;

SELECT
    start_station_name,
    COUNT(ride_id) AS bookings

FROM annual_data
WHERE
    start_station_name IS NOT NULL
    AND member_casual = 'member'
GROUP BY
    start_station_name
--HAVING
    --COUNT(ride_id) > '300'
ORDER BY
    bookings DESC
LIMIT 20;

