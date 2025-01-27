use mydb;

DELETE FROM employee;

select * from employee;

Insert into employee
values(100, "Euguene", "Crabs", 25.50, "2024-12-01"),
	  (101,"Squidward", "Tentacles", 15.30, "2024-12-10"),
      (102,"Spongebob", "Squarepants", 13.20, "2024-12-20"),
      (103,"Patricks", "Star", 12.70, "2024-12-30"),
      (104, "Sandy", "Cheeks", 17.25, "2025-01-01");
      
insert into employee (first_name, last_name) -- incase you want to leave some tables null enter column names
value("Sheldon", "Plankton");
-- Next chapter Select Queries (5)