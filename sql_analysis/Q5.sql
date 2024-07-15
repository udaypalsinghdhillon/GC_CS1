/* 
Question: Which are the busiest stations for booking rides used by members and non-members(casuals)?
Note: Busiest station was defined based on number of rides (either starting or ending) from a station.
*/

-- Top 10 busiest stations for members

-- Ride start stations
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


-- Ride end stations
SELECT
    end_station_name,
    COUNT(ride_id) AS bookings
FROM 
    annual_data
WHERE
    end_station_name IS NOT NULL
    AND member_casual = 'member'
GROUP BY
    end_station_name
ORDER BY
    bookings DESC
LIMIT 10;




-- Top 10 busiest stations for non-members(casuals)

-- Ride start stations
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

-- Ride end stations
SELECT
    end_station_name,
    COUNT(ride_id) AS bookings
FROM 
    annual_data
WHERE
    end_station_name IS NOT NULL
    AND member_casual = 'casual'
GROUP BY
    end_station_name
ORDER BY
    bookings DESC
LIMIT 10;