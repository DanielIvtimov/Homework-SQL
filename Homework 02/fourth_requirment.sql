--Homework requirement 4/6

--Show all album names and it’s rating​
SELECT album.name, album.rating FROM album;

--Show all artists with their name and full name side by side​
SELECT a.name, ad.full_name FROM artist a
INNER JOIN artist_details ad ON a.id = ad.artist_id;

--Show all songs with their lyrics side by side​ 
SELECT s.name AS song_name, sl.lyrics FROM song s
INNER JOIN song_lyrics sl ON s.id = sl.song_id;