Create database new;

use new;

create table customers (
customer_id int primary key,
customer_name varchar(50)
);

create table orders (
order_id int primary key,
order_date date,
customer_id int,
foreign key (customer_id) references customers(customer_id)
);

Insert into customers (customer_id, customer_name)
values
(1, 'Alice'),
(2, 'Bob');

Insert into orders (order_id, order_date, customer_id)
values
(101, '2024-08-20', 1),
(102, '2024-08-21', 2);

Insert into orders (order_id, order_date, customer_id)
values
(103, '2024-08-22', 1);


select *  from customers;
select * from orders;


-- Inner Join

select orders.order_id, orders.order_date, customers.customer_name
from orders
inner join customers on orders.customer_id = customers.customer_id;

-- left join

select customers.customer_id, customers.customer_name,  orders.order_id, orders.order_date
from customers
left join orders on customers.customer_id = orders.customer_id;

-- right join

select customers.customer_id, customers.customer_name,  orders.order_id, orders.order_date
from customers
right join orders on customers.customer_id = orders.customer_id;


