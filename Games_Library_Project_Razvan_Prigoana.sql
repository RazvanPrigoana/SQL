CREATE DATABASE Games_Library;

GO

USE Games_Library;

GO 

CREATE SCHEMA GameCore;-- Clearly indicates that this schema holds the core game-related data and relationships.

GO

CREATE SCHEMA Reference; -- Reflects that this schema contains reusable reference or lookup data.

GO

CREATE SCHEMA AgeRating; -- Specifically identifies the schema as related to PEGI ratings and age classification.

GO

CREATE TABLE GameCore.Game (
Game_id INT PRIMARY KEY IDENTITY (1,1),
Title VARCHAR(50),
Relese_year DATE,
Next_game VARCHAR(50),
Publisher VARCHAR(100),
Game_mode VARCHAR(50),
Game_support VARCHAR(10),
Network_feature VARCHAR(50)
);

INSERT INTO GameCore.Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Black Myth:Wukong', '2024-08-20', 'N/A', 'Game Science', 'Single-player', 'Digital', 'Internet connection required');

INSERT INTO GameCore.Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Horizon Zero Dawn', '2017-03-01', 'Horizon Forbidden West', 'Sony Interactive Entertainment', 'Single-player', 'Digital', 'No internet connection required');


INSERT INTO GameCore.Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Rise of the Ronin', '2024-03-22', 'N/A', 'Sony Interactive Entertainment', 'Single-player/Multiplayer', 'Physical', 'Internet connection required');

INSERT INTO GameCore.Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Star Wars Jedi: Fallen Order', '2019-03-22', 'Star Wars Jedi: Survivor', 'Electronic Arts', 'Single-player', 'Digital', 'Internet connection required'),
('Star Wars Jedi: Survivor', '2023-04-28', 'N/A', 'Electronic Arts', 'Single-player', 'Digital', 'Internet connection required');

INSERT INTO GameCore.Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Assetto Corsa Competizione', '2020-06-23', 'N/A', '505 Games', 'Single-player/Multiplayer', 'Digital', 'Internet connection required');

INSERT INTO GameCore.Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('God of War', '2018-04-20', 'God of War Ragnarök', 'Sony Interactive Entertainment', 'Single-player', 'Digital', 'Internet connection required'),
('God of War Ragnarök', '2022-11-09', 'TBD', 'Sony Interactive Entertainment', 'Single-player', 'Digital', 'Internet connection required');

INSERT INTO GameCore.Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Need for Speed Heat', '2019-11-09', 'Need for Speed Unbound', 'Electronic Arts', 'Single-player/Multiplayer', 'Digital', 'Internet connection required');

INSERT INTO GameCore.Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('FC 24', '2023-09-29', 'FC 25', 'Electronic Arts', 'Single-player/Multiplayer', 'Physical', 'Internet connection required');

INSERT INTO GameCore.Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Mortal Kombat 1', '2023-09-19', 'TBD', 'Warner Bros. Games', 'Single-player/Multiplayer', 'Physical', 'Internet connection required');

INSERT INTO GameCore.Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Tom Clancys Ghost Recon Wildlands', '2017-03-07', 'Tom Clancys Ghost Recon Breakpoint', 'Ubisoft', 'Single-player/Multiplayer', 'Digital', 'Internet connection required');

