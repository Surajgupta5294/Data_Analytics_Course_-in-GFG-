drop database if exists ITM_1;

create database if not exists ITM_1;

create table ITM_1.users (
                          user_id int primary key,
                          first_name varchar(50),
                          last_name varchar(50),
                          phone_number varchar(15),
                          email_id varchar(100)
				          );
insert into ITM_1.users (user_id, first_name, last_name, phone_number, email_id) values
                         (1, 'Suraj' , 'Gupta', 6569436, 'suraj@gmail.com'),
                         (2, 'Ashish' , 'Jangra', 97846565, 'ashish@gmail.com'),
                         (3, 'Yashii', 'Singh', 7564562, 'yashii@gmail.com');
                         
select * from ITM_1.users;

 -- Update the username with user_id = 1
update ITM_1.users set first_name = 'Golu' where user_id = 1;
select * from ITM_1.users;

--  Update multiple
update ITM_1.users set first_name = 'Suraj', phone_number = 96352000 , last_name ='Singh' where user_id = 1;  
select * from ITM_1.users;


)