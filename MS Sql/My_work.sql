CREATE DATABASE Games_Library

GO

USE Games_Library

CREATE TABLE Game (
game_id int primary key Identity (1,1),
Title varchar(50),
Relese_year date,
Next_game varchar(50),
Developer varchar(50),
Game_mode varchar(20),
Game_support varchar(10),
Network_feature varchar(50)
)

select * from Game

INSERT INTO Game (Title, Relese_year, Next_game, Developer, Game_mode, Game_support, Network_feature) VALUES
('Black Myth:Wukong', '2025', 'N/a', 'Game Science', 'Single-player', 'Digital', 'Internet connection required')

UPDATE Game SET Relese_year = '2024-08-20'
WHERE game_id = 1

UPDATE Game SET Next_game = 'N/A'
WHERE game_id = 1

DELETE Game WHERE game_id = 2

EXEC sp_rename 'dbo.game.developer', 'Publisher', 'COLUMN'

INSERT INTO Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Horizon Zero Dawn', '2017-03-01', 'Horizon Forbidden West', 'Sony Interactive Entertainment', 'Single-player', 'Digital', 'No internet connection required')

ALTER TABLE Game ALTER COLUMN Game_mode VARCHAR(50)

INSERT INTO Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Rise of the Ronin', '2024-03-22', 'N/A', 'Sony Interactive Entertainment', 'Single-player/Multiplayer', 'Physical', 'Internet connection required')

INSERT INTO Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Star Wars Jedi: Fallen Order', '2019-03-22', 'Star Wars Jedi: Survivor', 'Electronic Arts', 'Single-player', 'Digital', 'Internet connection required'),
('Star Wars Jedi: Survivor', '2023-04-28', 'N/A', 'Electronic Arts', 'Single-player', 'Digital', 'Internet connection required')

INSERT INTO Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Assetto Corsa Competizione', '2020-06-23', 'N/A', '505 Games', 'Single-player/Multiplayer', 'Digital', 'Internet connection required')

INSERT INTO Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('God of War', '2018-04-20', 'God of War Ragnarök', 'Sony Interactive Entertainment', 'Single-player', 'Digital', 'Internet connection required'),
('God of War Ragnarök', '2022-11-09', 'TBD', 'Sony Interactive Entertainment', 'Single-player', 'Digital', 'Internet connection required')

select * from Game

INSERT INTO Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Need for Speed Heat', '2019-11-09', 'Need for Speed Unbound', 'Electronic Arts', 'Single-player/Multiplayer', 'Digital', 'Internet connection required')

INSERT INTO Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('FC 24', '2023-09-29', 'FC 25', 'Electronic Arts', 'Single-player/Multiplayer', 'Physical', 'Internet connection required')

INSERT INTO Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Mortal Kombat 1', '2023-09-19', 'TBD', 'Warner Bros. Games', 'Single-player/Multiplayer', 'Physical', 'Internet connection required')

INSERT INTO Game (Title, Relese_year, Next_game, Publisher, Game_mode, Game_support, Network_feature) VALUES
('Tom Clancys Ghost Recon Wildlands', '2017-03-07', 'Tom Clancys Ghost Recon Breakpoint', 'Ubisoft', 'Single-player/Multiplayer', 'Digital', 'Internet connection required')

CREATE TABLE PEGI_age_labels ( -- PEGI -> Pan European Game Information
rating_id int primary key Identity (1,1),
PEGI varchar(10),
Description Varchar(256)
)

ALTER TABLE PEGI_age_labels ALTER COLUMN Description TEXT

