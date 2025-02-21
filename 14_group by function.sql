SELECT * FROM myntra_data1.data;

# top 10 brands no of products sold
SELECT brand_name , sum(rating_count)  as ' products_sold' 
   FROM myntra_data1.data
    group by brand_name 
      order by  products_sold  desc limit 10 ; 
      
# top 10 brands with maximum revenue generated
SELECT brand_name , sum(discounted_price *rating_count) as 'Revenue'
    FROM myntra_data1.data
        group by brand_name
             order by Revenue  desc limit 10 ;
 
# top  10 most evpensive brands
 SELECT brand_name ,round(avg(discounted_price))
    FROM myntra_data1.data 
     group by  brand_name
      order by  avg(discounted_price) desc limit 10;     

# top 10  products tag  sold
SELECT product_tag , sum(rating_count)   as ' products_sold' 
   FROM myntra_data1.data
    group by product_tag 
      order by  products_sold  desc limit 10 ; 
   
   
SELECT product_tag ,round(avg(discounted_price)),max(discounted_price),min(discounted_price)
    FROM myntra_data1.data 
     group by  product_tag
      order by min(discounted_price)  desc limit 10;     
      
      
# Assignment

# 1. Brand Report Card
SELECT brand_name FROM myntra_data1.data;

# 2. Which product_category of any brand is sold the most
SELECT brand_name ,
  product_tag , 
    sum(rating_count)  as ' products_sold' 
     FROM myntra_data1.data
      group by brand_name,product_tag 
       order by  products_sold  desc ; 

# 3. List top 5 brands which has sold most number of tshirts
SELECT brand_name ,product_tag, sum(rating_count)  as ' products_sold' 
   FROM myntra_data1.data
     where product_tag = 'tshirts'
      group by brand_name,product_tag
       order by  products_sold  desc limit 5; 
       
       
# 4. List top 5 brands which has sold most number of shirts
SELECT brand_name ,product_tag, sum(rating_count)  as ' products_sold' 
   FROM myntra_data1.data
     where product_tag = 'shirts'
      group by brand_name,product_tag
       order by  products_sold  desc limit 5; 
       

# 5. List top 5 brands which has sold most number of jeans
SELECT brand_name ,product_tag, sum(rating_count)  as ' products_sold' 
   FROM myntra_data1.data
     where product_tag = 'jeans'
      group by brand_name,product_tag
       order by  products_sold  desc limit 5;
       
       
# 6. List top 5 brands which has sold most number of dresses
SELECT brand_name ,product_tag, sum(rating_count)  as ' products_sold' 
   FROM myntra_data1.data
     where product_tag = 'dresses'
      group by brand_name,product_tag
       order by  products_sold  desc limit 5;
       

# 7. Most popular product name listed in Myntra
SELECT product_name ,round(avg(rating_count)) as 'Rating_listed',
  max(discounted_price) as 'Most_popular_product'
    FROM myntra_data1.data
      group by product_name
       order by  Most_popular_product desc ; 


# 8. Number of products sold for every rating (0 - 5)
SELECT count(product_name) as 'products sold', rating
     FROM myntra_data1.data
        where rating between 0 and 5
         group by rating
          order by rating desc;
          
          
# 9. Number of products sold for every rating by shirts
SELECT  product_tag, count(product_name) as 'products sold', rating
     FROM myntra_data1.data
        where rating between 0 and 5 
          and product_tag = 'shirts' 
           group by rating
            order by rating desc;


# 10. Number of products sold for every rating in tshirt category
-- Bonus : Relation between price of the thisrt and its rating with respect to people rated
SELECT  product_tag, rating ,count(product_name) as 'products sold', 
   round(avg(discounted_price))
     FROM myntra_data1.data
        where rating between 0 and 5 
         and rating != 0
          and product_tag = 'tshirts' 
           group by rating
            order by rating desc;
            
-- Merchant Specific
# 1. What is the average price point of products across different categories and brands?
SELECT brand_name , product_tag ,round(avg(discounted_price)) as 'Average_price'
     FROM myntra_data1.data
      group by brand_name,product_tag 
        order by Average_price desc ;


# 2. How much discount should be offered on each product to maximize revenue and profit?
SELECT  product_tag,discounted_price,
    sum(discounted_price*rating_count) as 'Revenue'
      FROM myntra_data1.data
        group by product_tag ,discounted_price
           order by Revenue desc ;
 
# 3. What is the average discount on tshirt we need to give?
SELECT product_tag, round(avg(marked_price - discounted_price)) as 'Average_discount' 
       FROM myntra_data1.data
        where product_tag = 'tshirts';
         
# 4. What are the biggest brands in tshirt market?
SELECT brand_name, rating_count
       FROM myntra_data1.data 
        where product_tag = 'tshirts'
         order by rating_count desc limit 10;
         
# As discounted price         		
SELECT brand_name, discounted_price
       FROM myntra_data1.data 
        where product_tag = 'tshirts'
         order by discounted_price desc limit 10;

# 5. How much product name of tshirt is captured by roadster?
SELECT count(product_name),product_tag ,brand_name
  FROM myntra_data1.data
   where product_tag = 'tshirts'
      and brand_name =  'Roadster'
      group by product_tag,brand_name;








