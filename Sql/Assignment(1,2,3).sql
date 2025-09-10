
----------------------Creation of Database----------------------------------------------------------------------------
create database smartMeter
use smartMeter

----------------------TASK 0 Create Smart Meter and customer Database Tables-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

create table customer(customerId int primary key, names varchar(50), Addres varchar(50), Region varchar(40));

create table smartMeterReadin(MeterId int primary key, customerId int foreign key references customer, locations varchar(50), InstalledDate varchar(50), ReadingDateTime varchar(50), EnergyConsumed varchar(50));

----------------------- inserting data into customer table------------------------------------------------

insert into customer values (1,'abhishek','mangalore','south')
insert into customer values (2,'shivam','bangalore','south')
insert into customer values (3,'akask','bhopal','north')
insert into customer values (4,'shiv','gujrat','west')

Select*from customer
Select*from smartMeterReadin

------------------------inserting data into smartmeter rading table-----------------------------
insert into smartMeterReadin values (100,1,'rooftop','15/08/2017','2017-08-15 10:00:00',20)
insert into smartMeterReadin values (200,2,'basement','21/07/2018','2018-02-14 04:12:36',36)
insert into smartMeterReadin values (300,3,'rooftop','30/09/2021','2021-03-12 07:01:00',45)
insert into smartMeterReadin values (400,4,'basement','07/10/2024','2024-04-19 08:24:00',48)

------------------------TASK 1-----------------------------------------------------------------------------

select*from smartMeterReadin where (EnergyConsumed>=10 and EnergyConsumed<=50)
select*from smartMeterReadin where(ReadingDateTime between '2017-08-15' and '2021-03-12');

select*from smartMeterReadin where InstalledDate>= '19/02/2024';


ALTER TABLE smartMeterReadin
ALTER COLUMN EnergyConsumed int; 

-------------------------TASK 2---------------------------------------------------------------------------------

-------------------------Average energy consumed for each customer-------------------------------------------------
select avg (EnergyConsumed) as AvgEnergyConsumed from smartMeterReadin;

-------maximum energy consumed-----------------------------------------
select max (EnergyConsumed) as MaxEnergyConsumed from smartMeterReadin;

--------------- include the readings for current year--------------------

Select*from smartMeterReadin where YEAR((ReadingDateTime))='2025';

