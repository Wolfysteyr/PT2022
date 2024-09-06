use sql_invoicing;

-- select * from clients;


SELECT 
    *
FROM
    invoices
WHERE
    payment_total > 0
	order by client_id;