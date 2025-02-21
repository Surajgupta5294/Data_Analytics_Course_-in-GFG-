SELECT * FROM myntra_data1.data;
 
 
 -- calculate the "min & max" value
select min(discounted_price), avg(discounted_price), max(discounted_price)FROM myntra_data1.data;
select min(marked_price), avg(marked_price), max(marked_price) from myntra_data1.data;
 
 -- finding the maximum products 
SELECT * FROM myntra_data1.data where discounted_price = 45900;
SELECT * FROM myntra_data1.data where marked_price = 113999;

 -- finding the minmum products 
SELECT * FROM myntra_data1.data where (discounted_price) = 49;
SELECT * FROM myntra_data1.data where (marked_price) = 50;

-- find most,least expensive, average disocunted  of "adidas" products
select min(discounted_price), avg(discounted_price), max(discounted_price)FROM myntra_data1.data 
                      where brand_name = 'adidas';

-- find most,least expensive, average marked_price  of "nike" products
select min(marked_price), avg(marked_price), max(marked_price) from myntra_data1.data 
								where brand_name = 'nike';

--  Finding the average, max,min value of brand "puma"
 select avg(marked_price)  from myntra_data1.data where brand_name = 'puma';
  select max(marked_price)  from myntra_data1.data where brand_name = 'puma';
   select min(marked_price)  from myntra_data1.data where brand_name = 'puma';
   
-- Same command in one line
select avg(marked_price),max(marked_price),min(marked_price)   from myntra_data1.data where brand_name = 'puma';
 
-- Same command with alliace
select avg(marked_price) as  'Avg',
   max(marked_price) as 'Max',
     min(marked_price) as 'Min'   
        from myntra_data1.data 
          where brand_name = 'puma';
 
-- Creating new columns of total revenue genereated by each product
select discounted_price , rating_count ,
         (discounted_price * rating_count ) as 'Revenue'
               from myntra_data1.data;
               
-- total "revenue" 
select sum(discounted_price * rating_count ) as 'Revenue'from myntra_data1.data;

-- total "revenue"  per products
select sum(discounted_price * rating_count ) as 'Revenue',
        count(brand_tag) as 'Products',
         sum(discounted_price * rating_count ) /count(brand_tag)  as 'Revenue of per products'
           from myntra_data1.data;


-- where rating_count is not equal to zero
select sum(discounted_price * rating_count ) as 'Revenue',
        count(brand_tag) as 'Products',
         sum(discounted_price * rating_count ) /count(brand_tag)  as 'Revenue of per products'
           from myntra_data1.data where rating_count !=0;

-- Total product sold 
SELECT sum(rating_count) as 'Total product sold'  FROM myntra_data1.data;

--  Finding total products & unique also
SELECT count(*) as ' Total products'FROM myntra_data1.data;
SELECT count(brand_name) as ' Total products' FROM myntra_data1.data;
SELECT count(distinct brand_name) as ' Total products' FROM myntra_data1.data;


-- Total Revenue Generate, Products Sold in "wallets"
select sum(discounted_price * rating_count ) as 'Revenue',
		sum(rating_count) as 'Product Sold' from myntra_data1.data 
          where product_tag= 'wallets';
 
-- Finding number of products in Nike  & also unique
SELECT count(*) as ' Total products' FROM myntra_data1.data where brand_name= 'nike';
SELECT count(distinct product_link) as ' Total products' FROM myntra_data1.data where brand_name= 'nike';


-- Finding the name of categories 
SELECT distinct product_tag as ' Total products of nike' FROM myntra_data1.data where brand_name= 'Nike';
SELECT distinct product_tag as ' Total products of adidas' FROM myntra_data1.data where brand_name= 'Adidas';
SELECT distinct product_tag as ' Total products of puma' FROM myntra_data1.data where brand_name= 'Puma';
SELECT distinct product_tag as ' Total products of Roadster' FROM myntra_data1.data where brand_name= 'Roadster';

-- Same command in one line
SELECT  distinct brand_name, product_tag as ' Total products categories ' 
      FROM myntra_data1.data
       where brand_name in  ('nike' , 'adidas','puma','Roadster'); 

-- count the  unique products of categories 
SELECT count(distinct product_tag )as ' Total products of nike' FROM myntra_data1.data where brand_name= 'Nike';
SELECT count(distinct product_tag )as ' Total products of adidas' FROM myntra_data1.data where brand_name= 'Adidas';
SELECT count(distinct product_tag) as ' Total products of puma' FROM myntra_data1.data where brand_name= 'Puma';
SELECT count(distinct product_tag )as ' Total products of Roadster' FROM myntra_data1.data where brand_name= 'Roadster';

-- Same command in one line
SELECT  count(distinct brand_name, product_tag) as ' Total products  categories' 
      FROM myntra_data1.data
       where brand_name in  ('nike' , 'adidas','puma','Roadster'); 

--  rating * rating count 
SELECT brand_name , (rating*rating_count) as ' Rating fiter' FROM myntra_data1.data;

 -- round "Rating filter" 
 SELECT brand_name , round(rating*rating_count) as ' Rating fiter' FROM myntra_data1.data;
 
 -- where best rating brand 
 SELECT brand_name , round(rating*rating_count) as ' Rating fiter' FROM myntra_data1.data where (rating*rating_count)!=0;


