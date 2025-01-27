select*from employee;
 
 select last_name, first_name, hourly_pay
 from employee;
 
 select first_name, hire_date from employee
 where hourly_pay>15;
 
 select * from employee
 where employee_id != 101
 and employee_id < 104;
 
 select * from employee
 where hire_date is null and hourly_pay IS NUll or employee_id is null;
 
 select * from employee 
 where hourly_pay is not null or hire_date is null;
 
 alter table employee
 add column email varchar(100);
 
alter table employee
modify column email varchar(100)
after last_name;

select*from employee;

insert into employee (email)
value('crabs@crabbypatties.com'),
	 ('squidward@crabbypatties.com'),
     ('spongebob@crabbypatties.com'),
     ('patricks@crabbypaties.com'),
     ('sandy@crabbypatties.com');
     
DELETE from employee
where employee_id IS NULL and first_name is null and last_name is null and hourly_pay is null and hire_date is null;

Alter table employee
drop column email;

UPDATE employee
SET email = CASE 
    WHEN employee_id = 100 THEN 'crabs@crabbypatties.com'
    WHEN employee_id = 101 THEN 'squidward@crabbypatties.com'
    WHEN employee_id = 102 THEN 'spongebob@crabbypatties.com'
    WHEN employee_id = 103 THEN 'patricks@crabbypatties.com'
    WHEN employee_id = 104 THEN 'Sandy@crabbypatties.com'
    ELSE email
END;

UPDATE employee 
set email=null
where employee_id is null;

