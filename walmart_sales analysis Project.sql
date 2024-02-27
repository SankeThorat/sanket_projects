use walmart_sales;

select 
		Time,
         (case
         when Time between "00:00:00" and "12:00:00" Then "morning"
         when Time between "12:01:00" and "16:00:00" Then "Afternoon "
         else "Evening"
         end )  AS time_of_day
          From sales ;

alter table sales add column  time_of_day varchar (10);

UPDATE sales
set time_of_day = (
case
         when Time between "00:00:00" and "12:00:00" Then "morning"
         when Time between "12:01:00" and "16:00:00" Then "Afternoon "
         else "Evening"
end
);
         
# day_name 
select date ,
     dayname(date) as day_name
     from sales ;
alter table sales add column day_name varchar (10);

update sales 
set day_name = dayname(date);

# Month_name 
 
 select date ,
 monthname(date) as month_name
from sales ;

alter table sales add column month_name varchar(10);

update sales 
set month_name = monthname(date);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 # Task 1
 # How many unique cities does the data have ? 
 
   select distinct(city)
		from sales ; 


# Task 2
# In which city is each branch ?

 select distinct city,
        branch
        from sales ; 


# task 3
# how many unique Product line does the data have ?

select distinct (`Product line`)
       from sales ;


# task 4 
# what is the most common payment method ?

select payment,
     count(payment) as cnt
     from sales 
     group by  payment
     order by cnt desc ;


# Task 5
# what is the most selling product line?

select `Product line`,
     count(`Product line`) as cnt
     from sales 
     group by  `Product line`
     order by cnt desc ;


  # Task 6
  # What is the Total revenue by month ?
 
    select round(sum(total))  as total_revenue ,
            month_name as month 
            from sales 
			group by month_name
			order by total_revenue desc ;
    
    
   # Task 7
   # What month had the largest cogs ? 
   
  select 
  month_name as month ,
             round(SUM(cogs))as cogs 
             from sales 
             group by month_name 
             order by cogs desc ;
  
  
  # task 8
  # What Product line has largest revenue ?
  
  select `Product line`,
       round( sum(total)) as Total_revenue
       from sales 
       group by  `Product line`
       order by  Total_revenue  desc ;	
                 
                 
  # task 9
  # which city has largest revenue ?
  
 select round(sum(total)) as revenue,
		city 
		from sales 
		group by city 
		order by revenue desc;
          
   
   # task 10 
   # What product line has largest VAT ? 
   
   select * from sales ;
   select  `Product line`,
           round(avg(`Tax 5%`)) as largest_tax 
		   from sales 
           group by `Product line`
           order by largest_tax desc ;
          
   
   # task 11 
   # Which branch sold more products than average product sold ? 
   
   select branch ,
          sum(Quantity) as qty 
          from sales
          group by branch 
          having sum(Quantity) > (select avg(Quantity) from sales );
   
   
   # task 12
   # what is the most common product line by gender ? 
   
   select gender,
          `Product line` ,
           count(gender) as total_ct  
          from sales 
          group by `Product line`, gender 
          order by total_ct desc ;
          
   
   # Task 13
   # What is average rating of each product line ?
   
   select 
		round(avg(rating),2)as avg_rating ,
        `Product line`
        from sales 
        group by `Product line`
        order by avg_rating desc ;
        
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------------       
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   