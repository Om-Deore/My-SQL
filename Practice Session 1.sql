Create table employee (
	employee_id INT,
    first_name Varchar(50),
    last_name Varchar (50),
    hourly_pay Decimal (5, 2),
    hire_date Date
);
use mydb;
Rename table Workers To employee;
Select * FROM employee;

Alter table employee
Add Phone_no varchar (12);

Alter table employee
rename column Phone_no to Email;

Alter table employee
modify Email varchar(100);

Alter table employee
modify email varchar(100)
after last_name;

Alter table employee
modify email varchar(100)
first;

Alter table employee
drop column email;

Insert into employee
values(),
	  (),
      (),
      ();
Select * from employee;

