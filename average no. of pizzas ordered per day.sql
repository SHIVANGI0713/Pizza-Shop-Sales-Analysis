-- calculating the average no. of pizzas ordered per day
select round(avg(squantity) ) as avg_pizza_order_per_day
from (select orders.order_date, sum(order_details.quantity) as squantity
from orders join order_details
on orders.order_id=order_details.order_id
group by orders.order_date) as order_quantity;
-- we can see that the average no. of pizzas ordered per day is 138