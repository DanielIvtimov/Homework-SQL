-- Create table Grade Table
CREATE TABLE IF NOT EXISTS grade(
	id SERIAL PRIMARY KEY,
	studentID INTEGER NOT NULL,
	courseID INTEGER NOT NULL,
	teacherID INTEGER NOT NULL,
	grade VARCHAR(10) NOT NULL,
	comment TEXT NOT NULL,
	createdDate INTEGER NOT NULL
);

-- Adding data in Grade table
INSERT INTO grade (studentID, courseID, teacherID, grade, comment, createdDate)
VALUES
(1, 1, 1, 'A', 'Excellent work!', 15052024),
(2, 2, 2, 'B', 'Good effort.', 14052024),
(3, 3, 3, 'C', 'Needs improvement.', 16052024);


-- Read  data in Grade table 
SELECT * FROM grade;