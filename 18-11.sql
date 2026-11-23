use pfs41;
desc students;

delete from students where student_id = 36;
set sql_safe_updates=0;

select * from  students;
insert into students(student_id)values(1);
insert into students values(2,'hemanth',null,null,500);
insert into students values(3,'teja',4646546455,'teja@gmail.com',600);

update students set studentemail='lohithr618@gmail.com' where student_id=1;
update students set name='lohith' where student_id=1;
update students set student_phone=8374793738 where name='lohith';

update students set marks=450 where student_id=1;
update students set marks=550 where student_id in (1,2);

drop table students;
use pfs41;
show tables;
create table student(studentid int unsigned primary key auto_increment,studentname varchar(50) not null,
studentage tinyint unsigned not null check(studentage>18),phone varchar(50) unique key,
email varchar(50) unique key not null ,address varchar(50));

desc student;

select * from student;

insert into student(studentname,studentage,phone,email,address)
values('lohith',22,8374793738,'lohithr618@gmail.com','vijayawada');

insert into student(studentname,studentage,phone,email)
values('hemanth',21,4446546545,'hemanth@');

#nov 19
use pfs41;
show tables;
create table employee(
						employee_id int unsigned primary key auto_increment,
						emp_name varchar(50) not null, 
                        emp_salary decimal(10,2) not null,
						emp_email varchar(50) unique key not null,
                        doj datetime not null,
                        role enum('training','python trainer ','java trainer','DA trainer') default 'training',
                        skills set ('mysql','python','java','html','css','da') not null);
                        
desc employee;

insert into employee(emp_name,emp_salary,emp_email,doj,role,skills) 
values('lohith',50000.0,'lohithr618@gmail.com','2026-12-16','python trainer','mysql,python,da');

select * from employee;

insert into employee(emp_name,emp_salary,emp_email,doj,role,skills)
values('hemanth',35000.0,'hemanthvenkat@','2027-8-15','python trainer','mysql,java,python');

insert into employee(emp_name,emp_salary,emp_email,doj,role,skills)
values('teja',40000.0,'tejadvk@','2026-9-20','da trainer ','python,mysql,java,html');

insert into employee(emp_name,emp_salary,emp_email,doj,role,skills)
values('krishna kanth',45000.0,'krishnakannth@','2026-10-15','java trainer','java');

insert into employee(emp_name,emp_salary,emp_email,doj,role,skills)
values('tajuu',45000.0,'tajju@','2026-10-15','java trainer','java');


