drop database if exists ITM_2;

create database if not exists  ITM_2;

create table ITM_2.users (
                          user_id int primary key,
                          first_name varchar(50),
                          last_name varchar(50),
                          phone_number varchar(15),
                          email_id varchar(100)
				          );
insert into ITM_2.users (user_id, first_name, last_name, phone_number, email_id) values
                         (1, 'Suraj' , 'Gupta', 6569436, 'suraj@gmail.com'),
                         (2, 'Ashish' , 'singh', 97846565, 'ashish@gmail.com'),
                         (3, 'Yashii', 'Singh', 7564562, 'yashii@gmail.com');
                         
select * from ITM_2.users;

-- Delete row based on user_id
delete from ITM_2.users where user_id = 1;
select * from ITM_2.users;


)