-- Records --
CREATE TABLE  records (
	id INTEGER NOT NULL UNIQUE,
	album_name TEXT NOT NULL,
  album_year INTEGER NOT NULL,
	artist TEXT NOT NULL,
  price FLOAT NOT NULL,
  album_description TEXT,
  file_name TEXT NOT NULL,
  file_ext TEXT NOT NULL,
	PRIMARY KEY (id AUTOINCREMENT)

);

-- Cite: https://www.popvortex.com/music/100-greatest-albums/ --
INSERT INTO records (id, album_name, album_year, artist, price, file_name, file_ext)
VALUES (1,'Thriller',1982, 'Michael Jackson', 29.99,'thriller-cover', 'jpg');
-- Cite: https://www.popvortex.com/music/100-greatest-albums/ --
INSERT INTO records (id, album_name, album_year, artist, price, file_name, file_ext)
VALUES (2,'Elvis Presley',1956,'Elvis Presley',29.99,'elvis-presley-cover', 'jpg');
-- Cite: https://www.popvortex.com/music/100-greatest-albums/ --
INSERT INTO records (id, album_name, album_year, artist, price, file_name, file_ext)
VALUES (3,'The Miseducation of Lauryn Hill',1998,'Lauryn Hill', 29.99,'lauryn-hill-cover', 'jpg');
-- Cite: https://www.popvortex.com/music/100-greatest-albums/ --
INSERT INTO records (id, album_name, album_year, artist, price, file_name, file_ext)
VALUES (4,'Legend',1984,'Bob Marley',49.99,'bob-marley-cover', 'jpg');
-- Cite: https://www.popvortex.com/music/100-greatest-albums/ --
INSERT INTO records (id, album_name, album_year, artist, price, file_name, file_ext)
VALUES (5,'Songs in the Key of Life',1976,'Stevie Wonder', 39.99, 'stevie-wonder-cover','jpg');
-- Cite: https://www.popvortex.com/music/100-greatest-albums/ --
INSERT INTO records (id, album_name, album_year, artist, price, file_name, file_ext)
VALUES (6,'Purple Rain',1984,'Prince', 50.99,'prince-cover', 'jpg');
-- Cite: https://www.popvortex.com/music/100-greatest-albums/ --
INSERT INTO records (id, album_name, album_year, artist, price, file_name, file_ext)
VALUES (7,'Tapestry',1971,'Carole King', 29.99,'carole-king-cover', 'jpg');
-- Cite: https://www.popvortex.com/music/100-greatest-albums/ --
INSERT INTO records (id, album_name, album_year, artist, price, file_name, file_ext)
VALUES (8,'OK Computer',1997,'Radiohead', 29.99,'radiohead-cover', 'png');
-- Cite: https://www.popvortex.com/music/100-greatest-albums/ --
INSERT INTO records (id, album_name, album_year, artist, price, file_name, file_ext)
VALUES (9,'Lady Soul',1968,'Aretha Franklin', 29.99,'aretha-franklin-cover', 'jpg');
-- Cite: https://www.popvortex.com/music/100-greatest-albums/ --
INSERT INTO records (id, album_name, album_year, artist, price, file_name, file_ext)
VALUES (10,'Wish You Were Here',1975,'Pink Floyd', 29.99,'pink-floyd-cover', 'png');

--Album Cover Cite: https://pitchfork.com/reviews/albums/jessie-reyez-before-love-came-to-kill-us/ --
INSERT INTO records (id, album_name, album_year, artist, price, file_name, file_ext)
VALUES (11,'Before Love Came to Kill Us',2020, 'Jessie Reyez', 29.99,'blctku-album-cover.jpg', 'jpg');

--Album Cover Cite:https://www.google.com/search?q=25+adele&oq=25+adele+&aqs=chrome..69i59j69i57j46i512j0i512l4j69i60.4842j0j7&sourceid=chrome&ie=UTF-8--
INSERT INTO records (id, album_name, album_year, artist, price, file_name, file_ext)
VALUES (12,'25',2020, 'Adele', 29.99,'adele-album-cover.jpg', 'jpg');

