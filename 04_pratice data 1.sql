drop database if exists trands; 
 
 create database if not exists trands;

create table if not exists trands.users
									( user_name varchar (50),
                                      user_id int , 
                                      phone_no varchar(15),
                                      email_id varchar(50),
                                      DOB varchar(15),
                                      location varchar(50)
									);
                                    
 create table if not exists trands.inventory 
                                       ( product_id varchar(50),
                                         product_name varchar(50),
                                         quantity int,
                                         marked_price int,
                                         discount_price int,
                                         date_of_manufactured varchar(15),
                                         date_of_producton varchar(15),
                                         date_of_expiry varchar(15),
                                         prduct_description varchar(200),
                                         size varchar(100),
                                         product_catogories varchar(100)
						              );
                                      
create table if not exists trands.transection
                                       ( transection_id varchar(20),
                                         salae_data_time varchar(20),
                                         marked_price varchar(15),
                                         discounted_price varchar(15),
                                         amount_paid varchar(30),
                                         transection_type varchar(20)
										);
                                        
                                        
  )                                      