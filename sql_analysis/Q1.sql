/* 
Question: What is the respective share of ride bookings done by members and casuals(non-members)?
*/

 SELECT 
    member_casual,
    COUNT(ride_id) AS No_of_bookings
 FROM 
    annual_data
 GROUP BY
    member_casual
 ;