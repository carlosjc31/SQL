with hotels as(
select * from [dbo].['2018$']
union
select * from [dbo].['2019$']
union
select * from [dbo].['2020$'])

/*
select 
arrival_date_year,
hotel,
round(sum((stays_in_week_nights)*adr),2) as receita
from hotels
group by arrival_date_year,hotel
*/

select * from hotels
left join market_segment$
on hotels.market_segment = market_segment$.market_segment
left join meal_cost$
on meal_cost$.meal = hotels.meal