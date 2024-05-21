--Homework requirement 5/6

--Show artist names with album names side by side
SELECT a.name AS artist_name, album.name AS album_name FROM artist a
INNER JOIN album ON a.id = album.artist_id;

--Show the artist names and their spouse name for all artists including ones that don’t have details​
SELECT a.name AS artist_name, ad.spouse_name FROM artist a
LEFT JOIN artist_details ad ON a.id = ad.artist_id
GROUP BY a.name, ad.spouse_name;

--Show artist names and list of countries for all, including missing artist and missing details info​
SELECT a.name AS artist_name, ad.country, COUNT(*) AS artist_count FROM artist a
INNER JOIN artist_details ad ON a.id = ad.artist_id
GROUP BY a.name, ad.country;

