/* Created 12 tables corresponding to data for each month. Also an annual table also created to aggregate yearly data 

*/


CREATE TABLE public.jan
(
        ride_id TEXT,
        rideable_type TEXT,
        start_date DATE,
        start_date_demo TEXT,
        start_time TIME,
        started_at TIMESTAMP,
        end_date DATE,
        end_time_demo TEXT,
        end_time TIME,
        ended_at TIMESTAMP,
        weekday INT,
        start_station_name TEXT,
        end_station_name TEXT,
        member_casual TEXT,
        ride_length TIME,
        ride_length_mins NUMERIC

)

CREATE TABLE public.feb
(
        ride_id TEXT,
        rideable_type TEXT,
        start_date DATE,
        start_date_demo TEXT,
        start_time TIME,
        started_at TIMESTAMP,
        end_date DATE,
        end_time_demo TEXT,
        end_time TIME,
        ended_at TIMESTAMP,
        weekday INT,
        start_station_name TEXT,
        end_station_name TEXT,
        member_casual TEXT,
        ride_length TIME,
        ride_length_mins NUMERIC

)

CREATE TABLE public.mar
(
        ride_id TEXT,
        rideable_type TEXT,
        start_date DATE,
        start_date_demo TEXT,
        start_time TIME,
        started_at TIMESTAMP,
        end_date DATE,
        end_time_demo TEXT,
        end_time TIME,
        ended_at TIMESTAMP,
        weekday INT,
        start_station_name TEXT,
        end_station_name TEXT,
        member_casual TEXT,
        ride_length TIME,
        ride_length_mins NUMERIC

)

CREATE TABLE public.apr
(
        ride_id TEXT,
        rideable_type TEXT,
        start_date DATE,
        start_date_demo TEXT,
        start_time TIME,
        started_at TIMESTAMP,
        end_date DATE,
        end_time_demo TEXT,
        end_time TIME,
        ended_at TIMESTAMP,
        weekday INT,
        start_station_name TEXT,
        end_station_name TEXT,
        member_casual TEXT,
        ride_length TIME,
        ride_length_mins NUMERIC

)

CREATE TABLE public.may
(
        ride_id TEXT,
        rideable_type TEXT,
        start_date DATE,
        start_date_demo TEXT,
        start_time TIME,
        started_at TIMESTAMP,
        end_date DATE,
        end_time_demo TEXT,
        end_time TIME,
        ended_at TIMESTAMP,
        weekday INT,
        start_station_name TEXT,
        end_station_name TEXT,
        member_casual TEXT,
        ride_length TIME,
        ride_length_mins NUMERIC

)

CREATE TABLE public.jun
(
        ride_id TEXT,
        rideable_type TEXT,
        start_date DATE,
        start_date_demo TEXT,
        start_time TIME,
        started_at TIMESTAMP,
        end_date DATE,
        end_time_demo TEXT,
        end_time TIME,
        ended_at TIMESTAMP,
        weekday INT,
        start_station_name TEXT,
        end_station_name TEXT,
        member_casual TEXT,
        ride_length TIME,
        ride_length_mins NUMERIC

)

CREATE TABLE public.jul
(
        ride_id TEXT,
        rideable_type TEXT,
        start_date DATE,
        start_date_demo TEXT,
        start_time TIME,
        started_at TIMESTAMP,
        end_date DATE,
        end_time_demo TEXT,
        end_time TIME,
        ended_at TIMESTAMP,
        weekday INT,
        start_station_name TEXT,
        end_station_name TEXT,
        member_casual TEXT,
        ride_length TIME,
        ride_length_mins NUMERIC

)

CREATE TABLE public.aug
(
        ride_id TEXT,
        rideable_type TEXT,
        start_date DATE,
        start_date_demo TEXT,
        start_time TIME,
        started_at TIMESTAMP,
        end_date DATE,
        end_time_demo TEXT,
        end_time TIME,
        ended_at TIMESTAMP,
        weekday INT,
        start_station_name TEXT,
        end_station_name TEXT,
        member_casual TEXT,
        ride_length TIME,
        ride_length_mins NUMERIC

)

CREATE TABLE public.sep
(
        ride_id TEXT,
        rideable_type TEXT,
        start_date DATE,
        start_date_demo TEXT,
        start_time TIME,
        started_at TIMESTAMP,
        end_date DATE,
        end_time_demo TEXT,
        end_time TIME,
        ended_at TIMESTAMP,
        weekday INT,
        start_station_name TEXT,
        end_station_name TEXT,
        member_casual TEXT,
        ride_length TIME,
        ride_length_mins NUMERIC

)

CREATE TABLE public.oct
(
        ride_id TEXT,
        rideable_type TEXT,
        start_date DATE,
        start_date_demo TEXT,
        start_time TIME,
        started_at TIMESTAMP,
        end_date DATE,
        end_time_demo TEXT,
        end_time TIME,
        ended_at TIMESTAMP,
        weekday INT,
        start_station_name TEXT,
        end_station_name TEXT,
        member_casual TEXT,
        ride_length TIME,
        ride_length_mins NUMERIC

)

CREATE TABLE public.nov
(
        ride_id TEXT,
        rideable_type TEXT,
        start_date DATE,
        start_date_demo TEXT,
        start_time TIME,
        started_at TIMESTAMP,
        end_date DATE,
        end_time_demo TEXT,
        end_time TIME,
        ended_at TIMESTAMP,
        weekday INT,
        start_station_name TEXT,
        end_station_name TEXT,
        member_casual TEXT,
        ride_length TIME,
        ride_length_mins NUMERIC

)

CREATE TABLE public.dec
(
        ride_id TEXT,
        rideable_type TEXT,
        start_date DATE,
        start_date_demo TEXT,
        start_time TIME,
        started_at TIMESTAMP,
        end_date DATE,
        end_time_demo TEXT,
        end_time TIME,
        ended_at TIMESTAMP,
        weekday INT,
        start_station_name TEXT,
        end_station_name TEXT,
        member_casual TEXT,
        ride_length TIME,
        ride_length_mins NUMERIC

);

-- Created a table where aggregate data of all 12 months will be stored and named 'annual_data'

CREATE TABLE public.annual_data
(
        ride_id TEXT,
        rideable_type TEXT,
        start_date DATE,
        start_date_demo TEXT,
        start_time TIME,
        started_at TIMESTAMP,
        end_date DATE,
        end_time_demo TEXT,
        end_time TIME,
        ended_at TIMESTAMP,
        weekday INT,
        start_station_name TEXT,
        end_station_name TEXT,
        member_casual TEXT,
        ride_length TIME,
        ride_length_mins NUMERIC

);