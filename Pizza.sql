use world

select * from dbo.Pizza4

-- usuniêcie kolumny 'id' --

alter table dbo.Pizza4 drop column id

-- zmiana typu danych w kolumnie 'price' --

ALTER TABLE dbo.Pizza4
ALTER COLUMN price decimal(12,2);

-- zmiana nazw kolumn --

EXEC sp_rename 'dbo.Pizza4.X', 'Order_ID', 'COLUMN';

EXEC sp_rename 'dbo.Pizza4.date', 'Date', 'COLUMN';

EXEC sp_rename 'dbo.Pizza4.time', 'Time', 'COLUMN';

EXEC sp_rename 'dbo.Pizza4.name', 'Name', 'COLUMN';

EXEC sp_rename 'dbo.Pizza4.size', 'Size', 'COLUMN';

EXEC sp_rename 'dbo.Pizza4.type', 'Type', 'COLUMN';

EXEC sp_rename 'dbo.Pizza4.price', 'Price', 'COLUMN';

-- Liczba zamówieñ w poszczególnych dniach tygodnia --

select
	CASE DATEPART(WEEKDAY, p.Date)
        WHEN 1 THEN 'Sunday'
        WHEN 2 THEN 'Monday'
        WHEN 3 THEN 'Tuesday'
        WHEN 4 THEN 'Wednesday'
        WHEN 5 THEN 'Thursday'
        WHEN 6 THEN 'Friday'
        WHEN 7 THEN 'Saturday'
	END AS 'WeekDay'
,count(*) as 'NumberOfOrders'
from dbo.Pizza4 p
group by DATEPART(weekday, p.Date) order by 'NumberOfOrders' desc

-- Liczba zamówieñ w poszczególnych miesi¹cach --

SELECT 
	CASE DATEPART(Month, p.Date)
		WHEN 1 THEN 'January'
        WHEN 2 THEN 'February'
        WHEN 3 THEN 'March'
        WHEN 4 THEN 'April'
        WHEN 5 THEN 'May'
        WHEN 6 THEN 'June'
        WHEN 7 THEN 'July'
		WHEN 8 THEN 'August'
		WHEN 9 THEN 'September'
		WHEN 10 THEN 'October'
		WHEN 11 THEN 'November'
		WHEN 12 THEN 'December'
    END AS 'Month'
,COUNT(*) AS 'NumberOfOrders'
FROM dbo.Pizza4 p
GROUP BY DATEPART(Month, p.Date) order by 'NumberOfOrders' desc

-- Liczba zamówieñ w poszczególnych godzinach --

SELECT 
DATEPART(HOUR, p.Time) AS 'Hour'
,COUNT(*) AS 'NumberOfOrders'
FROM dbo.Pizza4 p
GROUP BY DATEPART(HOUR, p.Time)
ORDER BY 'NumberOfOrders' desc

-- Liczba zamóweñ poszczególnych typów pizzy --

select
p.Type
, count(*) as 'NumberOfOrders'
from dbo.Pizza4 p
group by p.Type order by 'NumberOfOrders' desc

-- Liczba zamówieñ poszczególnych rozmiarów pizzy --

select
p.Size
, count(*) as 'NumberOfOrders'
from dbo.Pizza4 p
group by p.Size order by 'NumberOfOrders' desc

-- Liczba zamówieñ wg nazw --

select
p.Name
, count(*) as 'NumberOfOrders'
from dbo.Pizza4 p
group by p.Name order by 'NumberOfOrders' desc

-- Raport sprzeda¿y wg typów, nazw, rozmiarów --

select
p.Type, p.Name, p.Size
, count(*) as 'NumberOfOrders'
from dbo.Pizza4 p
group by rollup (p.Type, p.Name, p.Size)

-- Przychód wg dni tygodnia --

SELECT	
	CASE DATEPART(WEEKDAY, p.Date)
        WHEN 1 THEN 'Sunday'
        WHEN 2 THEN 'Monday'
        WHEN 3 THEN 'Tuesday'
        WHEN 4 THEN 'Wednesday'
        WHEN 5 THEN 'Thursday'
        WHEN 6 THEN 'Friday'
        WHEN 7 THEN 'Saturday'
    END AS 'Weekday'
, SUM(p.Price) AS 'Revenue'
FROM dbo.Pizza4 p
GROUP BY DATEPART(Weekday, p.Date)
order by 'Revenue' desc

-- Przychód wg miesi¹ca --

select
	CASE DATEPART(Month, p.Date)
		WHEN 1 THEN 'January'
        WHEN 2 THEN 'February'
        WHEN 3 THEN 'March'
        WHEN 4 THEN 'April'
        WHEN 5 THEN 'May'
        WHEN 6 THEN 'June'
        WHEN 7 THEN 'July'
		WHEN 8 THEN 'August'
		WHEN 9 THEN 'September'
		WHEN 10 THEN 'October'
		WHEN 11 THEN 'November'
		WHEN 12 THEN 'December'
    END AS 'Month'
, sum(p.price) 'Revenue'
from dbo.Pizza4 p
group by DATEPART(month,p.Date)
order by 'Revenue' desc

-- Przychód wg godziny --

SELECT 
DATEPART(HOUR, p.Time) AS 'Hour'
,sum(p.Price) AS 'Revenue'
FROM dbo.Pizza4 p
GROUP BY DATEPART(HOUR, p.Time)
ORDER BY 'Revenue' desc

-- Przychód wg nazwy --

select
p.Name
,sum(p.price) 'Revenue'
from dbo.Pizza4 p
group by p.Name 
order by 'Revenue' desc

-- Przychód wg typu pizzy --

select
p.Type
,sum(p.price) 'Revenue'
from dbo.Pizza4 p
group by p.Type 
order by 'Revenue' desc

-- Przychód wg rozmiaru --

select
p.Size
,sum(p.price) 'Revenue'
from dbo.Pizza4 p
group by p.Size 
order by 'Revenue' desc