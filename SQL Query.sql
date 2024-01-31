-- Which tracks appeared in the most playlists? how many playlist did they appear in?
SELECT trackid, count(*) 
FROM playlisttracks
GROUP BY trackid
ORDER BY count DESC;

-- Which track generated the most revenue? which genre?
SELECT TrackId, sum(UnitPrice*Quantity) AS revenue 
FROM invoiceitems
GROUP BY TrackId
ORDER BY revenue DESC;

-- which album?
SELECT albums.albumid, albums.title, sum(invoiceitems.UnitPrice) AS revenue 
FROM invoiceitems
JOIN tracks
	ON invoiceitems.TrackId = tracks.trackid
JOIN albums
	ON tracks.albumid = albums.albumid
GROUP BY albums.albumid
ORDER BY revenue DESC;

-- which genre?
SELECT genres.genreid, genres.name, sum(invoiceitems.UnitPrice) AS revenue 
FROM invoiceitems
JOIN tracks
	ON invoiceitems.TrackId = tracks.trackid
JOIN genres
	ON tracks.genreid = genres.genreid
GROUP BY genres.genreid
ORDER BY revenue DESC;

-- Which countries have the highest sales revenue? What percent of total revenue does each country make up?
SELECT 
	invoices.BillingCountry,
	ROUND(SUM(invoices.Total),2) AS TotalRevenue,
	ROUND(SUM(invoices.Total) * 100 /
	(SELECT SUM(invoices.Total) FROM invoices),2) AS PercentofRevenue
FROM invoices
GROUP BY invoices.BillingCountry
ORDER BY 2 DESC;

-- How many customers did each employee support, what is the average revenue for each sale, and what is their total sale?
SELECT 
	employees.employeeid, 
	employees.FirstName,
	employees.LastName, 
	count(customers.supportrepid) AS supportid,
	ROUND(AVG(invoices.total),2) AS AverageRevenuePerSale,
	ROUND(SUM(invoices.total),2) AS TotalSales
FROM employees
JOIN customers
	ON employees.employeeid = customers.supportrepid
JOIN invoices
	ON invoices.CustomerId = customers.CustomerId
GROUP BY employees.employeeid
ORDER BY supportid DESC;
