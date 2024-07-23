-- Select * from Customer
select Customer.City,
Customer.state,
count (distinct Orders.CustomerID),
Count (Orders.OrderID)
from Customer
 Join Orders 
 ON Customer.CustomerID = Orders.CustomerID
group BY Customer.City
ORDER BY State