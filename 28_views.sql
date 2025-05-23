use swiggy_resturent;
select * from restaurants;


select name, city, rating, rating_count as 'orders', 
		cuisine, cost, rating_count * cost as 'revenue' 
        from restaurants;

-- 1. Create the view
drop view if exists rest;
create view rest as (
      select name, city, rating, rating_count as 'orders', 
		cuisine, cost, rating_count * cost as 'revenue' 
        from restaurants);
select * from rest;


-- 2. Create a view for end_user
drop view if exists user_view;
create view user_view as (
      select name, city, rating, rating_count as 'orders', 
		cuisine, cost from restaurants);
select * from user_view ;



-- 3. Create a view of sweet dishes
drop view if exists rest_of_sweets_dishes;
create view rest_of_sweets_dishes as (
      select  * from restaurants where cuisine in ('Sweets','Desserts','Ice Cream','Waffle','Ice Cream Cakes')) ;
select * from rest_of_sweets_dishes ;



-- 4. Create a view of top 100 restaurants
drop view if exists Top_100;
create view Top_100 as 
      select  * from restaurants  order by cost desc limit 100;
select * from Top_100 ;



-- 5. Create a view of restaurant atleast 100 people visited
drop view if exists Top_100;
create view Top_100 as 
      select  * from restaurants  order by rating_count desc limit 100;
select * from Top_100;


-- 5. Create a view of restaurant atleast 100 people visited
drop view if exists Top_100;
create view Top_100 as 
      select  * from restaurants  order by rating_count >=100 desc limit 100;
select * from Top_100;



-- 6. Create a view of top 1000 most expensive restaurants
drop view if exists Top_1000;
create view Top_1000 as 
      select  * from restaurants  order by cost desc limit 1000;
select * from Top_1000;


-- 7. Create a view of top - rated restaurant in each city 
drop view if exists top_rated_restaurant ;
create view top_rated_restaurant  as ( 
         select * from  
            (select * ,row_number() over(partition by city order by rating*rating_count desc) as 'rank' 
               from restaurants )
               as ranked_table
               where  ranked_table.rank =100);
select * from top_rated_restaurant;




