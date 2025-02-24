select * from swiggy_resturent.restaurants;


-- 1. Which restaurant of abohar is visied by least number of people?
select * from swiggy_resturent.restaurants 
       where city = 'Abohar' and rating_count = (
          select  min(rating_count) 
            from swiggy_resturent.restaurants
              where city = 'Abohar');
              
 -- 1.1. Which restaurant of Bangalore is visied by least number of people?             
select * from swiggy_resturent.restaurants 
       where city = 'Bangalore' and rating_count = (
          select  min(rating_count) 
            from swiggy_resturent.restaurants
              where city = 'Bangalore');
              


-- 2. Which restaurant has generated maximum revenue all over india?
select *from swiggy_resturent.restaurants
   where rating_count*cost  = (
	select max(rating_count*cost) 
	 from swiggy_resturent.restaurants);
     
     

-- 3. How many restaurants are having rating more than the average rating?
select count(*)  as 'Total_Restaurants' 
      from swiggy_resturent.restaurants 
          where rating >= (select avg( rating) 
             from swiggy_resturent.restaurants);
             
             

-- 4. Which restaurant of Delhi has generated most revenue?
select * from swiggy_resturent.restaurants 
       where city = 'Delhi' and cost*rating_count = (
          select  max(cost*rating_count) 
            from swiggy_resturent.restaurants
              where city = 'Delhi');
              
              
-- 5. Which restaurant chain has maximum number of restaurants?
select name , count(name) as 'no_of_chain' 
  from swiggy_resturent.restaurants 
    group by name
      order by no_of_chain desc limit 10;


-- 6. Which restaurant chain has generated maximum revenue?
select name , sum(cost*rating_count) as 'Revenue' 
  from swiggy_resturent.restaurants 
    group by name
      order by  Revenue desc limit 10;
      
      
      
-- 7. Which city has maximum number of restaurants?
select city , count(*) as 'no_of_restaurants' 
  from swiggy_resturent.restaurants 
    group by city
      order by  no_of_restaurants desc limit 10;

-- 8. Which city has generated maximum revenue all over india?
select city , sum(rating_count*cost) as 'Revenue' 
  from swiggy_resturent.restaurants 
    group by city
      order by  Revenue desc limit 10;

-- 9. List 10 least expensive cuisines?
select cuisine , avg(cost)  
  from swiggy_resturent.restaurants 
    group by cuisine
      order by   avg(cost) asc limit 10;


-- 10. List 10 most expensive cuisines?
select cuisine , avg(cost)  
  from swiggy_resturent.restaurants 
    group by cuisine
      order by   avg(cost) desc limit 10;


-- 11. What is the city is having Biryani as most popular cuisine
select city,cuisine, avg(cost), count(*) as 'restaurants'
  from swiggy_resturent.restaurants
   where cuisine = 'Biryani'
    group by city,cuisine
     order by restaurants desc;


-- 12. List top 10 unique restaurants with unique name only thorughout the dataset as per generate maximum revenue (Single restaurant with that name)
select name, sum(cost * rating_count) as 'revenue' 
  from swiggy_resturent. restaurants 
   group by name 
    having count(name) = 1
   order by revenue desc limit 10;
            
