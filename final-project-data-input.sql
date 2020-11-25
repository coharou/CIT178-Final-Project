/*
Final Project Lab Assignment
CIT 180 Week 8
Colin Haroutunian

USE final_project;
INSERT INTO Developers
	(DeveloperID, Developer, GameCount, DevLocation, CompanyAge, DevContact)
VALUES 
	(1, 'Firaxis Games', 17, 'United States', 24, NULL),
	(2, 'Pandemic Studios', 16, 'United States', 13, NULL),
	(3, 'Valve', 24, 'United States', 22, NULL),
	(4, 'Re-Logic', 1, 'United States', 9, 'support@re-logic.com'),
	(5, 'Chucklefish', 7, 'United Kingdom', 7, 'contact@chucklefish.org'),
	(6, 'Subset Games', 2, 'United States', 9, 'contact@subsetgames.com');

INSERT INTO Purchases
	(PurchaseID, CurrentPrice, SalePrice, PurchaseDate)
VALUES	
	(1, $12.99, $10.99, '2018-2-13');

INSERT INTO Purchases
	(PurchaseID, CurrentPrice, SalePrice, PurchaseDate)
VALUES	
	(2, $11.99, $7.59, '2016-3-1'),
	(3, $13.99, $7.99, '2017-4-2'),
	(4, $24.99, $2.99, '2019-12-23'),
	(5, $11.21, $3.78, '2019-12-22'),
	(6, $14.54, $4.99, '2018-9-21'),
	(7, $32.00, $11.83, '2019-2-23'),
	(8, $23.99, $9.99, '2015-12-17'),
	(9, $9.99, $2.85, '2017-3-15'),
	(10, $49.99, $3.99, '2016-8-17'),
	(11, $9.99, $14.78, '2014-10-15');

USE final_project;
INSERT INTO Modding
	(ModID, Program, ProgramAge, DeveloperID)
VALUES
	(1, 'Half-Life SDK', 22, 3),
	(2, 'Portal 2 Authoring Tools - Beta', 9, 3),
	(3, 'Sid Meiers Civilization VI Development Tools', 4, 1),
	(4, 'Sid Meiers Civilization V ModBuddy', 10, 1),
	(5, 'Left 4 Dead 2 Authoring Tools', 11, 3),
	(6, 'Sid Meiers Civilization: Beyond Earth SDK', 6, 1);

USE final_project;
INSERT INTO GameInfo
	(GameID, Title, Publisher, Genre, ReleaseDate, DeveloperID, PurchaseID)
VALUES
	(1, 'Sid Meiers Civilization VI', '2K Games', 'Turn-Based Strategy', '2016-10-21', 1, 1),
	(2, 'Starbound', 'Chucklefish', '2D Sandbox', '2016-7-22', 5, 2),
	(3, 'Star Wars Battlefront (Classic)', 'Lucasfilm', 'Sci-fi Action', '2004-9-21', 2, 3),
	(4, 'Portal 2', 'Valve', 'Puzzle Platformer', '2011-4-19', 3, 4),
	(5, 'Left 4 Dead 2', 'Valve', 'Co-op Zombies', '2009-11-17', 3, 5),
	(6, 'Half Life', 'Valve', 'Action', '1998-11-8', 3, 6),
	(7, 'Terraria', 'Re-Logic', '2D Sandbox', '2001-5-16', 4, 7),
	(8, 'Star Wars Battlefront 2 (Classic)', 'Lucasfilm', 'Sci-fi Action', '2005-11-1', 2, 8),
	(9, 'Sid Meiers Civilization: Beyond Earth', '2K Games', 'Sci-fi Turn-Based Strategy', '2014-10-23', 1, 9),
	(10, 'Sid Meiers Civilization V', '2K Games', 'Turn-Based Strategy', '2010-9-21', 1, 10),
	(11, 'Faster Than Light', 'Subset Games', 'Space Roguelike', '2012-9-14', 6, 11);

USE final_project;
INSERT INTO ActivityLog
	(PlayOrder, TimePlayed, DatePlayed, GameID)
VALUES
	(1, 11, '2020-8-1', 7),
	(2, 45, '2020-9-2', 11),
	(3, 93, '2020-9-9', 4),
	(4, 32, '2020-9-21', 2),
	(5, 54, '2020-10-2', 8),
	(6, 121, '2020-10-17', 3);
INSERT INTO Reviews
	(ReviewID, ReviewURL, ReviewSite, ReviewDate, Rating, GameID)
VALUES
	(1, 'https://www.polygon.com/2016/10/25/13398612/sid-meiers-civilization-6-review-PC-mac-windows', 'Polygon', '2016-10-25', 8.5, 1),
	(2, 'https://www.pcgamer.com/civilization-6-review/', 'PCGamer', '2016-10-20', 93, 1),
	(3, 'https://www.gamespot.com/reviews/civilization-6-review/1900-6416562/', 'Gamespot', '2016-10-24', 9, 1),
	(4, 'https://www.pcgamer.com/ftl-faster-than-light-review/', 'PCGamer', '2012-10-9', 89, 11),
	(5, 'https://www.gameinformer.com/games/starbound/b/pc/archive/2016/08/03/a-satisfying-space-sandbox.aspx', 'Gameinformer', '2016-8-3', 8.5, 2),
	(6, 'https://www.pcgamer.com/starbound-review/', 'PCGamer', '2016-7-27', 84, 2);
*/