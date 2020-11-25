/* 
	Final Project Views 
	November 9th, 2020
	CIT 178
	Colin Haroutunian

CREATE VIEW ValveGames AS
SELECT Title, Genre, ReleaseDate, Purchases.CurrentPrice
FROM GameInfo
	JOIN Purchases ON GameInfo.GameID = Purchases.PurchaseID
	JOIN Developers ON GameInfo.DeveloperID = Developers.DeveloperID
WHERE Developers.Developer = 'Valve';

CREATE VIEW GameSaleInfo AS
SELECT Title, CurrentPrice, SalePrice, ReleaseDate
FROM GameInfo
	JOIN Purchases ON GameInfo.PurchaseID = Purchases.PurchaseID;

CREATE VIEW CIV6Reviews AS
SELECT ReviewURL, ReviewSite, Rating
FROM Reviews
	JOIN GameInfo ON Reviews.GameID = GameInfo.GameID
WHERE Title = 'Sid Meiers Civilization VI';

CREATE VIEW GameRecord AS
SELECT Title, DatePlayed, TimePlayed
FROM ActivityLog
	JOIN GameInfo ON ActivityLog.GameID = GameInfo.GameID;

UPDATE GameRecord
SET DatePlayed = '2020-11-09', TimePlayed = 5
WHERE Title = 'Portal 2';
*/