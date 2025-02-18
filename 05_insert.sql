create database if not exists gfg1;  

use gfg1;

drop table if exists users;

create table gfg1. users ( 
                       user_id INT NOT NULL DEFAULT 10,
                       username VARCHAR(255),
					   email_id VARCHAR(255),
					   age INT,
                       city VARCHAR(255) 
                         );
select * from users;



INSERT INTO gfg1.users (user_id, username, email, age, city) VALUES  
	                    (27,'user1@example.com', 'user1', 25, 'City1');    
                 
select * from users;



INSERT INTO users ( age,email,city) VALUES  
	             (25,'user1@example.com','City1');  
select * from users;



insert into gfg1.users values
          (2, 'user1', 'user1@example.com', 20, 'City1');
select * from users;  


insert into gfg1.users values
                 (18001,'user1', 'user1@example.com', 18,'delhi'),
                 (19001,'user2', 'user2@example.com', 19,'delhi south'),
                 (20001,'user3', 'user3@example.com', 20,'delhi north'),
                 (21001,'user4', 'user4@example.com', 21,'delhi east');
 select * from  gfg1.users;  
                








 
