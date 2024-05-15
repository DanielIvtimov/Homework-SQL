-- Create table GradeDetails
CREATE TABLE IF NOT EXISTS GradeDetails(
	id SERIAL PRIMARY KEY,
	gradeID VARCHAR(10) NOT NULL,
	achievmentTypeID VARCHAR(50) NOT NULL, 
	achievmentPoints INTEGER NOT NULL,
	achievmentMaxPoints INTEGER NOT NULL,
	achievmentDate INTEGER NOT NULL
);

-- Adding data in GradeDetails table
INSERT INTO GradeDetails (gradeID, achievmentTypeID, achievmentPoints, achievmentMaxPoints, achievmentDate)
VALUES
('A', 'Test', 90, 100, 15052024),
('B', 'Homework', 85, 100, 20122023),
('C', 'Project', 75, 100, 24032024);

-- Read  data in GradeDetails table 
SELECT * FROM GradeDetails
