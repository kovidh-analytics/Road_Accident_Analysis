SELECT * FROM road_accident
limit 5;
select sum(number_of_casualties) as cy_casualties
from road_accident
where year(accident_date) = '2022'

select sum(number_of_casualties) as cy_casualties
from road_accident
where year(accident_date) = '2021'

select count(distinct accident_index) as cy_accidents
from road_accident
where year(accident_date) = '2022'

select sum(number_of_casualties) as fatal_casualties
from road_accident
where year(accident_date) = '2022' AND accident_severity = 'Fatal'

select sum(number_of_casualties) as serious_casualties
from road_accident
where year(accident_date) = '2022' AND accident_severity = 'Serious'

select sum(number_of_casualties) as Slight_casualties
from road_accident
where year(accident_date) = '2022' AND accident_severity = 'Slight'

select distinct(weather_conditions) from road_accident

Alter table road_accident
add weather_group varchar(50);

update road_accident
set weather_group=
    case
        when weather_conditions in ('Raining no high winds','Raining + high winds') then 'Rain'
        when weather_conditions in ('Fine no high winds') then 'Fine'
        when weather_conditions in ('Snowing no high winds','Fog or mist','Snowing + high winds') then 'snow'
        else 'others'
    End;
    
select weather_group, sum(number_of_casualties) as cy_casualties
from road_accident
where year(accident_date)='2022'
group by weather_group
select distinct(vehicle_type) from road_accident

ALTER TABLE road_accident
ADD vehicle_group VARCHAR(50);

SET SQL_SAFE_UPDATES = 0;

update road_accident
set vehicle_group=
     case
         when vehicle_type = 'Agricultural vehicle' then 'Agriculture'
         when vehicle_type in ('Car','Taxi/Private hire car') then 'car'
         when vehicle_type in ('Motorcycle over 500cc','Motorcycle 125cc and under','Motorcycle 50cc and under','Motorcycle over 125cc and up to 500cc') then 'Bilke'
         when vehicle_type in ('Bus or coach (17 or more pass seats)','Minibus (8 - 16 passenger seats)') then 'Bus'
         when vehicle_type in ('Van / Goods 3.5 tonnes mgw or under','Goods over 3.5t. and under 7.5t','Goods 7.5 tonnes mgw and over') then 'van'
         Else 'others'
	End;


select vehicle_group, sum(number_of_casualties) as cy_casualties from road_accident
group by vehicle_group


SELECT 
    MONTHNAME(accident_date) AS month_name,
    SUM(number_of_casualties) AS total_casualties
FROM road_accident
WHERE YEAR(accident_date) = 2022
GROUP BY MONTHNAME(accident_date);


SELECT 
    MONTHNAME(accident_date) AS month_name,
    SUM(number_of_casualties) AS total_casualties
FROM road_accident
WHERE YEAR(accident_date) = 2021
GROUP BY MONTHNAME(accident_date);

select road_type, sum(number_of_casualties) as total_casualties from road_accident
group by road_type

describe road_accident

select urban_or_rural_area, cast(sum(number_of_casualties) as decimal(10,2)) *100/
(select cast(sum(number_of_casualties) as decimal(10,2))  from road_accident where Year(accident_date)='2022') as pct
from road_accident 
where year(accident_date)='2022'
group by urban_or_rural_area

select urban_or_rural_area,  sum(number_of_casualties) as total_casualties,cast(sum(number_of_casualties) as decimal(10,2)) *100/
(select cast(sum(number_of_casualties) as decimal(10,2))  from road_accident where Year(accident_date)='2022') as pct
from road_accident 
where year(accident_date)='2022'
group by urban_or_rural_area

alter table road_accident
ADD light_group VARCHAR(50);

select distinct(light_conditions) from road_accident

update road_accident
set light_group=
     case
         when light_conditions in ('Darkness - lights lit','Darkness - lighting unknown','Darkness - lights unlit','Darkness - no lighting') then 'Night'
         when light_conditions = 'Daylight' then 'Day'
      End;   

select light_group, sum(number_of_casualties) as total_casualties , cast(sum(number_of_casualties) as decimal(10,2))*100 /
(select cast(sum(number_of_casualties) as decimal(10,2)) from road_accident where year(accident_date)='2022') as pct from road_accident
where year(accident_date)='2022'
group by light_group

select local_authority, sum(number_of_casualties) as total_casualties
from road_accident
where Year(accident_date)='2022'
group by local_authority
order by total_casualties desc
limit 10;

select local_authority, sum(number_of_casualties) as total_casualties
from road_accident
where Year(accident_date)='2022'
group by local_authority
order by total_casualties asc
limit 10;