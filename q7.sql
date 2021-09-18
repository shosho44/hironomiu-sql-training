select
sum(price *  item_quantity) as sum_price from order_details od
inner join
orders o
on o.id = od.order_id
inner join
items i
on i.id = od.item_id
inner join
customers c
on c.id = o.customer_id
where c.name = 'B商会';
