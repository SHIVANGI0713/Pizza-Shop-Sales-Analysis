-- Most and least common pizza size ordered
select pizzas.size, count(order_details.order_details_id) as order_count
from pizzas join order_details
on pizzas.pizza_id=order_details.pizza_id
group by pizzas.size
order by order_count desc;

-- we can see that the most common pizza size order is the 'L' 
-- we can see that the least common pizza size order is the 'XXL' 