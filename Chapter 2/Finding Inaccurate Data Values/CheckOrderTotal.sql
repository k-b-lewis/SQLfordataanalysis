SELECT OrderItem.OrderId,
  Orders.TotalDue,
  SUM(Price * Quantity) as NewTotalDue

FROM OrderItem
  JOIN Product ON OrderItem.ProductID = Product.ProductID
  JOIN Orders ON OrderItem.OrderID = Orders.OrderID

-- Where Orders.TotalDue = 112.38

GROUP BY OrderItem.OrderId

-- Having Orders.TotalDue != NewTotalDue

-- Select *
-- FROM OrderItem
--   JOIN Product ON OrderItem.ProductID = Product.ProductID
--   JOIN Orders ON OrderItem.OrderID = Orders.OrderID
 
  