--Album Cover Cite:https://www.amazon.com/Hello-Dolly-Louis-Armstrong/dp/B000050I0R
INSERT INTO records (id, album_name, album_year, artist, price, album_description, file_name, file_ext)
VALUES (
  13,
  'Hello Dolly!',
  1964,
  'Louis Armstrong',
  29.99,
  'Hello Dolly! is a jazz album by Louis Armstrong and His All Stars, which at the time included Joe Darensbourg, Billy Kyle, Big Chief Russell Moore, Arvell Shaw, Danny Barcelona and Trummy Young. The tracks were mostly recorded on December 3, 1963, and April 18, 1964, in New York City.',
  'hello-dolly-louis-a', 'jpg');


  --Cite: https://en.wikipedia.org/wiki/Your_Man_(album) --
INSERT INTO records (id, album_name, album_year, artist, price, album_description, file_name, file_ext)
VALUES (
  14,
  'Your Man'
  ,2006,
  'Josh Turner',
  29.99,
  'Your Man is the second studio album by American country music artist Josh Turner. It released on January 24, 2006 and debuted at No. 2 on the U.S. Billboard 200 chart and debuted at No. 1 on the Top Country Albums',
  'your-man-album-cover.jpg',
  'jpg');

-- Cite:https://trettleman.medium.com/the-7-best-albums-of-the-1940s-d0a67bab2de6 --
INSERT INTO records (id, album_name, album_year, artist, price, album_description, file_name, file_ext)
VALUES (
  15,
  'Black, Brown and Beige'
  ,1943,
  'Duke Ellington',
  39.99,
  '“Black, Brown and Beige” is one of Duke Ellington’s most famous, or perhaps infamous, works. The 1943 composition written for Ellington’s Carnegie Hall performance, the first of its kind for an African American, was meant to capture the jazz legend’s feelings on race in America. Many saw it as a botched attempt, both in terms of sentiment and execution of a jazz/classical/art music fusion.',
  'black-brown-beige-album-cover.jpg',
  'jpg');

--Cite: https://en.wikipedia.org/wiki/Breathe_In._Breathe_Out. --
INSERT INTO records (id, album_name, album_year, artist, price, album_description, file_name, file_ext)
VALUES (
  16,
  'Breathe In. Breathe Out.',
  2015,
  'Hillary Duff',
  19.99,
  'Breathe In. Breathe Out. is the fifth studio album by American singer Hilary Duff. It was released on June 12, 2015, by RCA Records. Duff began work on the album in January 2012, but after scrapping the songs she recorded, she resumed the sessions in September 2013, continuing throughout 2014 and 2015.',
  'breathe-in-breath-out-album-cover.png',
  'png');

--Cite: https://en.wikipedia.org/wiki/Bach:_The_Goldberg_Variations_(Glenn_Gould_album) --
INSERT INTO records (id, album_name, album_year, artist, price, album_description, file_name, file_ext)
VALUES (
  17,
  'Bach: The Goldberg Variations',
  1956,
  'Glenn Gould',
  19.99,
  'Bach: The Goldberg Variations is the debut album of Canadian classical pianist Glenn Gould. An interpretation of Johann Sebastian Bachs Goldberg Variations (BWV 988), the 1956 record launched Goulds career as a renowned international pianist, and became one of the most well-known piano recordings.Sales were "astonishing" for a classical album: it was reported to have sold 40,000 copies by 1960, and had sold more than 100,000 by the time of Goulds death in 1982. In 1981, a year before his death, Gould made a new recording of the Goldberg Variations, sales of which exceeded two million by the year 2000.',
  'bach-album-cover.jpg',
  'jpg');

--Cite:https://en.wikipedia.org/wiki/Spider-Man:_Into_the_Spider-Verse_(soundtrack)--
INSERT INTO records (id, album_name, album_year, artist, price, album_description, file_name, file_ext)
VALUES (
  18,
  'Spider-Man: Into the Spider-Verse',
  1956,
  'Various Artists',
  39.99,
  'The soundtrack for the 2018 American animated superhero film Spider-Man: Into the Spider-Verse, based on the Miles Morales incarnation of the Marvel Comics character Spider-Man and produced by Sony Pictures Animation, consists of both an original score composed by Daniel Pemberton and a soundtrack featuring original songs written for and inspired by the film.The soundtrack features songs performed by an array of artists, including Vince Staples, Jaden Smith, Nicki Minaj, Lil Wayne, Ski Mask the Slump God, Ty Dolla $ign, Post Malone, Swae Lee, Anuel AA, Thutmose, Coi Leray, Juice WRLD, and XXXTENTACION. The soundtrack was supported by the singles "Sunflower" and "Whats Up Danger". It was released by Republic Records on December 14, 2018, the same day as the films theatrical release.[1] A deluxe version of the soundtrack, with remix versions of "Sunflower" and "Scared of the Dark" as bonus tracks, was released on February 22, 2019.',
  'spiderman-album-cover.jpg',
  'jpg');



