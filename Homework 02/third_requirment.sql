--Homework requirement 3/6​


--List all artist names and artist full names without duplicates​
SELECT a.name, ad.full_name
FROM artist a
INNER JOIN artist_details ad ON a.id = ad.artist_id
GROUP BY a.name, ad.full_name;

--List all artist names and artist full names with duplicates​
SELECT a.name, ad.full_name
FROM artist a
INNER JOIN artist_details ad ON a.id = ad.artist_id

--List all common artist names and artist full names​
SELECT a.name, ad.full_name
FROM artist a
INNER JOIN artist_details ad ON a.id = ad.artist_id
GROUP BY a.name, ad.full_name
