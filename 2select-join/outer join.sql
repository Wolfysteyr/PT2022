-- left outer join
-- use sql_store; 
-- SELECT 
--     *
-- FROM
--     customers c
--         LEFT JOIN
--     orders o ON o.customer_id = c.customer_id;
--     
-- SELECT 
--     *
-- FROM
--     orders o
--         RIGHT JOIN
--     customers c ON o.customer_id = c.customer_id;
--  
--  
--  


SELECT 
    ot.quantity,
    p.quantity_in_stock,
    ot.order_id,
    p.name,
    p.product_id
FROM
    order_items ot
right join products p on ot.product_id = p.product_id; 