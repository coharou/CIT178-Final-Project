/*	
	Chapter 15 Final Project Lab Assignment
	November 23rd, 2020
	CIT 178
	Colin Haroutunian
*/

/* Final Project Procedures
CREATE PROC spRecentActivity
AS
SELECT DatePlayed AS 'Date Played', Title, Genre, TimePlayed AS 'Minutes Played'
FROM ActivityLog JOIN GameInfo ON ActivityLog.GameID = GameInfo.GameID
WHERE DatePlayed > GETDATE() - 30
ORDER BY DatePlayed;
GO
EXEC spRecentActivity;

CREATE PROC spModProgramList
	@DeveloperVar int
AS
SELECT ModID, Program
FROM Modding
WHERE DeveloperID = @DeveloperVar;
GO
EXEC spModProgramList @DeveloperVar = 3;

CREATE PROC spGameDeveloperName
	@DevName varchar(50) OUTPUT,
	@TitleVar varchar(50)
AS
SELECT @DevName = Developer
FROM GameInfo JOIN Developers ON GameInfo.DeveloperID = Developers.DeveloperID
WHERE Title = @TitleVar;
GO
DECLARE @DevName varchar(50);
EXEC spGameDeveloperName @DevName OUTPUT, 'Faster Than Light';
PRINT @DevName;

CREATE PROC spReviewAverage
	@GameName varchar(50)
AS
DECLARE @Reviews int;
SELECT @Reviews = AVG(Rating)
FROM Reviews JOIN GameInfo ON Reviews.GameID = GameInfo.GameID
WHERE Title = @GameName AND Rating < 11;
RETURN @Reviews;
GO
DECLARE @ReviewAvg int;
EXEC @ReviewAvg = spReviewAverage 'Sid Meiers Civilization VI';
PRINT CONVERT(varchar(50), @ReviewAvg) + ' stars for the user''s desired game.';
*/

/* Final Project User Defined Functions 
CREATE FUNCTION fnDevID(@DevName varchar(50))
	RETURNS int
BEGIN
	RETURN (SELECT DeveloperID
			FROM Developers
			WHERE Developer = @DevName);
END;
SELECT Title
FROM GameInfo JOIN Developers ON GameInfo.DeveloperID = Developers.DeveloperID
WHERE GameInfo.DeveloperID = dbo.fnDevID('Firaxis Games');

CREATE FUNCTION fnGameDetail(@DevID int)
	RETURNS TABLE
RETURN
	(	
		SELECT GameID, Title, Genre, ReleaseDate, CurrentPrice, SalePrice, PurchaseDate, DeveloperID
		FROM GameInfo JOIN Purchases ON GameInfo.PurchaseID = Purchases.PurchaseID 
		WHERE DeveloperID = @DevID
	);
SELECT Title, DatePlayed, PurchaseDate, TimePlayed/60 AS 'Hours Played'
FROM ActivityLog JOIN dbo.fnGameDetail(dbo.fnDevID('Pandemic Studios')) AS fnTable ON ActivityLog.GameID = fnTable.GameID;
*/ 

/* Final Project Triggers 
CREATE TABLE ReviewArchive
(	
	ReviewID	int				PRIMARY KEY NOT NULL,
	ReviewURL	varchar(150)	NOT NULL,
	ReviewSite	varchar(30)		NOT NULL,
	ReviewDate	date			NOT NULL,
	Rating		decimal(18,0)	NOT NULL,
	GameID		int				NOT NULL
);
CREATE TRIGGER Review_DELETE
	ON Reviews
	AFTER DELETE
AS
INSERT INTO ReviewArchive
(ReviewID, ReviewURL, ReviewSite, ReviewDate, Rating, GameID)
SELECT ReviewID, ReviewURL, ReviewSite, ReviewDate, Rating, GameID 
FROM deleted;

CREATE TRIGGER Review_INSERT
	ON Reviews
	AFTER INSERT
AS
INSERT INTO ReviewArchive
(ReviewID, ReviewURL, ReviewSite, ReviewDate, Rating, GameID)
SELECT ReviewID, ReviewURL, ReviewSite, ReviewDate, Rating, GameID
FROM inserted;

CREATE TRIGGER Review_UPDATE
	ON Reviews
	AFTER UPDATE
AS
INSERT INTO ReviewArchive
(ReviewID, ReviewURL, ReviewSite, ReviewDate, Rating, GameID)
SELECT ReviewID, ReviewURL, ReviewSite, ReviewDate, Rating, GameID
FROM inserted;
*/