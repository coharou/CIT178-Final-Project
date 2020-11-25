/*
CIT 180 Final Project Milestone #2
Colin Haroutunian

CREATE DATABASE final_project;
GO

USE final_project;
CREATE TABLE GameInfo
(GameID			INT				PRIMARY KEY,
Title			VARCHAR(60)		NOT NULL UNIQUE,
Publisher		VARCHAR(30)		NOT NULL,
Genre			VARCHAR(50)		NOT NULL,
ReleaseDate		DATE			NULL,
DeveloperID		INT				NOT NULL,
PurchaseID		INT				NOT NULL);
CREATE TABLE Purchases
(PurchaseID		INT				PRIMARY KEY,
CurrentPrice	MONEY			NOT NULL,
SalePrice		MONEY			NOT NULL,
PurchaseDate	DATE			NULL);
CREATE TABLE Developers
(DeveloperID	INT				PRIMARY KEY,
Developer		VARCHAR(30)		NOT NULL UNIQUE,
GameCount		INT				NOT NULL,
DevLocation		VARCHAR(30)		NOT NULL,
CompanyAge		INT				NULL,
DevContact		VARCHAR(50)		NULL);
CREATE TABLE Modding
(ModID			INT				PRIMARY KEY,
Program			VARCHAR(80)		NOT NULL UNIQUE,
ProgramAge		INT				NOT NULL,
DeveloperID		INT				NOT NULL);
CREATE TABLE Reviews
(ReviewID		INT				PRIMARY KEY,
ReviewURL		VARCHAR(150)	NOT NULL UNIQUE,
ReviewSite		VARCHAR(30)		NOT NULL,
ReviewDate		DATE			NULL,
Rating			DECIMAL			NOT NULL,
GameID			INT				NOT NULL);
CREATE TABLE ActivityLog
(PlayOrder		INT				PRIMARY KEY,
TimePlayed		INT				NOT NULL,
DatePlayed		DATE			NULL,
GameID			INT				NOT NULL);

USE final_project;
ALTER TABLE GameInfo
ADD FOREIGN KEY (DeveloperID) REFERENCES Developers (DeveloperID);
ALTER TABLE GameInfo
ADD FOREIGN KEY (PurchaseID) REFERENCES Purchases (PurchaseID);
ALTER TABLE Modding
ADD FOREIGN KEY (DeveloperID) REFERENCES Developers (DeveloperID);
ALTER TABLE Reviews
ADD FOREIGN KEY (GameID) REFERENCES GameInfo (GameID);
ALTER TABLE ActivityLog
ADD FOREIGN KEY (GameID) REFERENCES GameInfo (GameID);

USE final_project;
CREATE INDEX IX_GameInfoDeveloperID
	ON GameInfo (DeveloperID);
CREATE INDEX IX_PurchaseID
	ON GameInfo (PurchaseID);
CREATE INDEX IX_ModdingDeveloperID
	ON Modding (DeveloperID);
CREATE INDEX IX_ReviewsGameID
	ON Reviews (GameID);
CREATE INDEX IX_ActivityLogGameID
	ON ActivityLog (GameID);
*/