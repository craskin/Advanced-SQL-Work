-- dropping tables for coding purposes --

DROP TABLE IF EXISTS games_platform;
DROP TABLE IF EXISTS vg_platform;
DROP TABLE IF EXISTS video_games;
DROP TABLE IF EXISTS vg_publisher;


-- creating new tables --

CREATE TABLE vg_publisher(
	publisher_id INT PRIMARY KEY AUTO_INCREMENT,
    publisher_name VARCHAR(50)
);

CREATE TABLE video_games (
	vg_id INT PRIMARY KEY AUTO_INCREMENT,
    vg_name VARCHAR(150),
    publisher_id INT, 
    publish_year VARCHAR(4) DEFAULT 'N/A',
    genre VARCHAR(25),
    CONSTRAINT vg_pub_fk FOREIGN KEY (publisher_id) REFERENCES vg_publisher(publisher_id)
);
ALTER TABLE video_games AUTO_INCREMENT = 139;
/* I am having the vg_id primary key auto increment from a random number so that the rankings and the 
video game surrogate primary key are not the exact same */

CREATE TABLE vg_platform(
	platform_id INT PRIMARY KEY AUTO_INCREMENT,
    platform_name VARCHAR(30)
);

CREATE TABLE games_platform(
	vg_id INT,
    platform_id INT,
    ranking INT,
    NA_sales FLOAT,
    EU_sales FLOAT,
    JPN_sales FLOAT,
    other_sales FLOAT,
    global_sales FLOAT,
    CONSTRAINT game_platform_fk FOREIGN KEY (vg_id) REFERENCES video_games(vg_id),
    CONSTRAINT platform_id_fk FOREIGN KEY (platform_id) REFERENCES vg_platform(platform_id)
);

-- Migrating data into new tables --

INSERT INTO vg_publisher (publisher_name)
	SELECT DISTINCT(publisher)
    FROM vg_csv;
    


INSERT INTO video_games (vg_name, publisher_id, publish_year, genre)
	SELECT name, publisher_id, year, genre
    FROM vg_csv
		JOIN vg_publisher
			ON vg_csv.publisher = vg_publisher.publisher_name;
    



INSERT INTO vg_platform (platform_name)
	SELECT DISTINCT(platform)
    FROM vg_csv;
    



INSERT INTO games_platform
	SELECT vg_id, platform_id, ranking, na_sales, eu_sales, jp_sales, other_sales, global_sales
    FROM video_games
		JOIN vg_csv
			ON video_games.vg_name = vg_csv.name
		JOIN vg_platform
			ON vg_csv.platform = vg_platform.platform_name;
