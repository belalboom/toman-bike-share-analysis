with cte as(
SELECT * from bike_share_yr_0
union all
SELECT * from bike_share_yr_1)

select 
dteday, season, a.yr, weekday, hr, rider_type, riders, price, COGS,
riders*price as rev, 
riders*price-COGS as prof
from cte a
left join cost_table b
on a.yr = b.yr