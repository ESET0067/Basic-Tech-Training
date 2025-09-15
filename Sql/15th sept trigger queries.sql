----------------creating the procedure in the sql----------------

create procedure retrieve_dataaaa

@emp_id int
as
begin
select*from students2024 where id =@emp_id
end

exec retrieve_dataaaa @emp_id=6

drop procedure retrieve_dataaaa

use emp 


create procedure CheckEmployeeSalary

@emp_ID int 
as begin 
   declare @salary INT;
   select @salary = Salary
   from emp_tab
   where emp_ID = @emp_ID;

   if @salary>= 50000
       PRINT 'High salary employee';
   ELSE IF @salary >=30000

       PRINT 'medium salary employee';
   ELSE 
		PRINT('no salary')
end 

exec CheckEmployeeSalary @emp_ID =3

drop procedure CheckEmployeeSalary

---------------new table --------------------------

create trigger trg_afterInsert_studentss
on emp_tab
after insert
as begin
Print'a new data has been inserted'
end;

insert into emp_tab values(1,'abh',787,'ahah@gmail.com','sefv',20000)