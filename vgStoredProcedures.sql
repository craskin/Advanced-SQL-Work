-- Dropping procedures for coding purposes --
DROP PROCEDURE IF EXISTS gameProfitByRegion;
DROP PROCEDURE IF EXISTS genreRankingByRegion;
DROP PROCEDURE IF EXISTS publishedReleases;
DROP PROCEDURE IF EXISTS addNewRelease;

-- making procedures -- 

delimiter //
CREATE PROCEDURE gameProfitByRegion (IN minProfit FLOAT, IN region VARCHAR(2))
BEGIN
	IF region = 'WD' THEN
		SELECT vg_name, SUM(global_sales) AS global_sales
        FROM video_games
			JOIN games_platform
				ON video_games.vg_id = games_platform.vg_id
        GROUP BY vg_name
        HAVING SUM(global_sales) >= minProfit
        ORDER BY SUM(global_sales) DESC;
	ELSEIF region = 'NA' THEN
		SELECT vg_name, SUM(na_sales) as na_sales
        FROM video_games
			JOIN games_platform
				ON video_games.vg_id = games_platform.vg_id
        GROUP BY vg_name
        HAVING SUM(na_sales) >= minProfit
        ORDER BY SUM(na_sales) DESC;
	ELSEIF region = 'EU' THEN
		SELECT vg_name, SUM(eu_sales) as eu_sales
        FROM video_games
			JOIN games_platform
				ON video_games.vg_id = games_platform.vg_id
        GROUP BY vg_name
        HAVING SUM(eu_sales) >= minProfit
        ORDER BY SUM(eu_sales) DESC;
	ELSEIF region = 'JP' THEN
		SELECT vg_name, SUM(jpn_sales) as jpn_sales
        FROM video_games
			JOIN games_platform
				ON video_games.vg_id = games_platform.vg_id
        GROUP BY vg_name
        HAVING SUM(jpn_sales) >= minProfit
        ORDER BY SUM(jpn_sales) DESC;
	END IF;

END //
delimiter ;
/* Grouping by vg_name because to actually count total sales you consolodate all sales across platforms for every game */

delimiter //
CREATE PROCEDURE genreRankingByRegion (IN genre_name VARCHAR(25), IN region VARCHAR(2))
BEGIN
	IF region = 'WD' THEN
		WITH cte_global AS (
			SELECT RANK() OVER (Order by SUM(global_sales) DESC) AS global_ranking, genre
			FROM video_games
				JOIN games_platform
					ON video_games.vg_id = games_platform.vg_id
			GROUP BY genre
		)
		SELECT global_ranking
		FROM cte_global
		WHERE genre = genre_name;
	ELSEIF region = 'NA' THEN
		WITH cte_na AS (
			SELECT RANK() OVER (Order by SUM(na_sales) DESC) AS na_ranking, genre
			FROM video_games
				JOIN games_platform
					ON video_games.vg_id = games_platform.vg_id
			GROUP BY genre
		)
		SELECT na_ranking
		FROM cte_na
		WHERE genre = genre_name;
	ELSEIF region = 'EU' THEN
		WITH cte_eu AS (
			SELECT RANK() OVER (Order by SUM(eu_sales) DESC) AS eu_ranking, genre
			FROM video_games
				JOIN games_platform
					ON video_games.vg_id = games_platform.vg_id
			GROUP BY genre
		)
		SELECT eu_ranking
		FROM cte_eu
		WHERE genre = genre_name;
	ELSEIF region = 'JP' THEN
		WITH cte_jpn AS (
			SELECT RANK() OVER (Order by SUM(jpn_sales) DESC) as jpn_ranking, genre
			FROM video_games
				JOIN games_platform
					ON video_games.vg_id = games_platform.vg_id
			GROUP BY genre
		)
		SELECT jpn_ranking
		FROM cte_jpn
		WHERE genre = genre_name;
    END IF;
END //
delimiter ;



delimiter //
CREATE PROCEDURE publishedReleases (IN pub_name VARCHAR(50), IN genre_name VARCHAR(25))
BEGIN
	SELECT COUNT(DISTINCT(vg_name)) AS 'Number of Games Published'
    FROM video_games
		JOIN vg_publisher
			ON video_games.publisher_id = vg_publisher.publisher_id
	WHERE publisher_name = pub_name AND genre_name = genre;
END //
delimiter ;
/* I'm using distinct here because I am not counting games that have been released on more
than one platform as separate releases */


delimiter //
CREATE PROCEDURE addNewRelease (IN game_title VARCHAR(150), IN plat_name VARCHAR(30), IN genre_name VARCHAR(25), IN pub_name VARCHAR(25))
BEGIN
	DECLARE return_value VARCHAR(30);
	IF pub_name NOT IN (SELECT publisher_name FROM vg_publisher) THEN 
		INSERT INTO vg_publisher(publisher_name) VALUES (pub_name);
    END IF;
    
    IF plat_name NOT IN (SELECT platform_name FROM vg_platform) THEN
		INSERT INTO vg_platform(platform_name) VALUES (plat_name);
	END IF;
    
    IF game_title NOT IN (SELECT vg_name FROM video_games) THEN
		INSERT INTO video_games (vg_name, publisher_id, genre) VALUES
        (game_title, (SELECT publisher_id FROM vg_publisher WHERE publisher_name = pub_name), genre_name);
	END IF;
    
    IF game_title NOT IN (SELECT vg_name FROM video_games JOIN games_platform ON video_games.vg_id = games_platform.vg_id)  THEN
		INSERT INTO games_platform (vg_id, platform_id) VALUES
			((SELECT vg_id FROM video_games WHERE vg_name = game_title), (SELECT platform_id FROM vg_platform WHERE platform_name = plat_name));
	END IF;
    
    SELECT return_value AS 'Operation Successful';
    
END //
delimiter ;



