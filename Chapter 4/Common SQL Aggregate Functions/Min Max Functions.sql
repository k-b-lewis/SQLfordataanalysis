SELECT State,
  AVG(TotalDue) as Avg_Due,
  MIN(TotalDue) as Min_Due,
  MAX(O.TotalDue) as Max_Due,
  SUM(O.TotalDue) as Total_Sales
FROM Customer C
  JOIN Orders O ON O.CustomerID = C.CustomerID
GROUP BY State
ORDER BY Avg_Due DESC