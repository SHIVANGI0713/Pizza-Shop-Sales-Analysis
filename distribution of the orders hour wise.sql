select hour(order_time), count(order_id)
from orders
group by hour(order_time);
-- distribution of the orders hour wise
-- we can see that the most of the orders are made between 12pm to pm and then in the evening between 5pm to 7pm