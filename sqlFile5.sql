-- Identify the highest-priced pizza.

select pizza_types.name, pizzas.price 
from pizza_types 
join pizzas on  pizza_types.pizza_type_id = pizzas.pizza_type_id
order by pizzas.price desc limit 1;
