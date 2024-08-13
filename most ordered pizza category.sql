-- the most ordered pizza category
select pizza_types.category, sum(order_details.quantity) as quantity
from pizza_types join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id
join order_details 
on pizzas.pizza_id=order_details.pizza_id
group by pizza_types.category
order by quantity desc limit 5;

-- we can see that the people are prefering classic over the other option