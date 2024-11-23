create table Sales (
sale_id int primary key,
product_name varchar(50),
quantity int,
sales_amount decimal(10, 2)
);

Insert into Sales (sale_id, product_name, quantity, sales_amount)
values
(1, 'Laptop', 2, 2000.00),
(2, 'Laptop', 1, 1000.00),
(3, 'Phone', 3, 1500.00),
(4, 'Tablet', 2, 600.00),
(5, 'Phone', 1, 500.00),
(6, 'Tablet', 4, 1200.00),
(7, 'Laptop', 5, 3000.00);

select * from Sales;


select count(*) as total_sales
from Sales;

select sum(sales_amount) as total_sales_amount
from Sales;

select avg(sales_amount) as average_sales_amount
from Sales;

select max(sales_amount) as max_sales_amount
from Sales;

select min(sales_amount) as min_sales_amount
from Sales;
