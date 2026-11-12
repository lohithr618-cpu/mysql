use pfs41;
create table employee_details(
						emp_id int primary key,
                        emp_name varchar(50) not null,
                        email varchar(50) unique,
                        age int check(age>=18),
                        salary int  default 25000);
                        
insert into employee_details values(101,'lohith','lohithr618@gmail.com',21,35000);
insert into employee_details(emp_id,emp_name,email,age,salary) values(102,'hemanth','hemanth@gmail',20,30000);
insert into employee_details values(103,'krishna','kanthu@gmail.com',22,35000);
insert into employee_details values(104,'teja','vdk@gmail.com',23,40000);
insert into employee_details(emp_id,emp_name,email,age,salary) values (105,'tajudin','tajudin@mail',22,35000);

                        