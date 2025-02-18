create database if not exists  DAbatch;


create table if not exists DAbatch.users 
                                        ( user_id int,
                                          username varchar(100),
                                          email varchar(100),
                                          age int,
                                          city varchar(100)

                                        ); 
