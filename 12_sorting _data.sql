# Showing the Dataset
select * from myntra_data1.data;

# 1. Finding the most expensive product on myntra
select * from myntra_data1.data 
     order by discounted_price desc;

# 2. Finding the least expensive product on myntra
select * from myntra_data1.data 
       order by discounted_price asc;

# 3. Finding the top 5 most expensive product on myntra
select * from myntra_data1.data 
    order by discounted_price desc limit 5;


# 4. Finding the top 5 least expensive product on myntra
select * from myntra_data1.data 
      order by discounted_price asc limit 5;

# 5. Finding the second most expensive product
select * from myntra_data1.data 
       order by discounted_price desc limit 1,1;

# 6. Finding the second least expensive product
select * from myntra_data1.data 
       order by discounted_price asc limit 1,1;


# 7. Finding the 10th most expensive product
select * from myntra_data1.data 
     order by discounted_price desc limit 9,1;

# 8. Finding the 10th least expensive product
select * from myntra_data1.data 
       order by discounted_price asc limit 9,1;

# 9. Top 10 products based on best rating | rating*rating count
select brand_name,rating,rating_count ,
             round(rating*rating_count) as 'Combo_Rating'
                 from myntra_data1.data 
				   order by Combo_Rating  desc limit 10;
                   
	
# 10. Top 10 brand of adidas based on best rating 
SELECT  brand_name, discounted_price,rating,rating_count
        FROM myntra_data1.data 
         where brand_name = 'adidas' order by rating 
            desc limit 10 ;

# 11. Finding the worst rated product by nike
select brand_name,rating,rating_count ,
        round(rating*rating_count) as 'Combo_Rating'
                 from myntra_data1.data 
                    where brand_name = 'nike'
				     order by Combo_Rating  asc limit 10;
                     
# 12. Finding the worst rated product by nike & rating is not zero
select brand_name,rating,rating_count ,
        round(rating*rating_count) as 'Combo_Rating'
                 from myntra_data1.data 
                    where brand_name = 'nike' and rating !=0
				     order by Combo_Rating  asc limit 10;


# 13. Finding the top 10 best rated tshirt from nike or adidas | rating*rating count
select product_name, brand_name,product_tag,rating,rating_count
           from myntra_data1.data
              where brand_name in ('nike','adidas') and product_tag = 'tshirts'
                order by (rating*rating_count) desc limit 10;


# 14. Worst rated 10 products based on the rating of 100 people atleast
select product_name, brand_name, rating, rating_count,product_tag 
       from myntra_data1.data
        where rating_count>100
          order by rating asc limit 10;

# 15. 10 worst rated tshirt based on the rating of 100 people atleast
select product_name, brand_name, rating, rating_count,product_tag 
       from myntra_data1.data
        where rating_count>100 and product_tag = 'tshirts'
          order by rating asc limit 10;


# 16. Finding the top 10 best rated tshirts from 'adidas' or 'nike' | rating*rating count
select product_name, brand_name,product_tag,rating,rating_count , round(rating*rating_count) as 'Combo_rating'
           from myntra_data1.data 
              where brand_name in ('adidas','nike') and product_tag = 'tshirts'
                order by rating desc limit 10;


# 17. Finding the list of tshirts from nike and adidas prices between 1000 and 1200 |
   # Sort them based on ascending order of brand_name & price
select product_name, brand_name, rating, rating_count,product_tag ,discounted_price
       from myntra_data1.data
        where brand_name in ('nike' ,'adidas') and product_tag = 'tshirts' and discounted_price between 1000 and 2000
          order by brand_name asc , discounted_price asc limit 100;


select product_name, brand_name, rating, rating_count,product_tag ,discounted_price
       from myntra_data1.data
        where brand_name in ('nike' ,'adidas') and product_tag = 'tshirts' and discounted_price between 1000 and 2000
          order by  discounted_price asc , brand_name asc;

# 13. Sort the products in alphaetical descending order based on their product_name and show the last 10 of them
select * from myntra_data1.data order by product_tag ;
