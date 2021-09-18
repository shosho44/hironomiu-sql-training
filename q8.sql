select
distinct i.id item_id,
i.name
from
items i
inner join
order_details od
on i.id = od.item_id;

select
id item_id,
name
from
items
where
id in 
(
select
item_id
from
order_details
)
;


