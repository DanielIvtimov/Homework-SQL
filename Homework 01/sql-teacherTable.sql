-- Create table Teacher
CREATE TABLE IF NOT EXISTS teacher(
	id SERIAL PRIMARY KEY,
	firstName VARCHAR(100) NOT NULL,
	lastName VARCHAR(100) NOT NULL,
	dateOfBirth INTEGER NOT NULL,
	academicRank VARCHAR(100) NOT NULL,
	hireDate INTEGER NOT NULL
);

-- Adding data in Teacher table
INSERT INTO teacher (firstName, lastName, dateOfBirth, academicRank, hireDate)
VALUES
('Mauricio', 'Pochettino', 02031972, 'Professor', 01072023)

-- Read  data in Teacher table
SELECT * FROM teacher

