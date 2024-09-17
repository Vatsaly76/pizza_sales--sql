-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

select name , Revenue from
 (select category , name , Revenue,
 rank() over(partition by category order by revenue desc ) as Ranks
 from  
 (select pizza_types.category,pizza_types.name,
 sum(order_details.quantity*pizzas.price) as Revenue
 from pizza_types 
 join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id
 join order_details on order_details.pizza_id = pizzas.pizza_id
 group by pizza_types.category,pizza_types.name) as a ) as b
 where Ranks<=3;