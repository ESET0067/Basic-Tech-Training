use society
select*from emp
exec sp_help emp
exec sp_rename 'emp','society';

select*from society
exec sp_rename 'society.phone_no','mobile_no','column';
exec sp_help society
alter table society alter column mobile_no float

drop column 'mobile_no' add 'mobile_no' varchar(100)


