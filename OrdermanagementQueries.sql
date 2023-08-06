select * from customer join ordertable on customer.CustomerID =ordertable.CustomerID;


select  customer.CustomerID,customer.CustomerName, ordertable.OrderDate , shipper.ShipperAddress
from ((ordertable inner join customer on ordertable.customerID=customer.CustomerID) 
inner join shipper on  ordertable.customerID=shipper.shipperId) where shipper.ShipperID in (2,3,5);


select  count(*) as countoforders
from ((ordertable inner join customer on ordertable.customerID=customer.CustomerID) 
inner join shipper on  ordertable.customerID=shipper.shipperId) where customer.CustomerID=101;

select customer.customerID, customer.CustomerName, ordertable.orderID from customer 
left join ordertable on customer.CustomerID=ordertable.CustomerID;

select customer.customerID, customer.CustomerName, ordertable.orderID from customer 
inner join ordertable on customer.CustomerID=ordertable.CustomerID;

select customer.customerID, customer.CustomerName, ordertable.orderID from customer 
cross join ordertable on customer.CustomerID=ordertable.CustomerID;

select customer.customerID, customer.CustomerName, ordertable.orderID from customer 
 right join ordertable on customer.CustomerID=ordertable.CustomerID;

#Get total count of order based on  EmployeeId present in order table 
select count(ordertable.EmployeeID) as countoforder, CustomerName from customer 
join ordertable on customer.CustomerID=ordertable.CustomerID group by EmployeeID ;

#Get max order by customer 


#Using union operator to get Id from both customer and ordertable 

select CustomerID from customer union select CustomerID from ordertable ;

select max(OrderID) CustomerName,cus OrderDate from customer 
join ordertable on customer.CustomerID=ordertable.CustomerID order by CustomerID 
=(select count(OrderDate) from customer 
join ordertable on customer.CustomerID=ordertable.CustomerID);

#  

select count( distinct CustomerID) as count , city   from customer group by customer.City order by count asc ;


select count( distinct CustomerID) as count , city   from customer group by customer.City having count >=2 limit 1;

#Get count of employee who ever ordered more than 2 times 
select CustomerName,Address,City,PostalCode, count(ordertable.EmployeeID) as countofemployess
from (customer join ordertable on customer.CustomerID=ordertable.CustomerID) group by EmployeeID having countofemployess >2;

