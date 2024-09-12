
-- izmantojam alias

SELECT 
    c.first_name, o.order_id, c.customer_id
FROM
    orders o
JOIN
    customers c 
    ON o.customer_id = c.customer_id;
    
-- iegūt to pašu rezultātu are USING
SELECT 
    c.first_name, o.order_id, c.customer_id
FROM
    orders o
JOIN
    customers c
    using (customer_id);
    
    -- kreisajā pusē paņemt customers
    
    

