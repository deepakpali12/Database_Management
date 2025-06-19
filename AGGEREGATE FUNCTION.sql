Create database assignment4;
use assignment4;
select* from sales;
#1.	Write a query to calculate the total sales (Quantity * UnitPrice) for each product
select productid ,sum(quantity*unitprice) as totalsales from sales group by productid;
#2.	Write a query to find the total number of products sold in each region. 
select region ,sum(quantity) as total_pdt_sales from sales group by region;
#3 	Write a query to get the average sales amount per product. 
select productid,avg(quantity*unitprice) from sales group by productid;
#4 4.	Find the regions where total sales are more than 2000. 
select region from sales group by region having sum(quantity*unitprice)>2000;
#55.	Write a query to get the maximum quantity sold for each product. 
select productid,max(quantity) as max_qty_sold from sales group by productid;
#6 6.	Write a query to calculate the average quantity of products sold per region. 
select region ,avg(quantity) as avg_qty_sold from sales group by region;
#7 7.	Find the product IDs that have generated a total sales amount of more than 1000.  
select productid ,sum(quantity*unitprice) as total_sales from sales group by productid having sum(quantity*unitprice)>1000;
# 8 8.	Write a query to get the total number of sales (rows) made for each customer. 
select customerid,count(*) as total_sale_rows from sales group by customerid;
# 9.	Find the products for which the average quantity sold is less than 5. 
select productid from sales group by productid having avg(quantity)<5;
#10.	Write a query to find the sum of total sales for each customer in each region. 
select customerid ,region,sum(quantity*unitprice) as total_sales from sales group by region, customerid;
#11.	Write a query to calculate the total sales for each month. 
select month(saledate)as month, sum(quantity*unitprice) as totalsales from sales group by month(saledate);
#12.	Find the regions where the average unit price is more than 200
select region,sum(quantity*unitprice) from sales group by region having avg(unitprice)>200;
#13.	Write a query to get the minimum and maximum quantity sold per region.  
select region ,min(quantity) as min,max(quantity) as max from sales group by region;
#14.	Find the customers who have made more than 2 purchases.  
select customerid,count(quantity) from sales where productid>2 group by customerid;
#15.Write a query to find the total sales for each product and filter only those products where the total sales exceed 1500.
select sum(quantity*unitprice) as total_sales,productid  from sales group by productid having sum(quantity*unitprice)>1500;