INSERT INTO GameCore.Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Assassins Creed II', '2016-11-15', 'Assassins Creed: Brotherhood', 'Ubisoft', 'Single-player', 'Physical', 'Internet connection required'),-- REMASTERD
('Assassins Creed: Brotherhood', '2016-11-15', 'Assassins Creed: Revelations', 'Ubisoft', 'Single-player/Multiplayer', 'Physical', 'Internet connection required'),-- REMASTERD
('Assassins Creed: Revelations', '2016-11-15', 'Assassins Creed III', 'Ubisoft', 'Single-player/Multiplayer', 'Physical', 'Internet connection required'),-- REMASTERD
('Assassins Creed III', '2019-03-29', 'Assassins Creed III: Liberation', 'Ubisoft', 'Single-player/Multiplayer', 'Physical', 'Internet connection required'),-- REMASTERD
('Assassins Creed III: Liberation', '2019-03-29', 'Assassins Creed IV: Black Flag', 'Ubisoft', 'Single-player/Multiplayer', 'Physical', 'Internet connection required'),-- REMASTERD
('Assassins Creed IV: Black Flag', '2013-11-22', 'Assassins Creed Rogue', 'Ubisoft', 'Single-player/Multiplayer', 'Physical', 'Internet connection required'),
('Assassins Creed Rogue', '2018-03-20', 'Assassins Creed Unity', 'Ubisoft', 'Single-player/Multiplayer', 'Physical', 'Internet connection required'),-- REMASTERD
('Assassins Creed Unity', '2014-11-13', 'Assassins Creed Syndicate', 'Ubisoft', 'Single-player/Multiplayer', 'Physical', 'Internet connection required'),
('Assassins Creed Syndicate', '2015-11-19', 'Assassins Creed Origins', 'Ubisoft', 'Single-player', 'Physical', 'Internet connection required'),
('Assassins Creed Origins', '2017-10-27', 'Assassins Creed Odyssey', 'Ubisoft', 'Single-player', 'Physical', 'Internet connection required'),
('Assassins Creed Odyssey', '2018-10-05', 'Assassins Creed Valhalla', 'Ubisoft', 'Single-player', 'Physical', 'Internet connection required'),
('Assassins Creed Valhalla', '2020-11-12', 'Assassins Creed Mirage', 'Ubisoft', 'Single-player', 'Physical', 'Internet connection required'),
('Assassins Creed Mirage', '2023-10-05', 'Assassins Creed Shadows', 'Ubisoft', 'Single-player', 'Physical', 'Internet connection required'),
('Darksiders: Warmastered Edition', '2016-10-25', 'Darksiders II', 'THQ Nordic', 'Single-player', 'Physical', 'Internet connection required'),
('Darksiders II', '2012-08-14', 'Darksiders III', 'THQ Nordic', 'Single-player', 'Physical', 'Internet connection required'),
('Darksiders Genesis', '2020-02-14', 'N/A', 'THQ Nordic', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('Mortal Kombat 11', '2019-11-17', 'Mortal Kombat 1', 'Warner Bros. Games', 'Single-player/Multiplayer', 'Physical', 'Internet connection required'),
('Hitman: Definitive Edition', '2018-05-15', 'Hitman 2', 'Square Enix', 'Single-player', 'Physical', 'Internet connection required'),
('Hitman 2', '2018-11-13', 'Hitman 3', 'Warner Bros. Interactive Entertainment', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('FIFA 23', '2022-09-30', 'FC 24', 'Electronic Arts', 'Single-player/Multiplayer', 'Physical', 'Internet connection required'),
('Red Dead Redemption 2', '2018-10-26', 'N/A', 'Rockstar Games', 'Single-player/Multiplayer', 'Physical', 'Internet connection required'),
('Dragons Dogma 2', '2024-03-22', 'N/A', 'Capcom', 'Single-player', 'Physical', 'Internet connection required'),
('F1 2019', '2019-06-28', 'F1 2020', 'Codemasters', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('F1 22', '2022-07-01', 'F1 23', 'EA Sports', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('The Witcher 3: Wild Hunt', '2015-05-19', 'The Witcher IV', 'CD Projekt', 'Single-player', 'Digital', 'Internet connection required'),
('Middle-earth: Shadow of Mordor', '2014-09-30', 'Middle-earth: Shadow of War', 'Warner Bros. Interactive Entertainment', 'Single-player', 'Digital', 'Internet connection required'),
('Middle-earth: Shadow of War', '2017-10-10', 'N/A', 'Warner Bros. Interactive Entertainment', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('Marvels Avengers', '2020-09-04', 'N/A', 'Square Enix', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('Injustice: Gods Among Us', '2013-04-16', 'N/A', 'Warner Bros. Interactive Entertainment', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('NBA 2K20', '2019-09-06', 'NBA 2K21', '2K', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('Uncharted: The Nathan Drake Collection', '2015-10-07', 'Uncharted 4: A Thiefs End', 'Sony Computer Entertainment', 'Single-player', 'Digital', 'Internet connection required'),
('Spider-Man', '2018-09-07', 'Spider-Man: Miles Morales', 'Sony Computer Entertainment', 'Single-player', 'Digital', 'Internet connection required'),
('Need for Speed', '2015-11-05', 'Need for Speed Payback', 'Electronic Arts', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('Need for Speed Payback', '2017-11-10', 'Need for Speed Heat', 'Electronic Arts', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('Need for Speed Rivals', '2013-11-15', 'Need for Speed', 'Electronic Arts', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('Batman: Arkham Asylum', '2009-08-25', 'Batman: Arkham City', 'Warner Bros. Interactive Entertainment', 'Single-player', 'Digital', 'Internet connection required'),
('Batman: Arkham City', '2011-10-18', 'Batman: Arkham City Lockdown', 'Warner Bros. Interactive Entertainment', 'Single-player', 'Digital', 'Internet connection required'),
('Batman: Arkham Knight', '2015-06-23', 'Suicide Squad: Kill the Justice League', 'Warner Bros. Interactive Entertainment', 'Single-player', 'Digital', 'Internet connection required'),
('Cyberpunk 2077', '2020-12-10', 'N/A', 'CD Projekt', 'Single-player', 'Digital', 'Internet connection required'),
('Tomb Raider', '2013-03-05', 'Rise of the Tomb Raider', 'Square Enix', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('Rise of the Tomb Raider', '2015-11-10', 'Shadow of the Tomb Raider', 'Square Enix', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('Shadow of the Tomb Raider', '2018-09-14', 'N/A', 'Square Enix', 'Single-player', 'Digital', 'Internet connection required'),
('Mafia: Definitive Edition', '2020-09-25', 'Mafia II: Definitive Edition', '2K', 'Single-player', 'Digital', 'Internet connection required'),
('Mafia II: Definitive Edition', '2020-09-25', 'Mafia III: Definitive Edition', '2K', 'Single-player', 'Digital', 'Internet connection required'),
('Mafia III: Definitive Edition', '2020-09-25', 'N/A', '2K', 'Single-player', 'Digital', 'Internet connection required'),
('Far Cry 6', '2021-10-07', 'N/A', 'Ubisoft', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('Call of Duty: Black Ops 4', '2018-10-02', 'Call of Duty: Modern Warfare', 'Activision', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('Call of Duty: Modern Warfare', '2019-10-25', 'Call of Duty: Black Ops Cold War', 'Activision', 'Single-player/Multiplayer', 'Digital', 'Internet connection required'),
('Call of Duty: Modern Warfare II', '2022-10-28', 'Call of Duty: Modern Warfare III', 'Activision', 'Single-player/Multiplayer', 'Digital', 'Internet connection required');

ALTER TABLE GameCore.Game
DROP COLUMN Network_feature;

ALTER TABLE GameCore.Game
ADD internet_connection_requierd BIT NOT NULL DEFAULT 1;

ALTER TABLE GameCore.Game
ALTER COLUMN Title VARCHAR(50) NOT NULL;

CREATE TABLE AgeRating.PEGI_age_label ( -- PEGI -> Pan European Game Information
Rating_id int primary key Identity (1,1),
PEGI varchar(10),
[Description] TEXT
);

ALTER TABLE AgeRating.PEGI_age_label
ALTER COLUMN PEGI varchar(10) NOT NULL;

UPDATE GameCore.Game SET rating_id = 1
WHERE game_id IN (32, 35, 36, 42);

UPDATE GameCore.Game SET rating_id = 2
WHERE game_id IN (8, 12);

UPDATE GameCore.Game SET rating_id = 3
WHERE game_id IN (45, 46, 47);

UPDATE GameCore.Game SET rating_id = 4
WHERE game_id IN (2, 4, 7, 26, 27, 28, 40, 41, 43, 44, 48, 49);

UPDATE GameCore.Game SET rating_id = 5
WHERE game_id IN (1, 3, 6, 11, 13, 14,
  15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
  25, 29, 30, 31, 33, 34, 37, 38, 39, 50,
  51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
  61);

UPDATE GameCore.Game SET rating_id = 6
WHERE game_id IN (5, 10, 9);

INSERT INTO AgeRating.PEGI_age_label (PEGI, Description) VALUES
('PEGI 3','The content of games with a PEGI 3 rating is considered suitable for all age groups. 
The game should not contain any sounds or pictures that are likely to frighten young children. 
A very mild form of violence (in a comical context or a childlike setting) is acceptable. No bad language should be heard.');

INSERT INTO AgeRating.PEGI_age_label (PEGI, Description) VALUES
('PEGI 7','Game content with scenes or sounds that can possibly be frightening to younger children should fall in this category. 
Very mild forms of violence (implied, non-detailed, or non-realistic violence) are acceptable for a game with a PEGI 7 rating.');

INSERT INTO AgeRating.PEGI_age_label (PEGI, Description) VALUES
('PEGI 12','Video games that show violence of a slightly more graphic nature towards fantasy characters or non-realistic violence towards human-like characters would fall in this age category. 
Sexual innuendo or sexual posturing can be present, while any bad language in this category must be mild.');

INSERT INTO AgeRating.PEGI_age_label (PEGI, Description) VALUES
('PEGI 16','This rating is applied once the depiction of violence (or sexual activity) reaches a stage that looks the same as would be expected in real life. 
The use of bad language in games with a PEGI 16 rating can be more extreme, while the use of tobacco, alcohol or illegal drugs can also be present.');

INSERT INTO AgeRating.PEGI_age_label (PEGI, Description) VALUES
('PEGI 18','The adult classification is applied when the level of violence reaches a stage where it becomes a depiction of gross violence, apparently motiveless killing, or violence towards defenceless characters. 
The glamorisation of the use of illegal drugs and of the simulation of gambling, and explicit sexual activity should also fall into this age category.');

INSERT INTO AgeRating.PEGI_age_label (PEGI, Description) VALUES
('PEGI !','In addition to the numerical PEGI ratings, you will also see the "Parental Guidance Recommended" rating for some non-game apps, introduced by PEGI for storefronts that use IARC. 
This serves as a warning that these apps can offer a broad variety of user generated or curated content. Typically, this applies to products such as Facebook, Twitter or YouTube.');

ALTER TABLE GameCore.Game
ADD CONSTRAINT FK_rating_id FOREIGN KEY (Rating_id) REFERENCES AgeRating.PEGI_age_label(rating_id);

CREATE TABLE AgeRating.PEGI_content_descriptor(
Content_descriptor_id int primary key Identity (1,1),
PEGI_descriptor varchar(50) NOT NULL,
Descriptor_desc TEXT
);

INSERT INTO AgeRating.PEGI_content_descriptor (PEGI_descriptor, Descriptor_desc) VALUES
('Violence','The game contains depictions of violence. In games rated PEGI 7 this can only be non-realistic or non-detailed violence. 
Games rated PEGI 12 can include violence in a fantasy environment or non-realistic violence towards human-like characters, whereas games rated PEGI 16 or 18 have increasingly more realistic-looking violence.'​);

INSERT INTO AgeRating.PEGI_content_descriptor (PEGI_descriptor, Descriptor_desc) VALUES
('Bad Language','The game contains bad language. 
This descriptor can be found on games with a PEGI 12 (mild swearing), PEGI 16 (e.g. sexual expletives or blasphemy) or PEGI 18 rating (e.g. sexual expletives or blasphemy).'​);

INSERT INTO AgeRating.PEGI_content_descriptor (PEGI_descriptor, Descriptor_desc) VALUES
('Fear / Horror','This descriptor may appear as "Fear" on games with a PEGI 7 if it contains pictures or sounds that may be frightening or scary to young children, 
or as "Horror" on higher-rated games that contain moderate (PEGI 12) or intense and sustained (PEGI 16) horror sequences or disturbing images (not necessarily including violent content).'​);

INSERT INTO AgeRating.PEGI_content_descriptor (PEGI_descriptor, Descriptor_desc) VALUES
('Gambling','The game contains elements that encourage or teach gambling. These simulations of gambling refer to games of chance that are normally carried out in casinos or gambling halls. 
Some older titles can be found with PEGI 12 or PEGI 16, but PEGI changed the criteria for this classification in 2020, which made that new games with this sort of content are always PEGI 18.'​);

INSERT INTO AgeRating.PEGI_content_descriptor (PEGI_descriptor, Descriptor_desc) VALUES
('Sex','This content descriptor can accompany a PEGI 12 rating if the game includes sexual posturing or innuendo, 
a PEGI 16 rating if there is erotic nudity or sexual intercourse without visible genitals or a PEGI 18 rating if there is explicit sexual activity in the game. 
Depictions of nudity in a non-sexual context do not require a specific age rating, and this descriptor would not be necessary.'​);

INSERT INTO AgeRating.PEGI_content_descriptor (PEGI_descriptor, Descriptor_desc) VALUES
('Drugs','The game refers to or depicts the use of illegal drugs, alcohol or tobacco. Games with this content descriptor are always PEGI 16 or PEGI 18.'​);

INSERT INTO AgeRating.PEGI_content_descriptor (PEGI_descriptor, Descriptor_desc) VALUES
('Discrimination','The game contains depictions of ethnic, religious, nationalistic or other stereotypes likely to encourage hatred. 
This content is always restricted to a PEGI 18 rating (and likely to infringe national criminal laws).'​);

INSERT INTO AgeRating.PEGI_content_descriptor (PEGI_descriptor, Descriptor_desc) VALUES
('In-Game Purchases','The game offers players the option to purchase digital goods or services with real-world currency. 
Such purchases include additional content (bonus levels, outfits, surprise items, music), but also upgrades (e.g. to disable ads), subscriptions to updates, virtual coins and other forms of in-game currency.'​);

INSERT INTO AgeRating.PEGI_content_descriptor (PEGI_descriptor, Descriptor_desc) VALUES
('Paid Random Items','This content descriptor is sometimes accompanied by an additional notice if the in-game purchases include random items (like loot boxes or card packs). 
Paid random items comprise all in-game offers where players don"t know exactly what they are getting prior to the purchase. 
They can be purchased directly with real money and/or exchanged for an in-game virtual currency. Depending on the game, these items may be purely cosmetic or they may have functional value.'​);

CREATE TABLE Reference.Platform (
Platforms_id int primary key identity(1,1),
Platform_name varchar(25) NOT NULL
);

INSERT INTO Reference.Platform (Platform_name) VALUES
('PC'),
('Playstation 4'),
('Playstation 5'),
('XBOX S'),
('XBOX X'),
('Nintendo'),
('Mobile');



CREATE TABLE Reference.Language (
Language_id int primary key identity(1,1),
Language_name varchar(10) NOT NULL
);


INSERT INTO Reference.Language (language_name) VALUES
('English');

INSERT INTO Reference.Language (language_name) VALUES
('Spanish');

INSERT INTO Reference.Language (language_name) VALUES
('Italian');

INSERT INTO Reference.Language (language_name) VALUES
('German');

INSERT INTO Reference.Language (language_name) VALUES
('French');

INSERT INTO Reference.Language(language_name) VALUES
('Chinese');

INSERT INTO Reference.Language(language_name) VALUES
('Japanese');

INSERT INTO Reference.Language(language_name) VALUES
('Korean');

INSERT INTO Reference.Language(language_name) VALUES
('Polish');

INSERT INTO Reference.Language(language_name) VALUES
('Portugues');

CREATE TABLE GameCore.Game_PEGIcontent_desc (
Game_id INT NOT NULL,
Content_descriptor_id INT NOT NULL,
CONSTRAINT PK_Game_PEGIcontent_desc PRIMARY KEY (game_id, content_descriptor_id),
CONSTRAINT FK_Game_PEGIcontent_desc_Game FOREIGN KEY (game_id) REFERENCES GameCore.Game(game_id),
CONSTRAINT FK_Game_PEGIcontent_desc_Descriptor FOREIGN KEY (content_descriptor_id) REFERENCES AgeRating.PEGI_content_descriptor(content_descriptor_id)
);


-- Violence (1)
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (1, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (2, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (3, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (4, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (5, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (7, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (8, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (11, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (12, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (13, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (14, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (15, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (16, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (17, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (18, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (19, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (20, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (21, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (22, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (23, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (24, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (25, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (26, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (27, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (28, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (29, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (30, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (31, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (33, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (34, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (37, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (38, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (39, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (40, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (41, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (43, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (44, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (48, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (49, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (50, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (51, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (52, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (53, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (54, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (55, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (56, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (57, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (58, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (59, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (60, 1);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (61, 1);

-- Bad Language (2)
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (7, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (8, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (11, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (12, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (13, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (14, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (15, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (16, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (17, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (18, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (19, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (20, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (21, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (22, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (23, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (24, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (25, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (26, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (27, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (28, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (29, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (30, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (31, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (33, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (34, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (37, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (38, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (39, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (40, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (41, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (43, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (44, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (48, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (49, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (50, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (51, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (52, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (53, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (54, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (55, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (56, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (57, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (58, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (59, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (60, 2);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (61, 2);

-- Fear (4)
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (48, 4);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (49, 4);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (50, 4);

-- Sex (5)
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (7, 5);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (8, 5);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (11, 5);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (29, 5);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (37, 5);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (51, 5);

-- Drugs (6)
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (33, 6);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (57, 6);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (58, 6);

-- In-Game Purchases (8)
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (6, 8);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (9, 8);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (35, 8);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (36, 8);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (45, 8);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (46, 8);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (47, 8);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (58, 8);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (59, 8);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (60, 8);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (61, 8);

-- Paid Random Items (9)
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (10, 9);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (32, 9);
INSERT INTO GameCore.Game_PEGIcontent_desc (game_id, content_descriptor_id) VALUES (42, 9);

EXEC sp_rename 'reference.platform.platforms_id', 'platform_id' -- rename column - consistency in naming a column was not respected
EXEC sp_rename 'reference.platform.platform_id', 'Platform_id'

CREATE TABLE GameCore.Game_platform (
Game_id INT  NOT NULL,
Platform_id INT NOT NULL,
CONSTRAINT PK_Game_platform PRIMARY KEY (game_id, platform_id),
CONSTRAINT FK_Game_platform_GameID FOREIGN KEY (game_id) REFERENCES GameCore.Game(game_id),
CONSTRAINT FK_Game_platform_PlatformID FOREIGN KEY (platform_id) REFERENCES Reference.Platform(platform_id)
);


-- Black Myth: Wukong
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (1, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (1, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (1, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (1, 5);

-- Horizon Zero Dawn
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (2, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (2, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (2, 3);

-- Rise of the Ronin
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (3, 3);

-- Star Wars Jedi: Fallen Order
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (4, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (4, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (4, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (4, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (4, 5);

-- Star Wars Jedi: Survivor
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (5, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (5, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (5, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (5, 5);

-- Assetto Corsa Competizione
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (6, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (6, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (6, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (6, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (6, 5);

-- God of War (2018) (game_id = 7): PC, PS4, PS5
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (7, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (7, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (7, 3);

-- God of War Ragnarök (game_id = 8): PS4, PS5
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (8, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (8, 3);

-- Need for Speed Heat
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (9, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (9, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (9, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (9, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (9, 5);

-- FC 24
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (10, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (10, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (10, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (10, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (10, 5);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (10, 6);

-- Mortal Kombat 1
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (11, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (11, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (11, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (11, 5);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (11, 6);

-- Tom Clancy’s Ghost Recon Wildlands
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (12, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (12, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (12, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (12, 5);

-- Assassin’s Creed II
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (13, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (13, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (13, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (13, 5);

-- Assassin’s Creed: Brotherhood
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (14, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (14, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (14, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (14, 5);

-- Assassin’s Creed: Revelations
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (15, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (15, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (15, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (15, 5);

-- Assassin’s Creed III
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (16, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (16, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (16, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (16, 5);

-- Assassin’s Creed III: Liberation
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (17, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (17, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (17, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (17, 5);

-- Assassin’s Creed IV: Black Flag
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (18, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (18, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (18, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (18, 5);

-- Assassin’s Creed Rogue
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (19, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (19, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (19, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (19, 5);

-- Assassin’s Creed Unity
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (20, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (20, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (20, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (20, 5);

-- Assassin’s Creed Syndicate
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (21, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (21, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (21, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (21, 5);

-- Assassin’s Creed Origins
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (22, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (22, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (22, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (22, 5);

-- Assassin’s Creed Odyssey
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (23, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (23, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (23, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (23, 5);

-- Assassin’s Creed Valhalla
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (24, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (24, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (24, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (24, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (24, 5);

-- Assassin’s Creed Mirage
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (25, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (25, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (25, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (25, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (25, 5);

-- Darksiders: Warmastered Edition
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (26, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (26, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (26, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (26, 5);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (26, 6);

-- Darksiders II
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (27, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (27, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (27, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (27, 5);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (27, 6);

-- Darksiders Genesis
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (28, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (28, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (28, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (28, 5);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (28, 6);

-- Mortal Kombat 11
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (29, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (29, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (29, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (29, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (29, 5);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (29, 6);

-- Hitman: Definitive Edition
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (30, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (30, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (30, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (30, 5);

-- Hitman 2
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (31, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (31, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (31, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (31, 5);

-- FIFA 23
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (32, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (32, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (32, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (32, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (32, 5);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (32, 6);

-- Red Dead Redemption 2
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (33, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (33, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (33, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (33, 5);

-- Dragon’s Dogma 2
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (34, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (34, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (34, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (34, 5);

-- F1 2019
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (35, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (35, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (35, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (35, 5);

-- F1 22
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (36, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (36, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (36, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (36, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (36, 5);

-- The Witcher 3: Wild Hunt
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (37, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (37, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (37, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (37, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (37, 5);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (37, 6);

-- Middle-earth: Shadow of Mordor
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (38, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (38, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (38, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (38, 5);

-- Middle-earth: Shadow of War
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (39, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (39, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (39, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (39, 5);

-- Marvel’s Avengers
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (40, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (40, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (40, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (40, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (40, 5);

-- Injustice: Gods Among Us
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (41, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (41, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (41, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (41, 5);

-- NBA 2K20
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (42, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (42, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (42, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (42, 5);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (42, 6);

-- Uncharted: The Nathan Drake Collection
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (43, 2);

-- Spider-Man
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (44, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (44, 3);

-- Need for Speed
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (45, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (45, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (45, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (45, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (45, 5);

-- Need for Speed Payback
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (46, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (46, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (46, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (46, 5);

-- Need for Speed Rivals
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (47, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (47, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (47, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (47, 5);

-- Batman: Arkham Asylum
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (48, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (48, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (48, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (48, 5);

-- Batman: Arkham City
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (49, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (49, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (49, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (49, 5);

-- Batman: Arkham Knight
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (50, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (50, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (50, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (50, 5);

-- Cyberpunk 2077
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (51, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (51, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (51, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (51, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (51, 5);

-- Tomb Raider
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (52, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (52, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (52, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (52, 5);

-- Rise of the Tomb Raider
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (53, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (53, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (53, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (53, 5);

-- Shadow of the Tomb Raider
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (54, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (54, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (54, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (54, 5);

-- Mafia: Definitive Edition
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (55, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (55, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (55, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (55, 5);

-- Mafia II: Definitive Edition
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (56, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (56, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (56, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (56, 5);

-- Mafia III: Definitive Edition
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (57, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (57, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (57, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (57, 5);

-- Far Cry 6
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (58, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (58, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (58, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (58, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (58, 5);

-- Call of Duty: Black Ops 4
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (59, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (59, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (59, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (59, 5);

-- Call of Duty: Modern Warfare
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (60, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (60, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (60, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (60, 5);

-- Call of Duty: Modern Warfare II
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (61, 1);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (61, 2);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (61, 3);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (61, 4);
INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES (61, 5);


CREATE TABLE GameCore.Game_language(
Game_id INT NOT NULL,
Language_id INT NOT NULL,
CONSTRAINT PK_Game_language PRIMARY KEY (game_id, language_id),
CONSTRAINT FK_Game_language_gameID  FOREIGN KEY (game_id) REFERENCES GameCore.Game(game_id),
CONSTRAINT FK_Game_language_languageID FOREIGN KEY (language_id) REFERENCES Reference.Language(language_id)
);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (1, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (1, 6);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (1, 7);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (2, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (2, 2);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (2, 3);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (2, 4);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (2, 5);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (3, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (3, 7);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (4, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (4, 2);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (4, 4);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (4, 5);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (4, 10);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (5, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (5, 2);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (5, 4);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (5, 5);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (5, 10);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (6, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (6, 3);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (6, 4);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (7, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (7, 2);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (7, 10);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (8, 2);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (8, 3);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (9, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (9, 2);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (9, 5);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (9, 6);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (10, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (10, 2);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (10, 5);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (10, 6);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (10, 10);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (11, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (11, 2);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (11, 3);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (11, 4);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (11, 10);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (12, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (12, 2);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (12, 5);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (13, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (13, 4);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (13, 5);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (14, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (14, 2);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (14, 4);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (15, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (15, 2);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (15, 10);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (16, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (16, 2);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (16, 4);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (16, 6);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (17, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (17, 2);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (17, 4);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (17, 6);

INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (18, 1);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (18, 2);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (18, 4);
INSERT INTO GameCore.Game_language (game_id, language_id) VALUES (18, 6);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (19, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (19, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (19, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (19, 6);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (20, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (20, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (20, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (20, 6);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (21, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (21, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (21, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (21, 6);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (22, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (22, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (22, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (22, 6);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (23, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (23, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (23, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (23, 6);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (24, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (24, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (24, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (24, 5);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (24, 6);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (25, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (25, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (25, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (25, 5);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (25, 6);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (26, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (26, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (26, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (27, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (27, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (27, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (28, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (28, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (28, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (29, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (29, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (29, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (29, 10);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (30, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (30, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (30, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (31, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (31, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (31, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (32, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (32, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (32, 3);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (32, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (32, 5);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (32, 10);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (33, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (33, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (33, 5);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (33, 10);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (34, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (34, 7);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (35, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (35, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (35, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (36, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (36, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (36, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (37, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (37, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (37, 5);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (37, 9);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (38, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (38, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (38, 4);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (39, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (39, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (39, 4);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (40, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (40, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (40, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (41, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (41, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (41, 4);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (42, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (42, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (42, 5);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (42, 10);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (43, 1);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (44, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (44, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (44, 10);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (45, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (45, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (45, 10);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (46, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (46, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (46, 10);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (47, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (47, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (47, 10);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (48, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (48, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (48, 4);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (49, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (49, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (49, 4);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (50, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (50, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (50, 4);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (51, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (51, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (51, 9);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (51, 10);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (52, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (52, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (52, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (52, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (53, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (53, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (53, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (53, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (54, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (54, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (54, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (54, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (55, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (55, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (55, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (55, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (56, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (56, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (56, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (56, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (57, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (57, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (57, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (57, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (58, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (58, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (58, 10);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (59, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (59, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (59, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (59, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (60, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (60, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (60, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (60, 5);

INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (61, 1);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (61, 2);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (61, 4);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (61, 5);
INSERT INTO GameCore.Game_language(game_id, language_id) VALUES (61, 10);

ALTER TABLE GameCore.Game
DROP COLUMN Publisher

CREATE TABLE Reference.Publisher (
Publisher_id INT IDENTITY (1,1)
CONSTRAINT PK_publisher_id PRIMARY KEY (publisher_id),
Publisher_name VARCHAR(100) NOT NULL
);

INSERT INTO Reference.Publisher (publisher_name) VALUES -- separate table for publisher details to be add (country, address, etc.)
('2K'),
('505 Games'),
('Activision'),
('Capcom'),
('CD Projekt'),
('Codemasters'),
('EA Sports'),
('Electronic Arts'),
('Game Science'),
('Rockstar Games'),
('Sony Computer Entertainment'),
('Sony Interactive Entertainment'),
('Square Enix'),
('THQ Nordic'),
('Ubisoft'),
('Warner Bros. Games'),
('Warner Bros. Interactive Entertainment');

ALTER TABLE GameCore.Game
ADD Publisher_id INT;

ALTER TABLE GameCore.Game
ADD CONSTRAINT FK_Game_Publisher
FOREIGN KEY (publisher_id) REFERENCES Reference.Publisher(publisher_id);

SELECT * FROM GameCore.Game

UPDATE GameCore.Game
SET publisher_id = 9
WHERE game_id = 1;

UPDATE GameCore.Game
SET publisher_id = 12
WHERE game_id = 2;

UPDATE GameCore.Game
SET publisher_id = 12
WHERE game_id = 3;

UPDATE GameCore.Game
SET publisher_id = 8
WHERE game_id = 4;

UPDATE GameCore.Game
SET publisher_id = 8
WHERE game_id = 5;

UPDATE GameCore.Game
SET publisher_id = 2
WHERE game_id = 6;

UPDATE GameCore.Game
SET publisher_id = 12
WHERE game_id = 7;

UPDATE GameCore.Game
SET publisher_id = 12
WHERE game_id = 8;

UPDATE GameCore.Game
SET publisher_id = 8
WHERE game_id = 9;

UPDATE GameCore.Game
SET publisher_id = 8
WHERE game_id = 10;

UPDATE GameCore.Game
SET publisher_id = 16
WHERE game_id = 11;

UPDATE GameCore.Game
SET publisher_id = 15
WHERE game_id = 12;

UPDATE GameCore.Game
SET publisher_id = 15
WHERE game_id = 13;

UPDATE GameCore.Game
SET publisher_id = 15
WHERE game_id = 14;

UPDATE GameCore.Game
SET publisher_id = 15
WHERE game_id = 15;

UPDATE GameCore.Game
SET publisher_id = 15
WHERE game_id = 16;

UPDATE GameCore.Game
SET publisher_id = 15
WHERE game_id = 17;

UPDATE GameCore.Game
SET publisher_id = 15
WHERE game_id = 18;

UPDATE GameCore.Game
SET publisher_id = 15
WHERE game_id = 19;

UPDATE GameCore.Game
SET publisher_id = 15
WHERE game_id = 20;

UPDATE GameCore.Game
SET publisher_id = 15
WHERE game_id = 21;

UPDATE GameCore.Game
SET publisher_id = 15
WHERE game_id = 22;

UPDATE GameCore.Game
SET publisher_id = 15
WHERE game_id = 23;

UPDATE GameCore.Game
SET publisher_id = 15
WHERE game_id = 24;

UPDATE GameCore.Game
SET publisher_id = 15
WHERE game_id = 25;

UPDATE GameCore.Game
SET publisher_id = 14
WHERE game_id = 26;

UPDATE GameCore.Game
SET publisher_id = 14
WHERE game_id = 27;

UPDATE GameCore.Game
SET publisher_id = 14
WHERE game_id = 28;

UPDATE GameCore.Game
SET publisher_id = 16
WHERE game_id = 29;

UPDATE GameCore.Game
SET publisher_id = 13
WHERE game_id = 30;

UPDATE GameCore.Game
SET publisher_id = 17
WHERE game_id = 31;

UPDATE GameCore.Game
SET publisher_id = 8
WHERE game_id = 32;

UPDATE GameCore.Game
SET publisher_id = 10
WHERE game_id = 33;

UPDATE GameCore.Game
SET publisher_id = 4
WHERE game_id = 34;

UPDATE GameCore.Game
SET publisher_id = 6
WHERE game_id = 35;

UPDATE GameCore.Game
SET publisher_id = 7
WHERE game_id = 36;

UPDATE GameCore.Game
SET publisher_id = 5
WHERE game_id = 37;

UPDATE GameCore.Game
SET publisher_id = 17
WHERE game_id = 38;

UPDATE GameCore.Game
SET publisher_id = 17
WHERE game_id = 39;

UPDATE GameCore.Game
SET publisher_id = 13
WHERE game_id = 40;

UPDATE GameCore.Game
SET publisher_id = 17
WHERE game_id = 41;

UPDATE GameCore.Game
SET publisher_id = 1
WHERE game_id = 42;

UPDATE GameCore.Game
SET publisher_id = 11
WHERE game_id = 43;

UPDATE GameCore.Game
SET publisher_id = 11
WHERE game_id = 44;

UPDATE GameCore.Game
SET publisher_id = 8
WHERE game_id = 45;

UPDATE GameCore.Game
SET publisher_id = 8
WHERE game_id = 46;

UPDATE GameCore.Game
SET publisher_id = 8
WHERE game_id = 47;

UPDATE GameCore.Game
SET publisher_id = 17
WHERE game_id = 48;

UPDATE GameCore.Game
SET publisher_id = 17
WHERE game_id = 49;

UPDATE GameCore.Game
SET publisher_id = 17
WHERE game_id = 50;

UPDATE GameCore.Game
SET publisher_id = 5
WHERE game_id = 51;

UPDATE GameCore.Game
SET publisher_id = 13
WHERE game_id = 52;

UPDATE GameCore.Game
SET publisher_id = 13
WHERE game_id = 53;

UPDATE GameCore.Game
SET publisher_id = 13
WHERE game_id = 54;

UPDATE GameCore.Game
SET publisher_id = 1
WHERE game_id = 55;

UPDATE GameCore.Game
SET publisher_id = 1
WHERE game_id = 56;

UPDATE GameCore.Game
SET publisher_id = 1
WHERE game_id = 57;

UPDATE GameCore.Game
SET publisher_id = 15
WHERE game_id = 58;

UPDATE GameCore.Game
SET publisher_id = 3
WHERE game_id = 59;

UPDATE GameCore.Game
SET publisher_id = 3
WHERE game_id = 60;

UPDATE GameCore.Game
SET publisher_id = 3
WHERE game_id = 61;

ALTER TABLE GameCore.Game
ADD Is_played BIT NOT NULL DEFAULT 0, -- 0=not finished, 1=finished
	Is_wishlisted BIT NOT NULL DEFAULT 0; -- 0=owned, 1=wishlisted

ALTER TABLE GameCore.Game
ADD CONSTRAINT CK_Game_WishlistPlayed
CHECK (
  CAST(is_wishlisted AS TINYINT) + CAST(is_played AS TINYINT) <= 1); -- avoidance logic to wishlist a game played

UPDATE GameCore.Game
SET is_played = 1
WHERE game_id IN (4, 5, 7, 8, 10, 11, 13, 14, 22, 29, 32, 33, 35, 36, 40, 44, 51, 52, 55, 59, 60, 61);

EXEC sp_rename 'gamecore.game.internet_connection_requierd', 'Internet_connection_required'; -- rename column

INSERT INTO Reference.Publisher VALUES ('Victura');

SELECT * FROM GameCore.Game

INSERT INTO GameCore.Game (Title, Relese_year, Next_game, Game_mode, Game_support, Internet_connection_required, Rating_id, Publisher_id, Is_played, Is_wishlisted ) VALUES
('Six Days in Fallujah', '2023-06-22', 'N/A', 'Single-player', 'Digital', '5', '1', '18','0', '1');


INSERT INTO Reference.Publisher VALUES 
('Bethesda Softworks'),
('Team17'),
('Motion Blur');

INSERT INTO GameCore.Game (Title, Relese_year, Next_game, Game_mode, Game_support, Internet_connection_required, Rating_id, Publisher_id, Is_played, Is_wishlisted ) VALUES
('Starfield', '2023-09-06', 'N/A', 'Single-player', 'Digital', '5', '1', '19','0', '1'),
('Hell Let Loose', '2021-10-05', 'N/A', 'Multiplayer', 'Digital', '5', '1', '20','0', '1'),
('Black State', '2025-11-15', 'N/A', 'Multiplayer', 'Digital', '5', '1', '21','0', '1'),
('Star Wars Outlaws', '2024-08-30', 'N/A', 'Single-player', 'Digital', '3', '1', '15','0', '1');


INSERT INTO GameCore.Game_platform (game_id, platform_id) VALUES 
(62, 1),
(63, 1),
(63, 4),
(63, 5),
(64, 1),
(64, 3),
(64, 4),
(64, 5),
(65, 1),
(66, 1),
(66, 3),
(66, 4),
(66, 5);


INSERT INTO GameCore.Game_language(game_id, language_id) VALUES 
(62, 1),
(62, 2),
(62, 3),
(62, 4),
(63, 1),
(63, 4),
(63, 5),
(64, 1),
(64, 3),
(64, 4),
(64, 5),
(65, 1),
(66, 1),
(66, 3),
(66, 4),
(66, 5),
(66, 9),
(66, 10);


INSERT INTO GameCore.Game_PEGIcontent_desc(game_id, content_descriptor_id) VALUES 
(62, 1),
(63, 1),
(63, 2),
(64, 1),
(64, 8),
(65, 1),
(66, 1),
(66, 2),
(66, 8);

CREATE TABLE Reference.Genre (
Genre_id INT PRIMARY KEY IDENTITY (1,1),
Genre_name VARCHAR(100) NOT NULL,
Parent_genre_id INT NULL,
FOREIGN KEY (parent_genre_id) REFERENCES Reference.Genre(genre_id)
);

SELECT * FROM Reference.Genre

INSERT INTO Reference.Genre (genre_name, parent_genre_id) VALUES
('Action', NULL),
('Adventure', NULL),
('Role-Playing Game (RPG)', NULL),
('Shooter', NULL),
('Strategy', NULL),
('Simulation', NULL),
('Sports', NULL),
('Puzzle', NULL),
('Racing', NULL);

ALTER TABLE Reference.Genre
DROP CONSTRAINT [FK__Genre__Parent_ge__60A75C0F]

UPDATE Reference.Genre SET parent_genre_id = 0
WHERE parent_genre_id IS NULL

ALTER TABLE Reference.Genre
ALTER COLUMN parent_genre_id INT NOT NULL;

SET IDENTITY_INSERT Reference.Genre ON -- to allow adding a value to the identity column 

INSERT INTO Reference.Genre (genre_id, genre_name, parent_genre_id) -- record added so that the table allows NOT NULL values ​​for parent_genre_id and Self-Referencing FK can be set
VALUES (0, 'Root Genre', 0);

SET IDENTITY_INSERT Reference.Genre OFF

ALTER TABLE Reference.Genre
ADD CONSTRAINT FK_parent_genre_id FOREIGN KEY (parent_genre_id) REFERENCES Reference.Genre(genre_id);

ALTER TABLE Reference.Genre
ADD CONSTRAINT DF_parent_genre_id DEFAULT 0 FOR parent_genre_id;


INSERT INTO Reference.Genre (genre_name, parent_genre_id) VALUES
('Platformer', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Action')),
('Beat \em Up', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Action')),
('Stealth', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Action')),
('Survival', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Action')),
('Hack and Slash', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Action')),
('Metroidvania', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Action'));

INSERT INTO Reference.Genre (genre_name, parent_genre_id) VALUES
('Interactive Story', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Adventure')),
('Point and Click', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Adventure')),
('Visual Novel', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Adventure')),
('Walking Simulator', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Adventure'));

INSERT INTO Reference.Genre (genre_name, parent_genre_id) VALUES
('Action RPG', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Role-Playing Game (RPG)')),
('MMORPG', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Role-Playing Game (RPG)')),
('Tactical RPG', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Role-Playing Game (RPG)')),
('Roguelike', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Role-Playing Game (RPG)')),
('Dungeon Crawler', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Role-Playing Game (RPG)')),
('Open World RPG', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Role-Playing Game (RPG)'));

INSERT INTO Reference.Genre (genre_name, parent_genre_id) VALUES
('First-Person Shooter (FPS)', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Shooter')),
('Third-Person Shooter (TPS)', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Shooter')),
('Bullet Hell', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Shooter')),
('Battle Royale', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Shooter'));

INSERT INTO Reference.Genre (genre_name, parent_genre_id) VALUES
('Real-Time Strategy (RTS)', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Strategy')),
('Turn-Based Strategy (TBS)', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Strategy')),
('Tower Defense', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Strategy')),
('Grand Strategy', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Strategy'));

INSERT INTO Reference.Genre (genre_name, parent_genre_id) VALUES
('Life Simulation', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Simulation')),
('Construction and Management Simulation', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Simulation')),
('Vehicle Simulation', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Simulation')),
('Farming Simulation', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Simulation'));

INSERT INTO Reference.Genre (genre_name, parent_genre_id) VALUES
('Football/Soccer', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Sports')),
('Basketball', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Sports')),
('Tennis', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Sports')),
('Golf', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Sports')),
('Esports', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Sports'));

INSERT INTO Reference.Genre (genre_name, parent_genre_id) VALUES
('Logic Puzzle', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Puzzle')),
('Matching Puzzle', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Puzzle')),
('Physics-Based Puzzle', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Puzzle')),
('Hidden Object Puzzle', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Puzzle'));

INSERT INTO Reference.Genre (genre_name, parent_genre_id) VALUES
('Arcade Racing', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Racing')),
('Simulation Racing', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Racing')),
('Kart Racing', (SELECT genre_id FROM Reference.Genre WHERE genre_name = 'Racing'));

SELECT * FROM GameCore.Game
SELECT * FROM Reference.Genre

CREATE TABLE GameCore.Game_genre (
Game_id INT NOT NULL,
Genre_id INT NOT NULL,
CONSTRAINT PK_Game_genre PRIMARY KEY (game_id, genre_id),
CONSTRAINT FK_Game_genre_gameID FOREIGN KEY (game_id) REFERENCES GameCore.Game(game_id),
CONSTRAINT FK_Game_genre_genreID FOREIGN KEY (genre_id) REFERENCES Reference.Genre(genre_id)
);

INSERT INTO GameCore.Game_Genre (game_id, genre_id) VALUES
(1, 20), (2, 20), (3, 20), (4, 29), (4, 20), (5, 29), (5, 20), (6, 49), (7, 20), (7, 12),
(8, 20), (8, 12), (9, 47), (10, 38), (11, 11), (12, 29), (13, 12), (14, 12), (15, 12),
(16, 25), (16, 12), (17, 25), (17, 12), (18, 25), (18, 12), (19, 25), (19, 12), (20, 25),
(20, 12), (21, 25), (21, 12), (22, 25), (22, 12), (23, 25), (23, 12), (24, 25), (24, 12),
(25, 12), (26, 20), (27, 20), (28, 20), (29, 11), (30, 12), (31, 12), (32, 38), (33, 25),
(33, 20), (34, 20), (35, 49), (36, 49), (37, 20), (38, 20), (39, 20), (40, 29), (41, 11),
(42, 39), (43, 29), (44, 20), (45, 47), (46, 47), (47, 47), (48, 20), (48, 12), (49, 20),
(49, 12), (50, 20), (50, 12), (51, 25), (52, 20), (52, 12), (53, 20), (53, 12), (54, 20),
(54, 12), (55, 25), (56, 25), (57, 25), (58, 28), (58, 25), (59, 28), (60, 28), (61, 28),
(62, 28), (63, 28), (64, 28), (65, 28), (66, 29);

CREATE TABLE Reference.Game_mode (
Game_mode_id INT PRIMARY KEY IDENTITY (1,1),
Game_mode VARCHAR(50) NOT NULL UNIQUE,
[Description] TEXT                             
);


INSERT INTO Reference.Game_mode (game_mode, description)
VALUES
    ('Single-player', 'A mode where one player controls the game independently.'),
    ('Multiplayer', 'A mode where multiple players can interact and compete.'),
    ('Co-op', 'Players team up to achieve common goals or complete missions together.'),
    ('Battle Royale', 'A survival mode where players compete to be the last person or team standing.'),
    ('Sandbox', 'Allows free exploration and creativity without specific objectives.'),
    ('Story Mode', 'Follows a narrative with missions or levels.'),
    ('Survival', 'Players aim to endure as long as possible against challenges.'),
    ('Puzzle', 'Focuses on solving logic-based puzzles or tasks.'),
    ('Ranked', 'Competitive gameplay where players earn rankings based on performance.'),
    ('Unranked', 'Casual gameplay without performance-based rankings.'),
    ('Creative Mode', 'Allows players to build and create freely within the game.'),
    ('Time Attack', 'Complete objectives within a time limit.'),
    ('Speedrun', 'Finish the game or levels as quickly as possible.'),
    ('Asymmetrical', 'Players take on different roles with varied abilities or objectives.'),
    ('MOBA', 'Multiplayer online battle arena games focusing on team-based strategy.'),
    ('Tournament', 'Structured competitive mode with brackets or elimination rounds.'),
    ('Photo Mode', 'Enables players to take in-game screenshots with creative controls.'),
    ('Practice', 'A mode designed to practice skills with no consequences for failure.'),
    ('Hardcore', 'A mode with high difficulty and often permadeath.'),
    ('Tutorial', 'An introductory mode to teach gameplay mechanics.'),
    ('Raids', 'Large, cooperative missions designed for multiple players.'),
    ('Guild Play', 'Team-based activities within a persistent online environment.'),
    ('Party Play', 'Quick, fun, and social gameplay suitable for groups.'),
    ('Spectator Mode', 'Allows users to watch games without participating.'),
    ('VR Immersive', 'Interactive virtual reality gameplay for a fully immersive experience.'),
    ('Local Multiplayer', 'Players share the same screen or play via split-screen.'),
    ('Online Multiplayer', 'Players connect and compete over the internet.'),
    ('Persistent World', 'Players interact in a shared, ongoing online environment.'),
    ('Tower Defense', 'Protect a base or area from waves of enemies.'),
    ('Free-for-All', 'Every player competes individually without teams.'),
    ('Team vs. Team', 'Two or more teams compete against each other.'),
    ('Esports Mode', 'Professional-level gameplay tailored for tournaments.'),
    ('Mixed Reality Multiplayer', 'Combines VR and real-world elements for social play.');


CREATE TABLE GameCore.Game_game_mode (
Game_id INT,
Game_mode_id INT,
PRIMARY KEY (game_id, game_mode_id),
FOREIGN KEY (game_id) REFERENCES  GameCore.Game(game_id),
FOREIGN KEY (game_mode_id) REFERENCES Reference.Game_mode(game_mode_id)
);

INSERT INTO GameCore.Game_game_mode (game_id, game_mode_id)
VALUES
    (1, 1), (2, 1), (3, 1), (3, 2), (4, 1), (5, 1), (6, 2), 
	(6, 26), (6, 27), (7, 1), (7, 6), (8, 1), (8, 6), (9, 2), 
	(9, 26), (9, 27), (10, 2), (10, 9), (10, 10), (10, 31), 
    (11, 2), (11, 26), (12, 1), (12, 3), (12, 27), (13, 1), 
	(14, 1), (15, 1), (16, 1), (17, 1), (18, 1), (19, 1), 
	(20, 1), (21, 1), (22, 1), (23, 1), (24, 1), (25, 1), 
    (26, 1), (27, 1), (28, 3), (28, 2), (29, 2), (29, 26), 
    (30, 1), (31, 1), (32, 2), (32, 9), (32, 10), (32, 31), 
    (33, 1), (33, 27), (33, 28), (34, 1), (35, 2), (35, 9), 
	(35, 10), (36, 2), (36, 9), (36, 10), (37, 1), (38, 1), 
	(39, 1), (40, 2), (40, 3), (40, 27), (41, 2), (41, 26), 
	(42, 2), (42, 9), (42, 10), (42, 31), (43, 1), (44, 1), 
	(45, 2), (45, 27), (46, 2), (46, 27), (47, 2), (47, 27), 
    (48, 1), (49, 1), (50, 1), (51, 1), (52, 1), (53, 1), (54, 1), 
    (55, 1), (56, 1), (57, 1), (58, 1), (58, 3), (59, 2), (59, 4), 
	(60, 2), (61, 2), (62, 1), (62, 3), (63, 1), (64, 2), (64, 27), 
	(65, 1), (66, 1);

CREATE LOGIN GamesLibraryAdmin WITH PASSWORD = 'StrongPassword123!'; -- Create a SQL Server Login -> It will be required a password change after first login

CREATE USER GameUserAdmin FOR LOGIN GamesLibraryAdmin; --  Create a User in the Database

GRANT INSERT, UPDATE, DELETE, SELECT ON SCHEMA:: GameCore TO GameUserAdmin; -- Grant Permissions on All Schemas 
GRANT INSERT, UPDATE, DELETE, SELECT ON SCHEMA:: AgeRating TO GameUserAdmin; -- Used '::' to explicitly reference a schema when granting permissions
GRANT INSERT, UPDATE, DELETE, SELECT ON SCHEMA:: Reference TO GameUserAdmin;

CREATE TABLE Audit_Logging (
    Change_id INT IDENTITY PRIMARY KEY,
    Game_id INT NOT NULL,
    Changed_by NVARCHAR(255),
    Change_timestamp DATETIME DEFAULT GETDATE(),
    Old_value NVARCHAR(MAX),
    New_value NVARCHAR(MAX),
    Change_type NVARCHAR(50) CHECK (change_type IN ('INSERT', 'UPDATE', 'DELETE'))
);

/*ALTER TABLE Audit_Logging
ADD CONSTRAINT FK_GameChanges_Game
FOREIGN KEY (game_id) 
REFERENCES GameCore.Game (game_id)
ON DELETE CASCADE  -- Optional: Deletes audit logs if a game is deleted
ON UPDATE CASCADE; -- Optional: Updates audit logs if game_id changes*/  --> Optional: this statement sets a FK on game_id if we want to ensure referential integrity

CREATE NONCLUSTERED INDEX IX_GameChanges_GameID_Timestamp --  Composite Index (game_id, change_timestamp) for queries that will involve timestamps
ON Audit_Logging (game_id, change_timestamp);

EXEC sp_rename 'gamecore.game.relese_year', 'Release_year'; -- Rename column

GO

CREATE TRIGGER Trg_Game_Changes -- Trigger for logging changes in the GameCore.Game table
ON GameCore.Game
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- INSERTED Table: Holds new data for INSERT/UPDATE -- System-generated virtual tables 
    -- DELETED Table: Holds old data for UPDATE/DELETE

    -- Log INSERT operations
    INSERT INTO Audit_Logging (game_id, changed_by, change_timestamp, old_value, new_value, change_type)
    SELECT 
        i.game_id, 
        SUSER_NAME(),  -- Captures the user who made the change
        GETDATE(), 
        NULL, 
        CONCAT('Title: ', i.Title, ', 
				Release Year: ', i.Release_year,
				', Next_game: ', i.Next_game,
				', Game_suport: ', i.Game_support, 
				', Internet_connection_required: ', i.Internet_connection_required, 
				', Rating ID: ', i.rating_id,
				', Publisher_id: ', i.Publisher_id,
				', Is_played: ', i.Is_played,
				', Is_wishlisted: ', i.Is_wishlisted), 
        'INSERT'
    FROM Inserted i;

    -- Log UPDATE operations
    INSERT INTO Audit_Logging (game_id, changed_by, change_timestamp, old_value, new_value, change_type)
    SELECT 
        i.game_id, 
        SUSER_NAME(),
        GETDATE(), 
        CONCAT('Title: ', d.Title, ', 
				Release Year: ', d.Release_year,
				', Next_game: ', d.Next_game,
				', Game_suport: ', d.Game_support, 
				', Internet_connection_required: ', d.Internet_connection_required, 
				', Rating ID: ', d.rating_id,
				', Publisher_id: ', d.Publisher_id,
				', Is_played: ', d.Is_played,
				', Is_wishlisted: ', d.Is_wishlisted), 
        CONCAT('Title: ', i.Title, ', 
				Release Year: ', i.Release_year,
				', Next_game: ', i.Next_game,
				', Game_suport: ', i.Game_support, 
				', Internet_connection_required: ', i.Internet_connection_required, 
				', Rating ID: ', i.rating_id,
				', Publisher_id: ', i.Publisher_id,
				', Is_played: ', i.Is_played,
				', Is_wishlisted: ', i.Is_wishlisted), 
        'UPDATE'
    FROM Inserted i
    INNER JOIN Deleted d ON i.game_id = d.game_id;

    -- Log DELETE operations
    INSERT INTO Audit_Logging (game_id, changed_by, change_timestamp, old_value, new_value, change_type)
    SELECT 
        d.game_id, 
        SUSER_NAME(),
        GETDATE(), 
        CONCAT('Title: ', d.Title, ', 
				Release Year: ', d.Release_year,
				', Next_game: ', d.Next_game,
				', Game_suport: ', d.Game_support, 
				', Internet_connection_required: ', d.Internet_connection_required, 
				', Rating ID: ', d.rating_id,
				', Publisher_id: ', d.Publisher_id,
				', Is_played: ', d.Is_played,
				', Is_wishlisted: ', d.Is_wishlisted), 
        NULL, 
        'DELETE'
    FROM Deleted d;
END;

UPDATE GameCore.Game -- For Trg_GameChanges testing
SET Next_game = 'Cyberpunk 2077: Phantom Liberty' 
WHERE game_id = 51;

SELECT * FROM Audit_Logging
WHERE Change_type = 'UPDATE';


SELECT DISTINCT DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME != 'sysdiagrams' -- Columns data types 

-- Classic table
SELECT gnr1.Genre_name AS Genre, 
		ISNULL(gnr2.Genre_name, 'Is subgenre') AS Subgenre
FROM Reference.Genre gnr1
LEFT JOIN Reference.Genre gnr2 ON gnr1.Genre_id = gnr2.Parent_genre_id
WHERE gnr1.Genre_name != 'Root Genre';/*Returns parent genre with their children.
										Using "ROOT" instead of NULL simplifies queries and avoids SQL problems related to NULL handling.*/


-- #Temporary Table (local) for global double # (##table_name) should be use

CREATE TABLE #NewGames (
    game_id INT,
    Title VARCHAR(200),
    Release_year DATE
);

INSERT INTO #NewGames
SELECT game_id, Title, Release_year
FROM   GameCore.Game
WHERE  YEAR(Release_year) > 2023;

SELECT *
FROM   #NewGames
ORDER BY Release_year DESC;

DROP TABLE #NewGames;  -- optional - if the session hasn't ended 

-- CTE filters games that have a sequel
WITH GamesWithSequels AS (
    SELECT game_id,
           Title,
           Release_year,
           Next_game
    FROM   GameCore.Game gcg1
    WHERE  Next_game NOT IN ( 'N/A', 'TBD')
)
SELECT game_id,
       Title,
       Release_year,
       Next_game
FROM   GamesWithSequels
ORDER BY Release_year DESC;


-- Table variable
DECLARE @GenreList TABLE (
    genre_id INT,
    genre_name VARCHAR(100)
);

INSERT INTO @GenreList
VALUES (1, 'Action'), (2, 'RPG'), (3, 'Adventure');

SELECT *
FROM   @GenreList;

-- CREATE VIEW
CREATE VIEW vGame_Stats
AS
WITH GenreCounts AS (
    SELECT
        game_id,
        COUNT(*) AS no_genres
    FROM GameCore.Game_genre
    GROUP BY game_id
),-- Calculates the number of genres per game
LanguageCounts AS (
    SELECT
        game_id,
        COUNT(*) AS no_languages
    FROM GameCore.Game_language
    GROUP BY game_id
) -- Calculates the number of available languages per game
SELECT
    GCG.game_id,
    GCG.Title,
    GCG.Release_year,
    Pbs.publisher_name,
    ISNULL(GenC.no_genres, 0) AS total_genres,
    ISNULL(LangC.no_languages, 0) AS total_languages,
    CASE
        WHEN YEAR(GCG.Release_year) < 2015 THEN 'Older' -- CASE 
        ELSE 'Newer'
    END AS Era
FROM GameCore.Game AS GCG
     LEFT JOIN Reference.Publisher AS Pbs      ON GCG.publisher_id = Pbs.publisher_id  -- JOIN
     LEFT JOIN GenreCounts AS GenC   ON GCG.game_id = GenC.game_id
     LEFT JOIN LanguageCounts AS LangC  ON GCG.game_id = LangC.game_id;

SELECT * FROM vGame_Stats
WHERE Era = 'Older'
ORDER BY total_genres DESC;

GO

-- Stored procedure

CREATE PROCEDURE spGetGamesByYear  -- returns games by released year
    @Year INT
AS
BEGIN
    SELECT game_id,
           Title,
           Release_year
    FROM   GameCore.Game
    WHERE  YEAR(Release_year) = @Year;
END;
GO

EXEC spGetGamesByYear @Year = 2020;

-- Transactions

BEGIN TRANSACTION;

UPDATE GameCore.Game
SET    is_played = 1
WHERE  game_id = 42;

IF @@ERROR <> 0 
    ROLLBACK TRANSACTION;
ELSE
    COMMIT TRANSACTION;

SELECT * FROM GameCore.Game
WHERE game_id = 42;


-- Synonyms
CREATE SYNONYM	PEGI_Desc
FOR AgeRating.PEGI_content_descriptor

SELECT Content_descriptor_id FROM PEGI_Desc
WHERE PEGI_descriptor = 'Violence'

--Window function - Games rank based on release year and genre
SELECT 
    gcr.Game_id,
    gcr.Title,
    ge.Genre_name,
    gcr.Release_year,
    RANK() OVER (
        PARTITION BY ge.Genre_id
        ORDER BY gcr.Release_year DESC
    ) AS ReleaseYearRank
FROM GameCore.Game gcr
INNER JOIN GameCore.Game_genre ggnr ON gcr.Game_id = ggnr.Game_id
INNER JOIN Reference.Genre ge ON ggnr.Genre_id = ge.Genre_id

-- Dynamic SQL -> OFFSET

DECLARE @page INT= 2;
DECLARE @offset INT = (@page - 1) * 10;
DECLARE @sql NVARCHAR(250);
set @sql = 'SELECT Title, Release_year FROM GameCore.Game
ORDER BY Release_year
OFFSET ' + CONVERT(VARCHAR(250),@offset) + ' ROWS
FETCH NEXT 10 ROWS ONLY'; -- 10 rows per page, second page displayed

EXECUTE sp_executesql @sql

-- EXISTS + LIKE - Publishers that have games compatible with the PlayStation platform

SELECT
    pbs.Publisher_id,
    pbs.Publisher_name
FROM Reference.Publisher pbs
WHERE EXISTS (
    SELECT *
    FROM GameCore.Game gcg
    JOIN GameCore.Game_platform gplf ON gcg.Game_id = gplf.Game_id
    JOIN Reference.Platform plat ON gplf.Platform_id = plat.Platform_id
    WHERE gcg.Publisher_id = pbs.Publisher_id AND plat.Platform_name LIKE 'Playstation%'
);

--UNION + TOP

SELECT TOP 5
    gcg.Game_id,
    gcg.Title,
    pegi.PEGI AS PEGI_Label,
    gcg.Release_year
FROM GameCore.Game gcg
JOIN AgeRating.PEGI_age_label pegi ON gcg.Rating_id = pegi.Rating_id
WHERE pegi.PEGI = 'PEGI 18' -- Top 5 newest PEGI 18 games

UNION

SELECT TOP 5
    gcg.Game_id,
    gcg.Title,
    pegi.PEGI AS PEGI_Label,
    gcg.Release_year
FROM GameCore.Game gcg
JOIN AgeRating.PEGI_age_label pegi ON gcg.Rating_id = pegi.Rating_id
WHERE pegi.PEGI = 'PEGI 16'
ORDER BY gcg.Release_year DESC -- Top 5 newest PEGI 16 games

-- INTERSECT + Subquery

SELECT
    gcg.Game_id,
    gcg.Title,
    gcg.Release_year,
    gcg.Publisher_id
FROM GameCore.Game gcg
WHERE gcg.Publisher_id IN (
    SELECT pbs.Publisher_id
    FROM Reference.Publisher pbs
    JOIN GameCore.Game gcg2
        ON pbs.Publisher_id = gcg2.Publisher_id
    GROUP BY pbs.Publisher_id
    HAVING COUNT(*) > 5  -- Games from publishers that have more than 5 games published
)
INTERSECT
SELECT
    gcg.Game_id,
    gcg.Title,
    gcg.Release_year,
    gcg.Publisher_id
FROM GameCore.Game gcg
WHERE YEAR(gcg.Release_year) BETWEEN 2020 AND 2024 -- Games launched between specified years
ORDER BY Publisher_id, Game_id;

-- EXCEPT - All games released in 2020 except Electronic Arts published games

SELECT
    gcg.Game_id,
    gcg.Title,
    gcg.Release_year,
    pbs.Publisher_name
FROM GameCore.Game gcg
JOIN Reference.Publisher pbs ON gcg.Publisher_id = pbs.Publisher_id
WHERE YEAR(gcg.Release_year) = 2020

EXCEPT

SELECT
    gcg2.Game_id,
    gcg2.Title,
    gcg2.Release_year,
    pbs2.Publisher_name
FROM GameCore.Game gcg2
JOIN Reference.Publisher pbs2 ON gcg2.Publisher_id = pbs2.Publisher_id
WHERE YEAR(gcg2.Release_year) = 2020 AND pbs2.Publisher_name = 'Electronic Arts'
ORDER BY Title;

-- Aggregate functions for release year of each publisher and how many games they published

SELECT 
    pbs.Publisher_name,
    COUNT(*) AS TotalGames,
    MIN(YEAR(gcr.Release_year)) AS MinReleaseYear,
    MAX(YEAR(gcr.Release_year)) AS MaxReleaseYear,
    AVG(YEAR(gcr.Release_year)) AS AvgReleaseYear
FROM GameCore.Game gcr
INNER JOIN Reference.Publisher pbs ON gcr.Publisher_id = pbs.Publisher_id
GROUP BY pbs.Publisher_name
HAVING COUNT(*) >= 2
ORDER BY pbs.Publisher_name;

-- GROUP BY ROLLUP - No of games per publisher and the total no of games

SELECT 
    pbs.Publisher_name,
    COUNT(*) AS TotalGames
FROM GameCore.Game gcr
INNER JOIN Reference.Publisher pbs ON gcr.Publisher_id = pbs.Publisher_id
GROUP BY ROLLUP (pbs.Publisher_name);

-- GROUP BY CUBE 

SELECT 
    pbs.Publisher_name,
    ge.Genre_name,
    COUNT(DISTINCT ggr.Game_id) AS NrJocuri
FROM GameCore.Game ggr
INNER JOIN Reference.Publisher pbs ON ggr.Publisher_id = pbs.Publisher_id
INNER JOIN GameCore.Game_genre gg ON ggr.Game_id = gg.Game_id
INNER JOIN Reference.Genre ge ON gg.Genre_id = ge.Genre_id
GROUP BY CUBE (pbs.Publisher_name, ge.Genre_name)
ORDER BY pbs.Publisher_name, ge.Genre_name;

/*For each pair (Publisher_name, Genre_name) there are the number of games (exactly at the detail level).
The row with (Publisher_name, NULL) shows the total for that publisher (all genres).
The row with (NULL, Genre_name) shows the total for genre (all publishers).
The row with (NULL, NULL) is the final total (all games, all publishers and all genres).*/

--Error Handling

select * from 

BEGIN TRY
    BEGIN TRANSACTION;
    
    INSERT INTO GameCore.Game (Title, Release_year, Internet_connection_required, Is_played, Is_wishlisted)
    VALUES ('Cyberpunk 2077', '2020-12-10', 1, 0, 0);

    COMMIT TRANSACTION;  -- Confirm the transaction if no errors occurred.
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;  -- Cancel changes in case of error
    PRINT 'An error occurred'
END CATCH;