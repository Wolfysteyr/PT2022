-- use sql_store;

SELECT 
    c.customer_id,
    first_name,
    last_name,
    order_id,
    os.name AS order_status,
    order_date,
    sh.name,
    e.reports_to
    
FROM
    customers c
        JOIN
    orders o ON o.customer_id = c.customer_id
        LEFT JOIN
    shippers sh USING (shipper_id)
        JOIN
    order_statuses os ON o.status = os.order_status_id; 
    
-- use sql_hr; 
SELECT 
    e.first_name, e.last_name, m.first_name AS manager
FROM
    employees e
        JOIN
    employees m ON e.reports_to = m.employee_id