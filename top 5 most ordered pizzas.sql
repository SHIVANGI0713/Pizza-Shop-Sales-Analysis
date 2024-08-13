-- Top most ordered pizza type  and the quantity
select pizza_types.name, sum(order_details.quantity) as quantity
from pizza_types join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id
join order_details 
on pizzas.pizza_id=order_details.pizza_id
group by pizza_types.name
order by quantity desc limit 5;
-- the top 5 most ordered pizzas are 
-- The Classic Deluxe Pizza
-- The Barbecue Chicken Pizza
-- The Hawaiian Pizza
-- The Pepperoni Pizza
-- The Thai Chicken Pizza