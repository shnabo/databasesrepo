-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.
SELECT id FROM artists WHERE name = 'Queen';
SELECT title FROM albums WHERE artist_id ='51';


-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".

SELECT COUNT(column_name) FROM table_name;

SELECT id FROM media_types WHERE name = 'Protected MPEG-4 video file'; (returns id 3)
SELECT COUNT(name) FROM tracks WHERE media_type_id = '3'; (returns 214)


-- 3) Find the least expensive track that has the genre "Electronica/Dance".
SELECT(id) FROM genres WHERE name ='Electronica/Dance';  #15
 SELECT * FROM tracks WHERE genre_id=15 ORDER BY unit_price LIMIT(1); #--> returns only one, however there were a few w/ the same price, just picked one.

 

-- 4) Find the all the artists whose names start with A.


SELECT id, name FROM artists where name ILIKE'a%';

-- 5) Find all the tracks that belong to playlist 1.

SELECT track_id FROM playlists_tracks WHERE playlist_id = 1;
