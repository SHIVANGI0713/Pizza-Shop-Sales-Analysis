select category, name, revenue 
from
(select category,name, revenue,
rank() over(partition by category order by revenue desc) as rank_category_pizza_wise
from
(select pizza_types.category,pizza_types.name, round(sum(order_details.quantity*pizzas.price)) as revenue
from order_details join pizzas
on order_details.pizza_id=pizzas.pizza_id
join pizza_types 
on pizzas.pizza_type_id=pizza_types.pizza_type_id
group by pizza_types.category,pizza_types.name) as catrev) as finalrev
where rank_category_pizza_wise<=3;

-- we can see the top selling pizza on the basis of the revenue in each category
-- this shows the top 3 selling pizzas on the basis of the revenue in each category