INSERT INTO PEGI_age_labels (PEGI, Description) VALUES
('PEGI 3','The content of games with a PEGI 3 rating is considered suitable for all age groups. 
The game should not contain any sounds or pictures that are likely to frighten young children. 
A very mild form of violence (in a comical context or a childlike setting) is acceptable. No bad language should be heard.')

select * from PEGI_age_labels

INSERT INTO PEGI_age_labels (PEGI, Description) VALUES
('PEGI 7','Game content with scenes or sounds that can possibly be frightening to younger children should fall in this category. 
Very mild forms of violence (implied, non-detailed, or non-realistic violence) are acceptable for a game with a PEGI 7 rating.')

INSERT INTO PEGI_age_labels (PEGI, Description) VALUES
('PEGI 12','Video games that show violence of a slightly more graphic nature towards fantasy characters or non-realistic violence towards human-like characters would fall in this age category. 
Sexual innuendo or sexual posturing can be present, while any bad language in this category must be mild.')

INSERT INTO PEGI_age_labels (PEGI, Description) VALUES
('PEGI 16','This rating is applied once the depiction of violence (or sexual activity) reaches a stage that looks the same as would be expected in real life. 
The use of bad language in games with a PEGI 16 rating can be more extreme, while the use of tobacco, alcohol or illegal drugs can also be present.')

INSERT INTO PEGI_age_labels (PEGI, Description) VALUES
('PEGI 18','The adult classification is applied when the level of violence reaches a stage where it becomes a depiction of gross violence, apparently motiveless killing, or violence towards defenceless characters. 
The glamorisation of the use of illegal drugs and of the simulation of gambling, and explicit sexual activity should also fall into this age category.')

INSERT INTO PEGI_age_labels (PEGI, Description) VALUES
('PEGI !','In addition to the numerical PEGI ratings, you will also see the "Parental Guidance Recommended" rating for some non-game apps, introduced by PEGI for storefronts that use IARC. 
This serves as a warning that these apps can offer a broad variety of user generated or curated content. Typically, this applies to products such as Facebook, Twitter or YouTube.')

CREATE TABLE PEGI_content_descriptors(
content_descriptors_id int primary key Identity (1,1),
PEGI_descriptors varchar(50),
Descriptors_desc TEXT
)

select * from PEGI_content_descriptors

INSERT INTO PEGI_content_descriptors (PEGI_descriptors, Descriptors_desc) VALUES
('Violence','The game contains depictions of violence. In games rated PEGI 7 this can only be non-realistic or non-detailed violence. 
Games rated PEGI 12 can include violence in a fantasy environment or non-realistic violence towards human-like characters, whereas games rated PEGI 16 or 18 have increasingly more realistic-looking violence.'​)

INSERT INTO PEGI_content_descriptors (PEGI_descriptors, Descriptors_desc) VALUES
('Bad Language','The game contains bad language. 
This descriptor can be found on games with a PEGI 12 (mild swearing), PEGI 16 (e.g. sexual expletives or blasphemy) or PEGI 18 rating (e.g. sexual expletives or blasphemy).'​)

INSERT INTO PEGI_content_descriptors (PEGI_descriptors, Descriptors_desc) VALUES
('Fear / Horror','This descriptor may appear as "Fear" on games with a PEGI 7 if it contains pictures or sounds that may be frightening or scary to young children, 
or as "Horror" on higher-rated games that contain moderate (PEGI 12) or intense and sustained (PEGI 16) horror sequences or disturbing images (not necessarily including violent content).'​)

INSERT INTO PEGI_content_descriptors (PEGI_descriptors, Descriptors_desc) VALUES
('Gambling','The game contains elements that encourage or teach gambling. These simulations of gambling refer to games of chance that are normally carried out in casinos or gambling halls. 
Some older titles can be found with PEGI 12 or PEGI 16, but PEGI changed the criteria for this classification in 2020, which made that new games with this sort of content are always PEGI 18.'​)

INSERT INTO PEGI_content_descriptors (PEGI_descriptors, Descriptors_desc) VALUES
('Sex','This content descriptor can accompany a PEGI 12 rating if the game includes sexual posturing or innuendo, 
a PEGI 16 rating if there is erotic nudity or sexual intercourse without visible genitals or a PEGI 18 rating if there is explicit sexual activity in the game. 
Depictions of nudity in a non-sexual context do not require a specific age rating, and this descriptor would not be necessary.'​)

INSERT INTO PEGI_content_descriptors (PEGI_descriptors, Descriptors_desc) VALUES
('Drugs','The game refers to or depicts the use of illegal drugs, alcohol or tobacco. Games with this content descriptor are always PEGI 16 or PEGI 18.'​)

INSERT INTO PEGI_content_descriptors (PEGI_descriptors, Descriptors_desc) VALUES
('Discrimination','The game contains depictions of ethnic, religious, nationalistic or other stereotypes likely to encourage hatred. 
This content is always restricted to a PEGI 18 rating (and likely to infringe national criminal laws).'​)

select * from PEGI_content_descriptors

INSERT INTO PEGI_content_descriptors (PEGI_descriptors, Descriptors_desc) VALUES
('In-Game Purchases','The game offers players the option to purchase digital goods or services with real-world currency. 
Such purchases include additional content (bonus levels, outfits, surprise items, music), but also upgrades (e.g. to disable ads), subscriptions to updates, virtual coins and other forms of in-game currency.'​)

INSERT INTO PEGI_content_descriptors (PEGI_descriptors, Descriptors_desc) VALUES
('Paid Random Items','This content descriptor is sometimes accompanied by an additional notice if the in-game purchases include random items (like loot boxes or card packs). 
Paid random items comprise all in-game offers where players don"t know exactly what they are getting prior to the purchase. 
They can be purchased directly with real money and/or exchanged for an in-game virtual currency. Depending on the game, these items may be purely cosmetic or they may have functional value.'​)

CREATE TABLE Platforms (
platforms_id int primary key identity(1,1),
Platform_name varchar(25)
)

SELECT * FROM Platforms

INSERT INTO Platforms (Platform_name) VALUES
('Windows'),
('Playstation'),
('XBOX'),
('Nintendo')


CREATE TABLE Language (
language_id int primary key identity(1,1),
Name varchar(10)
)

SELECT * FROM Language

INSERT INTO Language (Name) VALUES
('English')

INSERT INTO Language (Name) VALUES
('Spanish')

INSERT INTO Language (Name) VALUES
('Italian')

INSERT INTO Language (Name) VALUES
('German')

INSERT INTO Language (Name) VALUES
('French')

CREATE TABLE Game_PEGIcontent_desc (
game_id int foreign key references Game(game_id),
content_descriptors_id int foreign key references PEGI_content_descriptors(content_descriptors_id)
)

SELECT * FROM Game_PEGIcontent_desc

SELECT * FROM Game

SELECT * FROM PEGI_content_descriptors

INSERT INTO Game_PEGIcontent_desc (game_id,content_descriptors_id) VALUES
('1','1'),
('3','1'),
('5','4'),
('5','1'),
('6','1'),
('7','1'),
('7','2'),
('9','1'),
('9','2'),
('10','1'),
('10','2'),
('11','1'),
('12','8'),
('13','1'),
('13','2'),
('13','8'),
('14','1'),
('14','2')

SELECT * FROM PEGI_age_labels

SELECT * FROM Game

ALTER TABLE Game
ADD rating_id int foreign key references PEGI_age_labels(rating_id)

UPDATE Game SET rating_id = 2
WHERE game_id IN ('8','12')

UPDATE Game SET rating_id = 4
WHERE game_id = 7

UPDATE Game SET rating_id = 5
WHERE game_id IN ('1','3','6','11','13','14')

UPDATE Game SET rating_id = 6
WHERE game_id IN ('5','10')

UPDATE Game SET rating_id = 6
WHERE game_id = '9'

CREATE TABLE Game_platforms (
game_id int foreign key references Game(game_id),
platforms_id int foreign key references Platforms(platforms_id)
)

SELECT * FROM Game

SELECT * FROM Platforms

SELECT * FROM Game_platforms

INSERT INTO Game_platforms(game_id, platforms_id) VALUES
('1','1'),
('1','2'),
('1','3')

INSERT INTO Game_platforms(game_id, platforms_id) VALUES
('3','1'),
('3','2')

INSERT INTO Game_platforms(game_id, platforms_id) VALUES
('5','2')

INSERT INTO Game_platforms(game_id, platforms_id) VALUES
('6','1'),
('6','2'),
('6','3')

INSERT INTO Game_platforms(game_id, platforms_id) VALUES
('7','1'),
('7','2'),
('7','3')

INSERT INTO Game_platforms(game_id, platforms_id) VALUES
('8','1'),
('8','2')

INSERT INTO Game_platforms(game_id, platforms_id) VALUES
('9','1'),
('9','2')

INSERT INTO Game_platforms(game_id, platforms_id) VALUES
('10','1'),
('10','2')

SELECT * FROM Game

SELECT * FROM Platforms

INSERT INTO Game_platforms(game_id, platforms_id) VALUES
('11','1'),
('11','2'),
('11','3')

INSERT INTO Game_platforms(game_id, platforms_id) VALUES
('12','1'),
('12','2'),
('12','3'),
('12','4')

INSERT INTO Game_platforms(game_id, platforms_id) VALUES
('13','1'),
('13','2'),
('13','3'),
('13','4')

INSERT INTO Game_platforms(game_id, platforms_id) VALUES
('14','1'),
('14','2'),
('14','3')

CREATE TABLE Game_language (
game_id int foreign key references Game(game_id),
language_id int foreign key references Language(language_id)
)

INSERT INTO Language(Name) VALUES (
('Chinese')
)

INSERT INTO Language(Name) VALUES (
('Japanese')
)

INSERT INTO Language(Name) VALUES (
('Korean')
)

INSERT INTO Language(Name) VALUES (
('Polish')
)

INSERT INTO Language(Name) VALUES (
('Portugues')
)

INSERT INTO Game_language (game_id, language_id) VALUES 
('1','1'),
('1','2'),
('1','3'),
('1','4'),
('1','5'),
('1','8'),
('1','9'),
('1','10'),
('1','11'),
('1','12')

INSERT INTO Game_language (game_id, language_id) VALUES 
('3','1'),
('3','2'),
('3','3'),
('3','4'),
('3','5'),
('3','11'),
('3','12')

INSERT INTO Game_language (game_id, language_id) VALUES 
('5','1'),
('5','2'),
('5','3'),
('5','4'),
('5','5'),
('5','8'),
('5','11'),
('5','12')

INSERT INTO Game_language (game_id, language_id) VALUES 
('6','1'),
('6','2'),
('6','3'),
('6','4'),
('6','5'),
('6','11')

INSERT INTO Game_language (game_id, language_id) VALUES -- din neatentie am mai inserat pt game_id = 6
('6','1'),
('6','2'),
('6','3'),
('6','4'),
('6','5'),
('6','8'),
('6','10'),
('6','11'),
('6','12')

DELETE Game_language WHERE game_id = 6 AND language_id IN ('1','2','3','4','5','8','10','11','12')

INSERT INTO Game_language (game_id, language_id) VALUES 
('6','1'),
('6','2'),
('6','3'),
('6','4'),
('6','5'),
('6','11')

INSERT INTO Game_language (game_id, language_id) VALUES 
('7','1'),
('7','2'),
('7','3'),
('7','4'),
('7','5'),
('7','8'),
('7','10'),
('7','11'),
('7','12')

INSERT INTO Game_language (game_id, language_id) VALUES 
('8','1'),
('8','2'),
('8','3'),
('8','4'),
('8','5'),
('8','9'),
('8','11'),
('8','12')

INSERT INTO Game_language (game_id, language_id) VALUES 
('9','1'),
('9','3'),
('9','4'),
('9','5')

INSERT INTO Game_language (game_id, language_id) VALUES 
('10','1'),
('10','2'),
('10','3'),
('10','4'),
('10','5'),
('10','8'),
('10','9'),
('10','10'),
('10','11'),
('10','12')

INSERT INTO Game_language (game_id, language_id) VALUES 
('11','1'),
('11','2'),
('11','3'),
('11','4'),
('11','5'),
('11','11')

INSERT INTO Game_language (game_id, language_id) VALUES 
('12','1'),
('12','2'),
('12','11'),
('12','12')

INSERT INTO Game_language (game_id, language_id) VALUES 
('13','1'),
('13','2'),
('13','3'),
('13','4'),
('13','5'),
('13','11'),
('13','12')

INSERT INTO Game_language (game_id, language_id) VALUES 
('14','1'),
('14','2'),
('14','3'),
('14','4'),
('14','5'),
('14','9'),
('14','10'),
('14','11'),
('14','12')

ALTER TABLE Game
ADD language_id int foreign key references Language(language_id) -- am adaugat din greseala coloana

ALTER TABLE Game
DROP CONSTRAINT FK__Game__language_i__49C3F6B7

ALTER TABLE Game
DROP COLUMN language_id

SELECT Title, Relese_year FROM Game

SELECT name from language

SELECT * FROM PEGI_age_labels

SELECT Platform_name FROM Platforms

SELECT PEGI_descriptors FROM PEGI_content_descriptors

SELECT Game.Title, Game.Relese_year, Platforms.Platform_name, PEGI_age_labels.PEGI, PEGI_content_descriptors.PEGI_descriptors FROM Game
INNER JOIN Game_platforms ON Game.game_id = Game_platforms.game_id
INNER JOIN Platforms ON Platforms.platforms_id = Game_platforms.platforms_id
INNER JOIN PEGI_age_labels ON PEGI_age_labels.rating_id = game.rating_id
INNER JOIN Game_PEGIcontent_desc ON game.game_id = Game_PEGIcontent_desc.game_id
INNER JOIN PEGI_content_descriptors ON PEGI_content_descriptors.content_descriptors_id = Game_PEGIcontent_desc.content_descriptors_id
WHERE Platforms.Platform_name = 'Playstation'

SELECT Game.Title, PEGI_age_labels.PEGI, PEGI_content_descriptors.PEGI_descriptors, Language.Name FROM Game
INNER JOIN Game_platforms ON Game.game_id = Game_platforms.game_id
INNER JOIN Platforms ON Platforms.platforms_id = Game_platforms.platforms_id
INNER JOIN PEGI_age_labels ON PEGI_age_labels.rating_id = game.rating_id
INNER JOIN Game_PEGIcontent_desc ON game.game_id = Game_PEGIcontent_desc.game_id
INNER JOIN PEGI_content_descriptors ON PEGI_content_descriptors.content_descriptors_id = Game_PEGIcontent_desc.content_descriptors_id
INNER JOIN Game_language ON Game.game_id = Game_language.game_id
INNER JOIN Language ON Language.language_id = Game_language.language_id
WHERE Game.game_id = 1 AND Platforms.Platform_name = 'windows'

