use sql_store;

insert into customers (first_name, last_name, address, city, state)
values ("Sigma", "Ligma" , "Sigma Street 3", "Toilet", "SK");

SELECT 
    *
FROM
    customers;


insert into orders (customer_id, order_date, status) values (last_insert_id(), "1984-03-23", 2);
SELECT 
    *
FROM
    orders;

UPDATE customers 
SET 
    first_name = 'Janis'
WHERE
    customer_id = 13;
