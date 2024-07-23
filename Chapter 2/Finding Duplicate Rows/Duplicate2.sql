SELECT FirstName, LastName, COUNT(1),
CustomerID, City, State
FROM Customer

GROUP BY FirstName, LastName
HAVING COUNT(1) > 1

