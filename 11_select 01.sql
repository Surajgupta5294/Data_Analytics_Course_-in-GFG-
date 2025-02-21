SELECT * FROM myntra_data1.data;
  
  
  -- Showing the Data according to brand_name
SELECT brand_name FROM myntra_data1.data; 

 
 -- Showing the Data according to multiple_data
 SELECT brand_name ,product_name,rating,rating_count FROM myntra_data1.data; 
 

 -- create new column with mathemtical functions | Making Discounted Amount
 SELECT product_name,brand_name,marked_price,discounted_price,
             marked_price - discounted_price as 'discount_amount'
 FROM myntra_data1.data; 

 
 -- create new column with  calulate the discount_percent
   SELECT product_name,brand_name,marked_price,discounted_price,
             round(((marked_price - discounted_price)/marked_price)*100) as 'discount_percent'
 FROM myntra_data1.data; 
 
 
--  create new column rating_filter with (rating * rating_count)
SELECT brand_name,rating,rating_count,
       (rating * rating_count) as 'rating_filter'
 FROM myntra_data1.data;


-- Finding UNIQUE values
SELECT count(brand_name) FROM myntra_data1.data;

SELECT count(distinct(brand_name)) FROM myntra_data1.data;



-- using Where clause
SELECT brand_name,product_tag FROM myntra_data1.data where product_tag = 'tshirts';

SELECT count(distinct(brand_name)) FROM myntra_data1.data  where product_tag = 'tshirts' ;

 
-- finding adidas product in brand_tag
SELECT * FROM myntra_data1.data where brand_tag = 'adidas';

-- finding unique "adidas" product in brand_tag
SELECT  distinct * FROM myntra_data1.data where brand_tag = 'adidas';
  

-- Products of "tshirts" with Multiple Where Clause with AND or count the product also 
SELECT distinct(brand_name) FROM myntra_data1.data 
					where product_tag ='tshirts' and  discounted_price <1000;

 SELECT count(distinct(brand_name)) FROM myntra_data1.data 
					where product_tag ='tshirts' and  discounted_price <1000;
  
  
  -- Products of "shirts" with Multiple Where Clause with AND  or count the product also
  SELECT distinct(brand_name) FROM myntra_data1.data 
					where product_tag ='shirts' and  discounted_price >2000;
    
   SELECT count(distinct(brand_name)) FROM myntra_data1.data 
					where product_tag ='shirts' and  discounted_price >2000;
    
         
                    
 -- different products of "nike" greaterthan 2000                    
SELECT distinct(product_tag) FROM myntra_data1.data 
					where brand_name ='nike' and  discounted_price >2000;
                    
 -- different products of "adidas" greaterthan 1000                    
SELECT distinct(product_tag) FROM myntra_data1.data 
					where brand_name ='adidas' and  discounted_price >1000;
                    
--  nike tshirts between 2000-3000
SELECT * FROM myntra_data1.data where brand_name ='nike' and product_tag = 'tshirts'and
           discounted_price between 2000 and 3000;

                    				
--  tshirts between 1000-3000 from either nike or adidas
SELECT * FROM myntra_data1.data where  brand_name ='nike' or brand_name ='adidas' and product_tag = 'tshirts'and
                        discounted_price between 2000 and 3000;
                        
SELECT * FROM myntra_data1.data
 where brand_tag = 'adidas' and discounted_price >2000 and discounted_price <5000;           

 
 -- using "between" 
SELECT * FROM myntra_data1.data 
  where brand_tag = 'adidas' and discounted_price between 2000 and 5000; 
  
  -- Adding more filter 
 SELECT * FROM myntra_data1.data 
    where brand_tag = 'nike'    and (discounted_price between 2000 and 5000) and rating > 4;
 
 SELECT * FROM myntra_data1.data 
    where  brand_tag = 'adidas' and (discounted_price between 2000 and 5000) and rating > 4 and rating_count >10;
 
     
     
     -- Using OR
 SELECT * FROM myntra_data1.data 
    where  brand_tag = 'adidas' or brand_tag = 'puma' and
          (discounted_price between 5000 and 8000);
   
   
          
	-- Using not
SELECT * FROM myntra_data1.data 
   where not brand_tag = 'adidas' and  (discounted_price between 5000 and 8000);
  
  SELECT * FROM myntra_data1.data 
   where not (brand_tag = 'adidas' or brand_tag = 'puma') and  (discounted_price between 5000 and 8000);


-- Using in
SELECT * FROM myntra_data1.data 
         where brand_name in ('adidas' , 'nike' , 'puma')  and (discounted_price between 5000 and 8000);
         
-- Using not in
SELECT * FROM myntra_data1.data 
    where brand_tag not in ('adidas') and  (discounted_price between 5000 and 8000);

SELECT * FROM myntra_data1.data 
    where brand_tag not in ('adidas' , 'puma') and  (discounted_price between 5000 and 8000);
