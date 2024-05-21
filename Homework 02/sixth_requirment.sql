--Homework requirement 6/6

--List all song names with genre names​
SELECT s.name AS song_name, g.name AS genre_name FROM song s
INNER JOIN songs_genres sg ON s.id = sg.song_id
INNER JOIN genre g ON sg.genre_id = g.id;

--List all song names with playlist names​
SELECT s.name AS song_name, p.title AS playlist_name FROM song s
INNER JOIN playlist_songs ps ON s.id = ps.song_id
INNER JOIN playlist p ON ps.playlist_id = p.id;



SELECT p.title AS playlist_name, COUNT(*) AS song_count FROM song s
INNER JOIN playlist_songs ps ON s.id = ps.song_id
INNER JOIN playlist p ON ps.playlist_id = p.id
GROUP BY p.title;

--List all album names and rating that have rating above 4 with the artist name​
SELECT a.name AS album_name, a.rating, ar.name AS artist_name FROM album a
INNER JOIN artist ar ON a.artist_id = ar.id
WHERE a.rating > 4;

--List all explicit song names and artist names without missing data​
SELECT s.name AS song_name, ar.name AS artist_name FROM song s
INNER JOIN artist ar ON s.artist_id = ar.id
INNER JOIN song_lyrics sl ON s.id = sl.song_id
WHERE s.explicit = 'false';
