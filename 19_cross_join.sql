SELECT * FROM gfg.employees;
SELECT * FROM gfg.department;
SELECT * FROM gfg.salaries;

# Employee & Department
select * from gfg.employees cross join gfg.department;
SELECT count(*) FROM gfg.employees CROSS JOIN gfg.department;


select * from gfg.department cross join gfg.employees;
select count(*) from gfg.department cross  join gfg.employees;