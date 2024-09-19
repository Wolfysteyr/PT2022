UPDATE shippers 
SET 
    name = 'Bolt'
WHERE
    shipper_id = 6;

SELECT 
    *
FROM
    shippers;

update orders
set status = default, shipper_id = null, comments = "please check doubly"
where order_id in (9, 10, 11);

select * from orders