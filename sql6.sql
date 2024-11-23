create table Customers (
customer_id int primary key,
customer_name varchar(50)
);

-- Foreign Key
create table Orders (
order_id int primary key,
order_date date,
customer_id int,
foreign key (customer_id) references Customers(customer_id)
);

insert into Customers (customer_id, customer_name)
values
(1, 'Alice'),
(2, 'Bob'),
(3, 'charlie');

select * from Customers;

insert into  Orders (order_id, order_date, customer_id)
values
(101, '2024-08-20', 1),
(102, '2024-08-21', 2),
(103, '2024-08-22', 3);

select * from Orders;


-- o and c is just alias to call orders and customers table
select o.order_id, o.order_date, c.customer_name
from Orders o
join Customers c ON o.customer_id = c.customer_id;

-- 