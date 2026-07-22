Select district_name,
Sum(production) as total_production
From crop_production
Group by district_name order by total_production desc
limit 10;
Select season,
Sum(production) as total_production
From crop_production
Group by season order by total_production desc
Select crop,
round(avg(production) ,2) as avg_production
From crop_production
Group by crop order by avg_production desc 
limit 10;
Select state_name,
Sum(area) as total_area
from crop_production
Group by state_name
Order by total_area desc
limit 10;
Select state_name,crop,
Round(production / Nullif(area, 0), 2) as yield
From crop_production
Order by yield Desc
limit 20
select*from crop_production