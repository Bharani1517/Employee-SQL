create table Employee(Emp_No number(6)primary key,Emp_Name char(25)not null,Designation varchar(25),Emp_Basic number(10,2));

insert into Employee values(4019,'Bharani','Director', 10000); 
insert into Employee values(4039,'Vicky','Technical Engineer',15000);
insert into Employee values(4015,'Lakshminarayanan','Technical Engineer', 12000);
insert into Employee values(4016,'Alwin','Technical Engineer', 13000); 
insert into Employee values(4027,'Ashwin', 'Director', 16000); 
insert into Employee values(4006,'Naresh', 'Director', 10000);

alter table employee Add Emp_DA number(6);
update Employee Set Emp_DA=0.30*Emp_Basic;

alter table employee Add Emp_HRA number(6);
update Employee Set Emp_HRA=0.40*Emp_Basic;

alter table employee Add Emp_PF number(6);
Update Employee Set Emp_pf=Emp_basic*0.12;

alter table employee Add Emp_Groospay number(6);
update Employee Set Emp_Grosspay=Emp_HRA+Emp_DA+Emp_Basic;

alter table employee Add Emp_netpay number(6);	
update Employee Set Emp_netpay=Emp_Grosspay-Emp_PF;

Select min(Emp_Basic) from Employee group by designation;

update Employee set emp_netpay = 1200 where emp_netpay<10000

select*from Employee where Emp_Grosspay between 10000 and 20000;

 select*from Employee  where Emp_Grosspay=(select max(Emp_Grosspay)from Employee);