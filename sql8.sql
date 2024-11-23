-- A store Procedure: A stored procedure is a prepared sql code that we can save, so the code can be revised over and over again.
-- It's increase our reuability

create table customerss(
customer_id int primary key,
customer_name varchar(50)
);

insert into customerss (customer_id, customer_name)
values
(1, 'Alice'),
(2, 'Bob'),
(3, 'charlie');


select * from customerss;

DELIMITER //

create procedure GetAllCustomers()   -- In this store procedure we have to change the name of your procedure
begin
	select * From customerss;  -- here, just apply the logic that you want
end //

DELIMITER ;

-- call the stored procedure

Call GetAllCustomers();