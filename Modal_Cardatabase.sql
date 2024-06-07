
# Diffrent Products with their Name

select distinct(productName)
from products 
order by productName ;


 #  Products having highest stocks in warehouse
 
 select productname , quantityInStock as stock 
 from products
 where quantityInStock > 5000 
 order by quantityInStock desc 
 limit 10 ;
 
 
 # No of Product lines and their count 
 
 select distinct(count(productLine)) as No_of_lines,
 productLine ,
 productVendor
 from products 
 group by productLine, productVendor;
 
 
 # How many Total No of vendors do we have for each product line 
 
select distinct(count(productVendor)) as no_of_vendor ,
productline 
from products 
group by productLine 
order by no_of_vendor desc ;


# what is the stock of each warehouse 

select sum(quantityinstock) as Total_stock , warehousecode
from products 
group by warehouseCode 
order by total_stock desc ;


# Which productName has got more orders ,
# List top 10 Products with most demand & prices at which they where sold 

select ProductName ,
       quantityOrdered ,
       priceEach ,
       (quantityOrdered*priceEach) as total_order 
       from products 
       left join orderdetails 
       on products.productCode=orderdetails.productCode 
       order by quantityOrdered desc 
       limit 10 ;
       
       
# Inventory Management: Use the data to manage inventory.
#The product codes, quantities, and prices can provide valuable information for inventory control.

select productCode ,
       quantityinstock,
       sum(buyprice*quantityinstock) as Buying_stock,
       sum(quantityInStock*MSRP) as Revenue_stock
       from products 
       group by productCode 
       order by Revenue_stock desc 
       limit 10 ;


# Sales Analysis: Analyze the sales data for business insights.
# Look at the frequency of orders, the range of prices, and the diversity of products to understand sales trends.

SELECT YEAR(shippedDate) AS Year, 
       SUM(Amount) AS Total_sale
FROM payments
RIGHT JOIN orders
ON payments.customerNumber = orders.customerNumber
WHERE shippedDate BETWEEN '2003-01-01' AND '2005-12-31'
GROUP BY YEAR(shippedDate)
ORDER BY Year;


# Product Line Analysis: The detailed descriptions of collectible product lines can be analyzed to understand which products are popular 

select distinct(productName) ,
       sum(quantityOrdered)
       from products
       left join orderdetails
       on products.productCode=orderdetails.productCode 
       group by productName 
       order by sum(quantityOrdered) desc 
       limit 10 ;


# Top customers who have highest credit limit given 

select customerName ,
creditLimit
from customers 
where creditLimit > 100000
order by creditLimit desc 
limit 10 ;

------------------------------------------------------------------------------------------------------------------------------------------------------
