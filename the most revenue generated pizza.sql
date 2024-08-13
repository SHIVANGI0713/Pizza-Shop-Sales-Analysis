select pizza_types.name,round(sum(order_details.quantity*pizzas.price),2)as revenue
from order_details join pizzas
on order_details.pizza_id=pizzas.pizza_id
join pizza_types 
on pizzas.pizza_type_id=pizza_types.pizza_type_id
group by pizza_types.name
order by revenue desc
limit 3;
-- we can see thst the most revenue generated pizza is "The Thai Chicken Pizza"
-- though the most ordered pizza is "The Classic Deluxe Pizza"