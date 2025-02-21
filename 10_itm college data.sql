drop database if exists ITM_college;

create database if not exists ITM_college;

use ITM_college;



create table  if not exists ITM_college.users
			                  (
                               college_id varchar(50),
                               roll_number varchar(50),
                               student_name varchar(100),
                               course varchar(20),
                               branch varchar(20),
                               date_of_birth varchar(20),
                               email_id varchar(50),
                               age int,
                               city varchar(200)
							   );
select * from users;
 

insert into ITM_college.users (college_id, roll_number, student_name, course, branch, date_of_birth, email_id, age, city) values
                              (28500,21000,'user1','b_tech','CSE','00/00/2003','user1@gmail.com',21, 'City1');
select * from users;


insert into ITM_college.users values			
                                  (28501,21001,'suraj','b_tech','CSE','05/06/2003','suraj@gmail.com',21, 'GKP'),
                                  (28502,21002,'shoaib','b_tech','CSE','02/06/2003','shoaib@gmail.com',22, 'MRG'),
                                  (28503,21003,'sanuj','b_tech','CSE','07/05/2003','sanuj@gmail.com',23, 'ALH'),
                                  (28504,21004,'sumit','b_tech','CSE','04/02/2002','sumit@gmail.com',24, 'DELHI'),
                                  (28505,21005,'mangal','b_tech','CSE','08/02/2003','mangal@gmail.com',25, 'HR'),
                                  (28506,21006,'ansh','b_tech','CSE','10/09/2003','ansh@gmail.com',26, 'BAN');
select * from  ITM_college.users;
	                            
                        
                                