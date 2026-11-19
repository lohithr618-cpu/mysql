use pfs41;

create table students(studentname varchar(30) ,studentemail varchar(50),marks int); 	
desc students;

#alter the table
alter table students add column student_phone varchar(10);
desc students;

alter table students add column student_id int first;
alter table students add column address varchar(50) after marks;

#modify 
alter table students modify column marks decimal(5,2);

alter table students modify column student_phone varchar(10) after studentname ;

alter table students rename column studentname to name;

#drop
alter table students drop column address;
