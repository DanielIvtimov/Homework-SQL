--Homework requirements

--Calculate the count of all songs in the system​
SELECT COUNT(*) AS song_count FROM song;

--Calculate the count of all songs per artist in the system​
SELECT a.name AS artist_name, COUNT(s.id) AS song_count FROM song s
INNER JOIN artist a ON s.artist_id = a.id
GROUP BY a.name;

--Calculate the count of all songs per artist in the system for first 100 albums (ID < 100)​
SELECT a.name AS artist_name, COUNT(s.id) AS song_count FROM song s 
INNER JOIN artist a ON s.artist_id = a.id 
GROUP BY a.name 
HAVING MAX(s.artist_id) < 100;

--Find the maximal duration and the average duration per song for each artist​
SELECT a.name AS artist_name, MAX(s.duration) AS max_duration, AVG(s.duration) AS avg_duration FROM song s
INNER JOIN artist a ON s.artist_id = a.id
GROUP BY a.name;

--Calculate the count of all songs per artist in the system and filter only song count greater than 10​
SELECT a.name AS artist_name, COUNT(s.id) AS song_count FROM song s
INNER JOIN artist a ON s.artist_id = a.id
GROUP BY a.name
HAVING COUNT(s.id) > 10;


--Calculate the count of all songs per artist in the system for first 100 albums (ID < 100) and filter artists with more than 10 song count​
-- ????? (I have no idea :D :D :D)


