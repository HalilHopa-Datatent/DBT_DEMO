WITH BIKE as (

SELECT 
DISTINCT
  START_STATIO_ID AS station_id,
  start_station_name AS station_name,
  START_LAT AS station_lat,
  START_LNG AS station_lng


from {{ source('demo', 'bike') }}

where RIDE_ID != 'ride_id'



)

select 

*

from BIKE