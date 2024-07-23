SELECT
month(CreationDate) As Month_Ord,
Year (CreationDate) As Year_Ord,
Count(1) as NumOrders,
Sum(TotalDue) AS Revenue,
Avg(totalDue) as AvgRev
From Orders
GROUP BY month(CreationDate), Year(CreationDate)
ORDER BY YEAR(CreationDate), Month(CreationDate)