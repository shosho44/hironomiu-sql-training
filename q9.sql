select
i.id, i.name
from
items i
where
i.id not in (
select a.id
from items a
inner join order_details b on a.id = b.item_id
group by a.id ,a.name
);