-- Tags (Genres, decades, Ratings) --
CREATE TABLE tags(
id INTEGER UNIQUE NOT NULL,
genre TEXT,
decade TEXT,
rating INTEGER,
 PRIMARY KEY (id AUTOINCREMENT)
);

-- genres --
INSERT INTO tags (id, genre)
VALUES (34, 'Pop');
INSERT INTO tags (id, genre)
VALUES (27, 'R&B/Soul');
INSERT INTO tags (id, genre)
VALUES (50, 'Rock');
INSERT INTO tags (id, genre)
VALUES (12, 'Classical');
INSERT INTO tags (id, genre)
VALUES (72, 'Alternative');
INSERT INTO tags (id, genre)
VALUES (84, 'Country');
INSERT INTO tags (id, genre)
VALUES (66,'Jazz');
INSERT INTO tags (id, genre)
VALUES (98,'Hip-Hop');
INSERT INTO tags (id, genre)
VALUES (90,'Rap');
INSERT INTO tags (id, genre)
VALUES (44,'Dance/Electronic');
INSERT INTO tags (id, genre)
VALUES (123,'Reggae');
INSERT INTO tags (id, genre)
VALUES (11,'Folk');
INSERT INTO tags (id, genre)
VALUES (175,'Soundtrack');

-- decades --
INSERT INTO tags (id, decade)
VALUES(940,'`40s');
INSERT INTO tags (id, decade)
VALUES(950,'`50s');
INSERT INTO tags (id, decade)
VALUES(960,'`60s');
INSERT INTO tags (id, decade)
VALUES(970,'`70s');
INSERT INTO tags (id, decade)
VALUES(980,'`80s');
INSERT INTO tags (id, decade)
VALUES(990,'`90s');
INSERT INTO tags (id, decade)
VALUES(200,'`2000s');
INSERT INTO tags (id, decade)
VALUES(210,'`2010s');
INSERT INTO tags (id, decade)
VALUES(220,'`2020s');

-- ratings --
INSERT INTO tags (id,rating)
VALUES (1001,1);
INSERT INTO tags (id,rating)
VALUES (2002,2);
INSERT INTO tags (id,rating)
VALUES (3003,3);
INSERT INTO tags (id,rating)
VALUES (4004,4);
INSERT INTO tags (id,rating)
VALUES (5005,5);



--Records_Tags--
CREATE TABLE records_tags(
id INTEGER UNIQUE NOT NULL,
records_id INTEGER NOT NULL,
tags_id INTEGER,
 PRIMARY KEY (id AUTOINCREMENT)
FOREIGN KEY (records_id) REFERENCES records(id)
FOREIGN KEY (tags_id) REFERENCES tags(id)
);

--M.J.--
INSERT INTO records_tags(records_id, tags_id)
VALUES (1, 980);
INSERT INTO records_tags(records_id, tags_id)
VALUES (1, 5005);
INSERT INTO records_tags( records_id, tags_id)
VALUES (1, 34);

--Elvis--
INSERT INTO records_tags(records_id, tags_id)
VALUES (2, 950);
INSERT INTO records_tags(records_id, tags_id)
VALUES (2, 50);

--Lauryn Hill--
INSERT INTO records_tags( records_id, tags_id)
VALUES (3, 990);
INSERT INTO records_tags( records_id, tags_id)
VALUES (3, 27);
INSERT INTO records_tags( records_id, tags_id)
VALUES (3, 4004);

--Bob Marley--
INSERT INTO records_tags( records_id, tags_id)
VALUES (4, 980);
INSERT INTO records_tags( records_id, tags_id)
VALUES (4, 123);

--Stevie Wonder--
INSERT INTO records_tags( records_id, tags_id)
VALUES (5, 970);
INSERT INTO records_tags( records_id, tags_id)
VALUES (5, 27);

--Prince--
INSERT INTO records_tags( records_id, tags_id)
VALUES (6, 980);
INSERT INTO records_tags( records_id, tags_id)
VALUES (6, 175);

--Carole King--
INSERT INTO records_tags( records_id, tags_id)
VALUES (7, 970);
INSERT INTO records_tags( records_id, tags_id)
VALUES (7, 34);

--Radiohead--
INSERT INTO records_tags( records_id, tags_id)
VALUES (8, 990);
INSERT INTO records_tags( records_id, tags_id)
VALUES (8, 72);

