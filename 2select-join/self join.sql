-- self join

-- use sql_hr;

SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
   --  e.reports_to,
    m.first_name as manager_name
FROM
    employees e
        JOIN
    employees m ON e.reports_to = m.employee_id;