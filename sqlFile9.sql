-- Determine the distribution of orders by hour of the day.

select hour(order_time) as Hour,
count(order_id) as Order_Count from orders
group by hour(order_time);