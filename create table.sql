create database pfs41;
use pfs41;
create table employee(id int, name varchar(20), role varchar(30));
insert into employee values(101,'lohith','sde');
insert into employee values(102,'hemanth','trainer');
insert into employee values(103,'krishna','hr');
insert into employee values(104,'teja','ceo');

show tables;
desc employee;
select * from employee;

alter table employee add sal int;