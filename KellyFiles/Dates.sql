SELECT OrderID,
CreationDate,
Year(CreationDate) as YearCreat, 
Month(CreationDate)as MoCreat, 
Day(CreationDate)as DayCreat,
Weekday(CreationDate) as DayOWeek,
-- Weekday returns the day of the week (0-Mon,1-Tue...6-Sun)
DATEDIFF(Now(),CreationDate) as TimeSince
-- DateDiff to calculate the days between the two dates


FROM Orders

where 
  -- (Month(CreationDate) = 7) 
  -- AND
  -- (Year(CreationDate)=2016)

  -- CreationDate between '2016-07-01' and '2016-07-31'
    -- it is important when formatting the dates like this to use ' '

Year(CreationDate)< (Year(now())-8)


order by CreationDate
-- asc implied, desc would make descending
