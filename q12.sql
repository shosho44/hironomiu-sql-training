select
'all_order' all_order,
sum(d.count) count
from
(
select
i.id all_order,
case when c.num is null then 0 else c.num end count
from
items i
left outer join
(
select
od.item_id item_id,
count(*) num
from
order_details od
group by
item_id
) c
on c.item_id = i.id
) d
union
(
select
i.id all_order,
case when c.num is null then 0 else c.num end count
from
items i
left outer join
(
select
od.item_id item_id,
count(*) num
from
order_details od
group by
item_id
) c
on c.item_id = i.id
)
;
