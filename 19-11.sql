#foreign key -- 1.one to one   2.one to many   3.many to many

use pfs41;
create table customers(cust_id char(3) primary key ,
						cust_name varchar(50) not null,
                        address enum('vij','hyd','viz'));
		
create table orders(order_id char(3),
					ord_date date,
					cust_id  char(3),
                    foreign key(cust_id) references customers(cust_id),
                    primary key (order_id));

desc customers;
desc orders;

insert into customers values('c01','lohith','vij'),('c02','hemanth','hyd');
select * from customers;

insert into orders values('or1','2026-10-5','c01');
select * from orders;
insert into orders values('or2','2026-10-5','c01');