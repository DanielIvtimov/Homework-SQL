-- Create table Course Table
CREATE TABLE IF NOT EXISTS course(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	credit INTEGER NOT NULL,
	academicYear VARCHAR(50) NOT NULL,
	semester INTEGER NOT NULL
);

-- Adding data in GradeDetails table
INSERT INTO course (name, credit, academicYear, semester)
VALUES
('An introduction to the IT world', 4, '2023', 1),
('Web Development', 7, '2024', 2),
('Cyber Security', 10, '2025', 3);

-- Read  data in GradeDetails table 
SELECT * FROM course;