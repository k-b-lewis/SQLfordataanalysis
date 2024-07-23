SELECT 
Customer.CustomerID,
  FirstName,
  LastName,
  City,
sum(TotalDue)
From Customer
  JOIN Orders on 
  Customer.CustomerID = Orders.CustomerID
GROUP BY Customer.City
  -- FirstName,
  -- LastName
