SELECT * FROM gfg.employees;
SELECT * FROM gfg.department;
SELECT * FROM gfg.salaries;

# Employee & Department
select * from gfg.employees  t1 inner join gfg.department t2 on t1.DepartmentID = t2.DepartmentID;
select * from gfg.department  t1 inner join gfg.employees t2 on t1.DepartmentID = t2.DepartmentID;

# Employee & Salaries
select * from gfg.employees t1 inner join gfg.salaries t2 on t1.EmployeeID = t2.EmployeeID;
select * from gfg.salaries t1 inner join gfg.employees t2 on t1.EmployeeID = t2.EmployeeID;

# Employee , Department & salary
select * from gfg.employees t1
    right join gfg.department t2 on t1.DepartmentID = t2.DepartmentID
        right join gfg.salaries t3 on t1.EmployeeID = t3.EmployeeID;
