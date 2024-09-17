-- Join the necessary tables to find the total quantity of each pizza category ordered.

select pizza_types.category,
sum(order_details.quantity) as quantity
from pizza_types 
join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on  order_details.pizza_id = pizzas.pizza_id
group by pizza_types.category
order by quantity desc;