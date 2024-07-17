/* 
Question: What is the respective share of ride trips done by members and casuals(non-members)?
*/

SELECT 
    member_casual,
    COUNT(ride_id) AS no_of_trips
FROM 
    annual_data
GROUP BY
    member_casual
 ;