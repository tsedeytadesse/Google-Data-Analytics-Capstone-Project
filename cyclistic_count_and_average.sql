--The query below counts the number of trips taken by casual riders and members, 
--it calculates the average trip length for each month, 
--and it calculates the maximum ride length taken each month by casual and member riders
--The query filters out the data where the bikes are stationary and analyzes only for 
--classic and electric bikes, and aggrigates the data for casual vs. member riders.

SELECT a1.member_casual,a1.m202206,a2.m202207,a3.m202208, 
a4.m202209,a5.m202210,a6.m202211,a7.m202212,a8.m202301,
a9.m202302,a10.m202303,a11.m202304,a12.m202305,a1.avg202206,
a2.avg202207,a3.avg202208,a4.avg202209,a5.avg202210,a6.avg202211,
a7.avg202212,a8.avg202301,a9.avg202302,a10.avg202303,a11.avg202304,
a12.avg202305,a1.max202206,a2.max202207,a3.max202208,a4.max202209,
a5.max202210,a6.max202211,a7.max202212,a8.max202301,a9.max202302,
a10.max202303,a11.max202304,a12.max202305
FROM (
  SELECT member_casual, count(ride_id) AS m202206, ROUND(avg(timestamp_diff(ended_at, started_at, MINUTE)),1) as avg202206,
  ROUND(max(timestamp_diff(ended_at,started_at, HOUR)),1) AS max202206
  FROM `prefab-list-392521.capstone_project_cyclistic.202206-divvy-tripdata`
  WHERE
  rideable_type = "electric_bike" OR rideable_type = "classic_bike"
  group by
  member_casual
) as a1

JOIN (
    SELECT member_casual, count(ride_id) AS m202207, ROUND(avg(timestamp_diff(ended_at, started_at, MINUTE)),1) as avg202207,
    ROUND(max(timestamp_diff(ended_at,started_at, HOUR)),1) AS max202207
    FROM `prefab-list-392521.capstone_project_cyclistic.202207-divvy-tripdata`
    WHERE
    rideable_type = "electric_bike" OR rideable_type = "classic_bike"
    group by
    member_casual
) as a2
ON a1.member_casual = a2.member_casual

JOIN (
    SELECT member_casual, count(ride_id) AS m202208, ROUND(avg(timestamp_diff(ended_at, started_at, MINUTE)),1) as avg202208,
    ROUND(max(timestamp_diff(ended_at,started_at, HOUR)),1) AS max202208
    FROM `prefab-list-392521.capstone_project_cyclistic.202208-divvy-tripdata`
    WHERE
    rideable_type = "electric_bike" OR rideable_type = "classic_bike"
    group by
    member_casual
) as a3
ON a2.member_casual = a3.member_casual

JOIN (
    SELECT member_casual, count(ride_id) AS m202209, ROUND(avg(timestamp_diff(ended_at, started_at, MINUTE)),1) as avg202209,
    ROUND(max(timestamp_diff(ended_at,started_at, HOUR)),1) AS max202209
    FROM `prefab-list-392521.capstone_project_cyclistic.202209-divvy-tripdata`
    WHERE
    rideable_type = "electric_bike" OR rideable_type = "classic_bike"
    group by
    member_casual
) as a4
ON a3.member_casual = a4.member_casual

JOIN (
    SELECT member_casual, count(ride_id) AS m202210, ROUND(avg(timestamp_diff(ended_at, started_at, MINUTE)),1) as avg202210,
    ROUND(max(timestamp_diff(ended_at,started_at, HOUR)),1) AS max202210
    FROM `prefab-list-392521.capstone_project_cyclistic.202210-divvy-tripdata`
    WHERE
    rideable_type = "electric_bike" OR rideable_type = "classic_bike"
    group by
    member_casual
) as a5
ON a4.member_casual = a5.member_casual

JOIN (
    SELECT member_casual, count(ride_id) AS m202211, ROUND(avg(timestamp_diff(ended_at, started_at, MINUTE)),1) as avg202211,
    ROUND(max(timestamp_diff(ended_at,started_at, HOUR)),1) AS max202211
    FROM `prefab-list-392521.capstone_project_cyclistic.202211-divvy-tripdata`
    WHERE
    rideable_type = "electric_bike" OR rideable_type = "classic_bike"
    group by
    member_casual
) as a6
ON a5.member_casual = a6.member_casual

JOIN (
    SELECT member_casual, count(ride_id) AS m202212, ROUND(avg(timestamp_diff(ended_at, started_at, MINUTE)),1) as avg202212,
    ROUND(max(timestamp_diff(ended_at,started_at, HOUR)),1) AS max202212
    FROM `prefab-list-392521.capstone_project_cyclistic.202212-divvy-tripdata`
    WHERE
    rideable_type = "electric_bike" OR rideable_type = "classic_bike"
    group by
    member_casual
) as a7
ON a6.member_casual = a7.member_casual

JOIN (
    SELECT member_casual, count(ride_id) AS m202301, ROUND(avg(timestamp_diff(ended_at, started_at, MINUTE)),1) as avg202301,
    ROUND(max(timestamp_diff(ended_at,started_at, HOUR)),1) AS max202301
    FROM `prefab-list-392521.capstone_project_cyclistic.202301-divvy-tripdata`
    WHERE
    rideable_type = "electric_bike" OR rideable_type = "classic_bike"
    group by
    member_casual
) as a8
ON a7.member_casual = a8.member_casual

JOIN (
    SELECT member_casual, count(ride_id) AS m202302, ROUND(avg(timestamp_diff(ended_at, started_at, MINUTE)),1) as avg202302,
    ROUND(max(timestamp_diff(ended_at,started_at, HOUR)),1) AS max202302
    FROM `prefab-list-392521.capstone_project_cyclistic.202302-divvy-tripdata`
    WHERE
    rideable_type = "electric_bike" OR rideable_type = "classic_bike"
    group by
    member_casual
) as a9
ON a8.member_casual = a9.member_casual

JOIN (
    SELECT member_casual, count(ride_id) AS m202303, ROUND(avg(timestamp_diff(ended_at, started_at, MINUTE)),1) as avg202303,
    ROUND(max(timestamp_diff(ended_at,started_at, HOUR)),1) AS max202303
    FROM `prefab-list-392521.capstone_project_cyclistic.202303-divvy-tripdata`
    WHERE
    rideable_type = "electric_bike" OR rideable_type = "classic_bike"
    group by
    member_casual
) as a10
ON a9.member_casual = a10.member_casual

JOIN (
    SELECT member_casual, count(ride_id) AS m202304, ROUND(avg(timestamp_diff(ended_at, started_at, MINUTE)),1) as avg202304,
    ROUND(max(timestamp_diff(ended_at,started_at, HOUR)),1) AS max202304
    FROM `prefab-list-392521.capstone_project_cyclistic.202304-divvy-tripdata`
    WHERE
    rideable_type = "electric_bike" OR rideable_type = "classic_bike"
    group by
    member_casual
) as a11
ON a10.member_casual = a11.member_casual

JOIN (
    SELECT member_casual, count(ride_id) AS m202305, ROUND(avg(timestamp_diff(ended_at, started_at, MINUTE)),1) as avg202305,
    ROUND(max(timestamp_diff(ended_at,started_at, HOUR)),1) AS max202305
    FROM `prefab-list-392521.capstone_project_cyclistic.202305-divvy-tripdata`
    WHERE
    rideable_type = "electric_bike" OR rideable_type = "classic_bike"
    group by
    member_casual
) as a12
ON a11.member_casual = a12.member_casual
