#the file which i have imported from my folder
SELECT * FROM `file swiggy`.`22. swiggy_csv`;

#looking for the rating greater than 4.5
SELECT * FROM `file swiggy`.`22. swiggy_csv` WHERE rating > 4.5;

# order price from small to big
select * from `file swiggy`.`22. swiggy_csv` order by price ASC;

# food that have veg category
select * from `file swiggy`.`22. swiggy_csv` where veg_or_nonveg = 'Veg';

#looking for the iteam
select item from `file swiggy`.`22. swiggy_csv` ;

# looking for iteam have 4.5 rating and price greater than 500
select item,rating > 4.6 ,price<500 from `file swiggy`.`22. swiggy_csv` ;

# looking for iteam have 4.5 rating and price greater than 500 - veg category
select item,rating > 4.6 ,price<500,veg_or_nonveg = 'Veg'  from `file swiggy`.`22. swiggy_csv` ;

# looking for which city have cost per person
select city,cost_per_person < 250 from `file swiggy`.`22. swiggy_csv` ;

# count for the restrun have 250 cost per person and the count
select city , count(*) as count from `file swiggy`.`22. swiggy_csv` where cost_per_person > 250 group by city;

# looking for no of restaurant in each city
select city , count(*) as count 
from `file swiggy`.`22. swiggy_csv`
group by city;

# checking state wise 
select city,count(*) as number_of_items
from `file swiggy`.`22. swiggy_csv`
group by city;

# checking the count related to cuisine and there number of item
select cuisine,count(*) as number_of_items from `file swiggy`.`22. swiggy_csv` group by cuisine;

# checking cuisine item and city 
select distinct cuisine, item, city FROM `file swiggy`.`22. swiggy_csv`;

select city, group_concat(distinct cuisine) as cuisines,  group_concat(distinct item) as items
from `file swiggy`.`22. swiggy_csv` group by  city;

# looking for order by Rating and Include Aggregated Data
select rating,group_concat(distinct cuisine) as cuisines,  group_concat(distinct item) as items
from `file swiggy`.`22. swiggy_csv` group by rating order by rating desc;

# looking for rate distrivution 
select rating, COUNT(*) as count from `file swiggy`.`22. swiggy_csv`
group by rating order by rating;

# looking for which city have best rating as avg
SELECT city, avg(rating) as avg_rating from `file swiggy`.`22. swiggy_csv`
group by city order by  avg_rating DESC;

# looking for cuisine and avg cost of that 
select cuisine, AVG(cost_per_person) AS avg_cost from `file swiggy`.`22. swiggy_csv` group by cuisine order by avg_cost;

# looking gfor most popular cuisin
SELECT cuisine, COUNT(*) AS count
From `file swiggy`.`22. swiggy_csv` Group by cuisine Order by count desc;

# counting the veg and non veg section
SELECT veg_or_nonveg, COUNT(*) AS count
FROM `file swiggy`.`22. swiggy_csv` Group by  veg_or_nonveg;

# looking for best restruant by rating
Select restaurant_name, rating
From `file swiggy`.`22. swiggy_csv` Where rating > 4.5 Order by rating DESC;



