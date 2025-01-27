use youtube;

ALTER TABLE burger
ADD CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10);
 
INSERT INTO burger (emp_id, first_name, last_name, hourly_pay)
VALUES (106,'Sheldon','Plankton',10) ;

Select * from burger;

ALTER TABLE burger
DROP CHECK chk_hourly_pay;
