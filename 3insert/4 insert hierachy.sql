select * from products;

insert into products (name, quantity_in_stock, unit_price)
values ('Cheese', 1200, 12.39), ('Big Cheese', 12, 4.5);

insert into orders (customer_id, order_date, status)
values(11, '2019-03-24', 2);

-- select * from orders;

-- select last_insert_id();

insert into order_items 
values
(last_insert_id(), 1, 2, 19.35), 
(last_insert_id(), 2, 3, 5);

select * from order_items
