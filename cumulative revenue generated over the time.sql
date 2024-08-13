select order_date, sum(revenue) over(order by order_date) as cum_revenue
from 
(select orders.order_date, 
sum(order_details.quantity*pizzas.price) as revenue
from order_details join pizzas
on order_details.pizza_id=pizzas.pizza_id
join orders
on order_details.order_id=orders.order_id
group by orders.order_date) as sales ;

-- this shows the cumulative revenue generated over the time