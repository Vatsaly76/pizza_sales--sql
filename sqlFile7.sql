-- List the top 5 most ordered pizza types along with their quantities.

                              -- we have to take 3 tables  bcz 2 tables have not common 
 
 select pizza_types.name,
 sum(order_details.quantity) as quantity
 from pizza_types 
 join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id
 join order_details on order_details.pizza_id = pizzas.pizza_id
 group by pizza_types.name 
 order by quantity desc 
 limit 5;
 