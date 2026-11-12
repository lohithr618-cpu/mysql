use pfs41;
#creating  a table from one another
create table employeebackup
select * from employee;
desc  employeebackup;

#insert rows from a table to another
insert into employeebackup
select * from employee where id=102;

select * from employeebackup;

alter table employee
add experience int;

alter table employee
rename column experience to years_of_exp;
select * from employee;

desc employee;
alter table employee
modify name varchar(50);

alter table employee
drop column role;
select * from employee;

alter table employee_details;
select * from employee_details;

#delete record
delete from employee_details
where emp_id=105;

select * from employee_details;

#truncate is used to deleting the record not table
truncate table employee;
select * from employee;

#drop is used to delete entire structure
drop table employee;



