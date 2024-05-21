--Homework requirement 2/6​

--Show all details from artists that have ‘e’ in their full name, ordered by date of birth by the oldest one to the youngest one​
SELECT * FROM artist_details ad
WHERE ad.full_name LIKE '%e%'
ORDER BY ad.birthdate ASC;

--Show all non-explicit songs sorted by duration from shortest to longest​
SELECT * FROM song
WHERE explicit = 'false'
ORDER BY duration ASC;

--Show albums that have ‘u’ in their name sorted by rating, with worst rating on top
SELECT * FROM album
WHERE album.name LIKE '%u%'
ORDER BY album.rating ASC;