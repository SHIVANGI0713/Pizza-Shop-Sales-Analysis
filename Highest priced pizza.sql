select pizza_types.name,pizzas.price
from pizza_types
join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id
order by pizzas.price desc
limit 1;
-- Highest priced pizza is 'THE GREEK PIZZA' which cost 35.95