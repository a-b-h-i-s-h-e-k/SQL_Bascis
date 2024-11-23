-- Advance database operation/manipulation

create table Orderss (
order_id int primary key,
order_date date
);

insert into  Orderss (order_id, order_date)
values
(1, '2024-08-20'),
(2, '2024-08-21'),
(3, '2024-08-22');

-- let's calculate the expected delivery date, which is 7 days after the order_date

select order_id, order_date,
	   date_add(order_date, interval 7 day) as delivery_date
from Orderss;

-- Get the current date and time

select Now() as current_datetime;

-- calculate the differences between dates

select order_id, order_date,
		datediff(Now(), order_date) as days_since_order
from Orderss;