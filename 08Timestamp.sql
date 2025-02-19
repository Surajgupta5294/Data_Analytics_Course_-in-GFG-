DROP DATABASE IF EXISTS gfg2;
CREATE DATABASE IF NOT EXISTS gfg2;


CREATE TABLE gfg2.users
					(
                      join_date datetime default current_timestamp,
                      user_id int primary key,
                      username varchar(150) not null,
                      email varchar(150) not null unique,
                      age int check (age>=18),
                      city varchar(150) check(city in('city1','city2','city3','city4','city5')),
                      active boolean default true
					);

INSERT INTO gfg2.users (user_id, username, email,age, city) values
                      (2001,'Suraj', 'suraj@gmail.com',18, 'GKP'),
                      (3002,'Sanuj', 'sanuj@gmail.com', 19,'Alhab'),
                      (4003,'Anuraj', 'anuraj@gmail.com',20,'Noida');
SELECT * FROM gfg2.users;                      
                      
                        
                        
                      
                      
                      
                      
                      )

