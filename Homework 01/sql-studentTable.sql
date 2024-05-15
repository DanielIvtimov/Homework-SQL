-- Create table Student 
CREATE TABLE IF NOT EXISTS student(
	id SERIAL PRIMARY KEY,
	firstName VARCHAR(100) NOT NULL,
	lastName VARCHAR(100) NOT NULL,
	dateOfBirth INTEGER NOT NULL,
	enrolledDate INTEGER NOT NULL,
	gender VARCHAR(50) NOT NULL,
	nationalIDNumber INTEGER NOT NULL,
    studentCartNumber INTEGER NOT NULL
);

-- Adding data in Student table
INSERT INTO student (id, firstName, lastName, dateOfBirth, enrolledDate, gender, nationalIDNumber, studentCartNumber)
VALUES
(1, 'Reece', 'James', 08121999, 15032017, 'Male', 14, 24),
(2, 'Christopher', 'Nkunku', 14111997, 01072023, 'Male', 18, 19);

-- Read  data in Student table 
SELECT * FROM student;
