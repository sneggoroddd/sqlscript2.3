select 
city,
count(distinct order_id) as number_orders,
sum(sales) as revenue
from public.orders o
where category in ('furniture', 'Technology')
and extract ('year' from order_date) = 2018 
group by 1 
having sum(sales) > 10000
order by revenue desc;

/*select distinct 
category 
from  orders o */


select
count(*), 
count(distinct o.order_id)
from orders o left join returns r2 on o.order_id = r2.order_id

select date_trunc('day',
now()) 
