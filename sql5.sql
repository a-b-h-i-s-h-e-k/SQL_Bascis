create database ecomsale;

use ecomsale;

create table Sales (
id int primary key,
product_name varchar(50),
quantity int,
sales_amount decimal(10, 2),
salesperson varchar(50)
);

Insert into Sales (id, product_name, quantity, sales_amount, salesperson)
values
(1, 'Laptop', 2, 2000.00, 'Alice'),
(2, 'Laptop', 1, 1000.00, 'Bob'),
(3, 'Phone', 3, 1500.00, 'Alice'),
(4, 'Tablet', 2, 600.00, 'Charlie'),
(5, 'Pone', 1, 500.00, 'Bob'),
(6, 'Tablet', 4, 1200.00, 'Alice'),
(7, 'Laptop', 5, 3000.00, 'Jasmin');

select * from Sales;

-- This command for updating the pone to phone 

-- UPDATE Sales
-- SET product_name = 'Phone'
-- WHERE product_name = 'Pone' AND id = 5;

-- Like here i want to check the total sales according to the product_name

select product_name, sum(sales_amount) as total_sales
from Sales
group by product_name; 
 
-- groupby gather all the products by there product_name(so, same product add and there prices too)


-- checking which sales person sales the most

select salesperson, count(id) as sales_count, sum(sales_amount) as total_sales
from Sales
group by salesperson







