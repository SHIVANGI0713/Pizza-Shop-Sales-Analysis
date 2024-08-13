select pizza_types.category, 
concat(round(sum(order_details.quantity*pizzas.price)/(select round(sum(order_details.quantity*pizzas.price),2) as total_sales
from order_details join pizzas
on order_details.pizza_id=pizzas.pizza_id)*100,2),'%') as revenue_percentage
from order_details join pizzas
on order_details.pizza_id=pizzas.pizza_id
join pizza_types 
on pizzas.pizza_type_id=pizza_types.pizza_type_id
group by pizza_types.category;

-- the percentage contibution of the each category to the total revenue