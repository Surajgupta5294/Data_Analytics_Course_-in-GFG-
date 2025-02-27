use swiggy_resturent;
select * from restaurants;

-- 1. Creating a new  table names 'sirsa_restaurents'  countaining restaurents  of sirsa only
drop table if exists sirsa_restaurents;
create table if not exists sirsa_restaurents as select *from restaurants where city = 'sirsa';
select * from sirsa_restaurents;



-- 2. Creating the table and feeding the values
drop table if exists tbl;
create table if not exists tbl 
		(id varchar(255), 
        name varchar(255), 
        city varchar(255), 
        rating float, 
        cost int,
        cuisine varchar(255), 
        rating_count int,
        revenue int);


insert into tbl 
	(select id, name, city, rating, cost, cuisine, 
    rating_count,cost*rating_count as 'revenue' 
    from 
		(select *, 
        cost*rating_count ,row_number() over(partition by cuisine order by cost*rating_count desc) as 'rank' 
        from restaurants) t
	where t.rank <= 5);
select * from tbl;
create table if not exists results as (select * from restaurants);



-- 3. Creating the table directly
drop table if exists results;
create table if not exists results as (select * from restaurants);
select * from results;



-- 4. Creating the first temporary table
drop table if exists temp_restaurants;
create temporary table temp_restaurants as (select * from restaurants);
select * from temp_restaurants;


-- 5. Creating a new  table names 'sirsa_restaurents'  countaining restaurents  of sirsa only
drop table if exists temp_restaurants_sirsa ;
create temporary table temp_restaurants_sirsa as select * from restaurants where city = 'sirsa';
select * from temp_restaurants_sirsa;


-- 6. Creating a temporary table
drop table if exists temp_results;
create temporary table  temp_results as (select * from restaurants);
select * from temp_results;

create table if not exists top_1000 as 
	(
		select *, cost*rating_count as 'revenue'
		from restaurants
		order by revenue desc
		limit 1000 
    );
select * from top_1000;



