-- This is the way we do comment in SQL.
-- step 1: Create the Database

CREATE DATABASE School;

-- step 2: Use the Database
use School;


-- step 3: Create a student table
CREATE TABLE students (
StudentID int auto_increment,
FirstName varchar(50),
LastName varchar(50),
Age int,
EnrollmentDate date,
PRIMARY KEY (StudentID)
);

-- step 4: Insert Data into the Students Table\
INSERT INTO students (FirstName, LastName, Age, EnrollmentDate)
VALUES ('John', 'Doe', 20, '2024-08-21'),
('Berry', 'Classen', 28, '2024-08-21'),
('Dwayne', 'Smith', 25, '2024-07-21'),
('Jane', 'Smith', 22, '2024-08-21');

-- step 5: Retrive Data from the Students Table
SELECT * FROM students;
