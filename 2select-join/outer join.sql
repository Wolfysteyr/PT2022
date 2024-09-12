-- left outer join
-- use sql_store; 
SELECT 
    *
FROM
    customers c
        LEFT JOIN
    orders o ON o.customer_id = c.customer_id;
    
select *
 from orders o 
 right join customers c on o.customer_id = c.customer_id;