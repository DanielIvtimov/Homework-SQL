-- Create table AchievmentType Table
CREATE TABLE IF NOT EXISTS AchievmentType(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	description VARCHAR(100) NOT NULL,
	participationRate INTEGER NOT NULL
);

-- Adding data in AchievmentType table
INSERT INTO course (name, credit, academicYear, semester)
VALUES
('An introduction to the IT world', 4, '2023', 1),
('Web Development', 7, '2024', 2),
('Cyber Security', 10, '2025', 3);

-- Read  data in AchievmentType table 
SELECT * FROM course;