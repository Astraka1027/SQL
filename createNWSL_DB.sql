CREATE DATABASE db_NWSL

CREATE TABLE tbl_team (
	teamID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	teamName VARCHAR(50),
	teamColor VARCHAR(50)
);
INSERT INTO tbl_team
	(teamName, teamColor)
	VALUES
	('Portland Thorns', 'Red and Black'),
	('KC Current', 'Blue and Black'),
	('OL Reign', 'Blue and Red')
	;
SELECT * FROM tbl_team

CREATE TABLE tbl_player (
	playerID INT PRIMARY KEY NOT NULL IDENTITY (100,100),
	playerName VARCHAR(50),
	playerTeam INT FOREIGN KEY REFERENCES tbl_team(teamID)
);
INSERT INTO tbl_player
	(playerName, playerTeam)
	VALUES
	('Sophia Smith', 1),
	('Kristen Hamilton', 2),
	('Emily Sonnett', 3)
	;
SELECT * FROM tbl_player

SELECT playerName
FROM tbl_player
INNER JOIN tbl_team ON playerTeam = teamID
WHERE teamName = 'Portland Thorns'