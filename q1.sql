select i.price * sum(od.item_quantity) as proceeds from items as i inner join order_details as od on i.id = od.item_id where i.id = 1;