--Aretha Franklin--
INSERT INTO records_tags( records_id, tags_id)
VALUES (9, 960);
INSERT INTO records_tags( records_id, tags_id)
VALUES (9, 27);

--Pink Floyd--
INSERT INTO records_tags( records_id, tags_id)
VALUES (10, 970);
INSERT INTO records_tags( records_id, tags_id)
VALUES (10, 50);

--Jessie Reyez--
INSERT INTO records_tags( records_id, tags_id)
VALUES (11, 220);
INSERT INTO records_tags( records_id, tags_id)
VALUES (11, 27);
INSERT INTO records_tags( records_id, tags_id)
VALUES (11, 98);
INSERT INTO records_tags( records_id, tags_id)
VALUES (11, 34);

--Adele--
INSERT INTO records_tags( records_id, tags_id)
VALUES (12, 11);
INSERT INTO records_tags( records_id, tags_id)
VALUES (12, 34);
INSERT INTO records_tags( records_id, tags_id)
VALUES (12, 210);

--Louis Armstrong--
INSERT INTO records_tags( records_id, tags_id)
VALUES (13, 960);
INSERT INTO records_tags( records_id, tags_id)
VALUES (13, 66);
INSERT INTO records_tags( records_id, tags_id)
VALUES (13, 3003);

--Josh Turner--
INSERT INTO records_tags( records_id, tags_id)
VALUES (14, 200);
INSERT INTO records_tags( records_id, tags_id)
VALUES (14, 84);
INSERT INTO records_tags( records_id, tags_id)
VALUES (14, 4004);

--Duke Ellington--
INSERT INTO records_tags( records_id, tags_id)
VALUES (15, 940);
INSERT INTO records_tags( records_id, tags_id)
VALUES (15, 66);
INSERT INTO records_tags( records_id, tags_id)
VALUES (15, 2002);

--Hillary Duff--
INSERT INTO records_tags( records_id, tags_id)
VALUES (16, 210);
INSERT INTO records_tags( records_id, tags_id)
VALUES (16, 44);
INSERT INTO records_tags( records_id, tags_id)
VALUES (16, 1001);

--Glenn Gould--
INSERT INTO records_tags( records_id, tags_id)
VALUES (17, 950);
INSERT INTO records_tags( records_id, tags_id)
VALUES (17, 12);
INSERT INTO records_tags( records_id, tags_id)
VALUES (17, 2002);


--Spiderman: Into the SpiderVerse--
INSERT INTO records_tags( records_id, tags_id)
VALUES (18, 210);
INSERT INTO records_tags( records_id, tags_id)
VALUES (18, 175);
INSERT INTO records_tags( records_id, tags_id)
VALUES (18, 98);
INSERT INTO records_tags( records_id, tags_id)
VALUES (18, 34);
INSERT INTO records_tags( records_id, tags_id)
VALUES (18, 90);




--Sessions Tables --

 CREATE TABLE users (
     id INTEGER NOT NULL UNIQUE,
     name TEXT NOT NULL,
     username TEXT NOT NULL UNIQUE,
     password TEXT NOT NULL,
    PRIMARY KEY (id AUTOINCREMENT)
 );

 CREATE TABLE sessions (
     id INTEGER NOT NULL UNIQUE,
     user_id INTEGER NOT NULL,
     session    TEXT NOT NULL UNIQUE,
     last_login TEXT NOT NULL,
     PRIMARY KEY (id AUTOINCREMENT)
     FOREIGN KEY (user_id) REFERENCES users(id)
 );

INSERT INTO
  users (id, name, username, password)
VALUES
  (
    1,
    'Celeste Naughton',
    'celestenaughton21',
    '$2y$10$QtCybkpkzh7x5VN11APHned4J8fu78.eFXlyAMmahuAaNcbwZ7FH.' -- monkey
  );


INSERT INTO
  users (id, name, username, password)
VALUES
  (
    2,
    'Sarah Cameron',
    'sarahcameron27',
    '$2y$10$QtCybkpkzh7x5VN11APHned4J8fu78.eFXlyAMmahuAaNcbwZ7FH.' -- monkey
  );

INSERT INTO
  users (id, name, username, password)
VALUES
  (
    3,
    'Victoria Whittle',
    'victoriawhittle3',
    '$2y$10$QtCybkpkzh7x5VN11APHned4J8fu78.eFXlyAMmahuAaNcbwZ7FH.' -- monkey
  );
