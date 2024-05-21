--Homework requirement 1/6

--Show all details for artists born before 01-04-1992​
SELECT * FROM artist_details ad
WHERE ad.date_of_birth < '1992-04-01';

--Show all details for artists from Canada​
SELECT * FROM artist_details ad
WHERE ad.country = 'Canada';
-- Promeniv od Germany vo Canada bidejki nemame takov podatok :D 

--Show all songs longer than 4 minutes
SELECT song, duration FROM song
WHERE duration > '00:04:00';

--Show all explicit songs​
SELECT * FROM song
WHERE explicit = 'true';


--Show all genres having ‘o’ in the name​
SELECT * FROM genre
WHERE genre.name LIKE '%o%';

--Show all lyrics having the word ‘that’
SELECT * FROM song_lyrics
WHERE song_lyrics.lyrics LIKE '%that%';