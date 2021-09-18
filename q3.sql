select
distinct od.order_id as order_id
from
order_details as od
where
od.item_id
in
(
select i.id from items as i where i.name in ('シャツ', 'パンツ')
)
order by od.order_id desc
