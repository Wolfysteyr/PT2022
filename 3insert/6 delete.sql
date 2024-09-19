use sql_store;

delete from order_items
where order_id in (11, 12);


select * from order_items;