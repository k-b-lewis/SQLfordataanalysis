SELECT Customer.CustomerID,
  FirstName,
  LastName,
  OrderID,
  TotalDue,
  Sum(TotalDue),
  count(OrderID)
From Customer
  JOIN Orders on Customer.CustomerID = Orders.CustomerID
WHERE Customer.CustomerID = 126
GROUP BY OrderID
--   FirstName,
--   LastName
-- ORDER BY Sum(TotalDue) DESC
-- LIMIT 15 -- Click on Run on active connection to run