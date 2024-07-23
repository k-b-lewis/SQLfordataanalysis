SELECT OrderItem.OrderId,
  Orders.TotalDue,
  SUM(Price * Quantity) as NewTotalDue

FROM OrderItem
  JOIN Product ON OrderItem.ProductID = Product.ProductID
  JOIN Orders ON OrderItem.OrderID = Orders.OrderID

-- Where Orders.TotalDue = 112.38
-- -- -- where clause is used for pulling non-aggregated data (data already in one of the tables)
-- -- -- and comes after the FROM/JOIN ON clauses but before the GROUP BY clause

GROUP BY OrderItem.OrderId

Having ABS(Orders.TotalDue-NewTotalDue)>0.001
-- -- -- Having clause allows for caluclations using the data aggregated for the group (like the 
-- -- -- sum of all the cost for the order) and comes after the GROUP BY clause

-- Select *
-- FROM OrderItem
--   JOIN Product ON OrderItem.ProductID = Product.ProductID
--   JOIN Orders ON OrderItem.OrderID = Orders.OrderID

  