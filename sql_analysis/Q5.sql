/* 
Question: Which are the busiest stations for members and non-members(casuals)?
Note: Busiest station was defined based on number of rides starting from a station.
*/

-- Top 10 busiest stations for members

SELECT
    start_station_name,
    COUNT(ride_id) AS bookings
FROM 
    annual_data
WHERE
    start_station_name IS NOT NULL
    AND member_casual = 'member'
GROUP BY
    start_station_name
ORDER BY
    bookings DESC
LIMIT 10;



-- Top 10 busiest stations for non-members(casuals)

SELECT
    start_station_name,
    COUNT(ride_id) AS bookings
FROM 
    annual_data
WHERE
    start_station_name IS NOT NULL
    AND member_casual = 'casual'
GROUP BY
    start_station_name
ORDER BY
    bookings DESC
LIMIT 10;

