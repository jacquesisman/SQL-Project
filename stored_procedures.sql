
DELIMITER $$ 

DROP PROCEDURE IF EXISTS getPodcastCount$$

CREATE PROCEDURE getPodcastCount(IN inPublishedDateStart DATE, IN inPublishedDateEnd DATE)
BEGIN
	
	SET @publishedDateStart := inPublishedDateStart;
	SET @publishedDateEnd := inPublishedDateEnd;

	SELECT COUNT(*)
	FROM StartUpYoutube
	WHERE publishedDate BETWEEN @publishedDateStart AND @publishedDateEnd;

END

DELIMITER ;


CALL getPodcastCount('2020-01-01', '2021-01-01');