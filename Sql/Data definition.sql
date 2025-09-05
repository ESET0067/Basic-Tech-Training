create database organization
use organization

create table dataa (ID int, Names varchar(50),Dept varchar(50), salary float)
select*from dataa
insert into dataa values(1,'sharad','HR',100000),(2,'akash','it',100000),(3,'abhishek','ds',250000),(4,'kunal','it',300000),(5,'soumya','it',100000)
update dataa set salary=1.4*salary where ID = 5
delete from dataa where ID = 3

select*from friends
exec sp_rename 'dataa','friends';
alter table friends add Addres varchar(50);
alter table friends alter column salary varchar(15)
ALTER TABLE friends
drop column Addres

ALTER TABLE friends
add phone_no varchar(20)

exec sp_rename 'friends.phone_no','mob','column'