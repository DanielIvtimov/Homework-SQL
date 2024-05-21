--Homework 

--Find the song count, maximal duration, and the average duration per artist on all songs in the system. Filter only records where maximal duration is more than the average duration​
SELECT a.name AS artist_name, COUNT(s.id) AS song_count,MAX(s.duration) AS max_duration, AVG(s.duration) AS avg_duration FROM song s
INNER JOIN artist a ON s.artist_id = a.id
GROUP BY a.name
HAVING MAX(s.duration) > AVG(s.duration);

--Create a new view (vw_ArtistSongCounts) that will list all artist IDs and count of songs per artist​
CREATE VIEW vw_ArtistSongCounts AS
SELECT artist_id, COUNT(*) AS song_count
FROM song
GROUP BY artist_id;

SELECT * FROM vw_ArtistSongCounts;

--Change the view to show artist names instead of artist ID​
--??? (I have no idea :D :D :D)

--List all rows from the view ordered by the biggest song count​
SELECT * FROM vw_ArtistSongCounts 
ORDER BY song_count DESC;

--Create a new view (vw_ArtistAlbumDetails) that will list all artists (name) and count the albums they have​
CREATE VIEW vw_ArtistAlbumDetails AS
SELECT a.name AS artist_name, COUNT(alb.id) AS album_count
FROM artist a
LEFT JOIN album alb ON a.id = alb.artist_id
GROUP BY a.name;

SELECT * FROM vw_ArtistAlbumDetails;
