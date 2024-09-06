-- 1
select * from customers
-- where birth_date between '1990-01-01' and '2024-12-31' and points > 1000;

-- 2 

-- where birth_date between '1990-01-01' and '2024-12-31' or points > 1000;

-- 3

where (birth_date between '1990-01-01' and '2024-12-31' or points > 1000) and state in ('VA', 'CO');


