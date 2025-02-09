SELECT * FROM burger;

ALTER TABLE burger
ADD COLUMN Salary DECIMAL (10,2) AFTER hourly_pay;

UPDATE burger
SET Salary = hourly_pay * 2080;

-- Create Trigger to calculate salary based on houlry_pay .. Changes should occur in salary if hourly_pay changes
CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON burger
FOR EACH ROW
SET NEW.Salary = (NEW.hourly_pay * 2080);

SHOW TRIGGERS;

SELECT * FROM burger;

UPDATE burger
SET hourly_pay = 50
WHERE emp_id = 101;

UPDATE burger
SET hourly_pay = hourly_pay + 1 ;

DELETE FROM burger
WHERE emp_id = 0;

CREATE TRIGGER before_hourly_pay_insert
BEFORE INSERT ON burger
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

SELECT * FROM burger;

DESCRIBE burger;

INSERT INTO burger
VALUES(106, "Sheldon", "Plankton", "janitor", 10, NULL, "2024-08-06",5);



CREATE TABLE expenses(
	Expense_ID INT PRIMARY KEY,
	Expense_Name VARCHAR (100),
    Expense_Total DECIMAL (10,2)
);

INSERT INTO expenses
VALUES (1,"Salaries",0),
	   (2,"Supplies",0),
       (3,"Taxes",0);
       
SELECT * FROM expenses;

UPDATE expenses
SET expense_total = (SELECT SUM(Salary) FROM burger)
WHERE expense_name = "Salaries";

CREATE TRIGGER AFTER_SALARY_DELETE
AFTER DELETE ON burger
FOR EACH ROW
UPDATE expenses
SET Expense_Total = expense_total - OLD.Salary
WHERE Expense_name = "Salaries";

DELETE FROM burger
WHERE emp_id = 106;

CREATE TRIGGER AFTER_SALARY_INSERT
AFTER INSERT ON burger
FOR EACH ROW
UPDATE expenses
SET Expense_Total = expense_total + NEW.Salary
WHERE Expense_Name = "Salaries";