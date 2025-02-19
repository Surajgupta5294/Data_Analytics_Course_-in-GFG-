drop database if exists gfg_courses;

create database gfg_courses;

CREATE table  gfg_courses.users (  
										user_id VARCHAR(20), 
                                        user_name varchar(50),
                                        mail_id VARCHAR(50),
                                        address VARCHAR(100),
                                        country_code VARCHAR(3),
                                        phone_number varchar(20),
                                        age INT,
                                        date_of_birth  varchar(15)
                                        );
insert into gfg_courses.users (user_id,user_name,mail_id,address,country_code, phone_number, age,date_of_birth ) values
                                (28500, 'suraj','user1@gmail.com','City1',(+91),(25329856), 21,'05/06/2003' );
select * from gfg_courses.users ;


insert into  gfg_courses.users values			
                                  (28501, 'suraj','suraj@gmail.com','GKP',(+91),(7992162653),21,'05/06/2003'),
                                  (28502,'shoaib','shoaib@gmail.com','MRG',(+91),(586954456),22,'02/06/2003'),
                                  (28503,'sanuj','sanuj@gmail.com','ALH',(+91),(2561889755),23,'06/12/2003'),
                                  (28504,'sumit','sumit@gmail.com','DELHI',(+91),(12527866),'24','12/02/2003'),
                                  (28505,'mangal','mangal@gmail.com','HAR',(+91),(89766526120),25,'02/10/2003'),
                                  (28506,'ansh','ansh@gmail.com','BAN',(+91),(9364512553),26,'02/11/2003');
select * from  gfg_courses .users;


CREATE table gfg_courses .courses (  
									course_id    VARCHAR(10), 
                                    course_name varchar(20),
									mentor_name  VARCHAR(50),
									ta_name      VARCHAR(50),
									course_price FLOAT,
									course_mode  VARCHAR(50),
									location     VARCHAR(100),
                                     marked_price FLOAT,
                                     discount_percent float,
                                     date_of_purchase varchar(20),
                                     date_of_expire varchar(20)
                                    );



insert into gfg_courses.courses  (course_id, course_name, mentor_name, ta_name, course_price, course_mode, location,
                                                     marked_price,discount_percent,date_of_purchase, date_of_expire ) values
                              (561,'DA','Ashish jangra','krishna', 30000,('Online / Offline'),'City1',21000 ,30 ,'02/01/2025','02/01/2026');
select * from  gfg_courses .courses ;




insert into gfg_courses.courses values
								(562,'DA1','Ashish jangra','krishna', 30000,('Online / Offline'),'City1',22000 ,32,'10/02/2025','10/02/2026'),
								(563,'DSA','Ashish jangra','krishna', 35000,('Online / Offline'),'City2',25000 ,40,'02/10/2024','02/10/2025'),
                                (564,'DA2','Ashish jangra','krishna', 40000,('Online / Offline'),'City3',26000 ,25,'10/02/2026','10/02/2027'),
                                (565,'DS2','Ashish jangra','krishna', 35000,('Online / Offline'),'City4',28000 ,30,'10/02/2026','10/02/2027');
select * from  gfg_courses .courses ;



CREATE table gfg_courses.transection (  
		
									transection_id   INT NOT NULL DEFAULT 10, 
                                    course_id  VARCHAR(20),
									user_id    VARCHAR(20),
									mode_of_payment  varchar(100),
                                    marked_price FLOAT,
                                    discounted_price FLOAT
							);

insert into gfg_courses.transection ( transection_id, course_id, user_id, mode_of_payment, marked_price, discounted_price    ) values
                                  (1400025, 'DA202501', 20250001, ('paytam/ google pay/ net banking/ UPI id'),30000,2500 );
                                  
select * from  gfg_courses.transection;


insert into gfg_courses.transection values
                                         (14000026, 'DA2025001', 20250001, ('paytam/ google pay/ net banking/ UPI id'),30000,2500 ),
                                         (14000027, 'DSA202502', 20250001, ('paytam/ google pay/ net banking/ UPI id'),40000,3500 ),
                                         (14000028, 'JAVA202503', 20250001, ('paytam/ google pay/ net banking/ UPI id'),45000,4000 ),
                                         (14000029, 'FULL Stack202504', 20250001, ('paytam/ google pay/ net banking/ UPI id'),48000,5000 ),
                                         (14000030, 'GATE202505', 20250001, ('paytam/ google pay/ net banking/ UPI id'),10000,1500 );
 select * from  gfg_courses.transection;
 
 
                                 