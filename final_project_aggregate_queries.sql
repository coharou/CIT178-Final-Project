/*
Final Project
Aggregate Functions
CIT 180
October 26th, 2020
Colin Haroutunian

USE final_project;
SELECT COUNT(PlayOrder) AS 'Number of Times Played',
MAX(TimePlayed) AS 'Most Time Playing',
MIN(TimePlayed) AS 'Least Time Playing'
FROM ActivityLog;

USE final_project;
SELECT COUNT(PurchaseID) AS 'Games Purchased',
AVG(CurrentPrice) AS 'Average Price, Present',
AVG(SalePrice) AS 'Average Price, Sale',
AVG(CurrentPrice - SalePrice) AS 'Average Price, Difference',
SUM(SalePrice) AS 'Total Spent'
FROM Purchases;

USE final_project;
SELECT AVG(Rating) AS 'Average Rating',
COUNT(Rating) AS 'Number of Ratings'
FROM Reviews JOIN GameInfo	
	ON Reviews.GameID = GameInfo.GameID
WHERE Title = 'Sid Meiers Civilization VI' AND Rating < 11;

USE final_project;
SELECT COUNT(ReleaseDate) AS 'Games Over 10 Years Old'
FROM GameInfo
WHERE ReleaseDate < '1-1-2010';
*/

