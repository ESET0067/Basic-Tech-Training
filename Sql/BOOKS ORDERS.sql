create table student(id int primary key, names varchar(50))

select*from student

insert into student values (2,'shivam',68415);

alter table student add number int unique
insert into student values (8,'raj',533135);

create table teachers(id int, subjects varchar(50),
foreign key (id) references student(id));

insert into teachers values (1,'Math')
select*from teachers
select*from student


delete from student where id = 1
delete from teachers where id = 1

insert into student values (1,'annu',533135);
insert into teachers values (1,'english');

create table users(users_id int primary key, email varchar(50), names varchar(50));
insert into users values(1,'ramu@gmail.com','ramu')
insert into users values(2,'gopal@gmail.com','gopal')
insert into users values(3,'ganesh@gmail.com','ganesh')
insert into users values(4,'jai@gmail.com','jai')

create table books(product_id int primary key, title varchar(50), price varchar(50));
insert into books values (10,'ramayan','1500');
insert into books values (20,'abcd','150');
insert into books values (30,'guliver','690');
insert into books values (40,'kalyug','300');

select*from
create table orders(order_on int primary key, user_ids int foreign key references users(users_id), product_id int foreign key books);


CREATE TABLE ORDERS (ORDER_ID INT PRIMARY KEY ,PRODUCT_ID INT , USERS_ID INT ,
foreign KEY (PRODUCT_ID) REFERENCES BOOKS(PRODUCT_ID) ,
foreign KEY (USERS_ID) REFERENCES USERS(USERS_ID)
)

select * from ORDERS

select * from books

select * from users

