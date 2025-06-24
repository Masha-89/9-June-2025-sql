CREATE DATABASE SchoolDB;

USE SchoolDB;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    grade VARCHAR(10),
    age INT
);

CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50)
);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(50),
    subject_id INT
);

CREATE TABLE Marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject_id INT,
    mark INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);

INSERT INTO Students (student_id, student_name, grade, age) VALUES
(1, 'Alice', 'Grade 10', 15), (2, 'Bob', 'Grade 10', 16), (3, 'Cathy', 'Grade 11', 16),
(4, 'David', 'Grade 10', 15), (5, 'Ella', 'Grade 11', 17), (6, 'Frank', 'Grade 10', 15),
(7, 'Grace', 'Grade 11', 16), (8, 'Harry', 'Grade 12', 17), (9, 'Ivy', 'Grade 12', 18),
(10, 'Jack', 'Grade 12', 17), (11, 'Kate', 'Grade 10', 15), (12, 'Leo', 'Grade 11', 16),
(13, 'Mia', 'Grade 11', 17), (14, 'Nina', 'Grade 10', 15), (15, 'Owen', 'Grade 11', 16),
(16, 'Paul', 'Grade 12', 18), (17, 'Rita', 'Grade 12', 17), (18, 'Sam', 'Grade 10', 15),
(19, 'Tina', 'Grade 11', 16), (20, 'Umar', 'Grade 12', 18),  (21, 'Umar', 'Grade 12', 18),
(22, 'Vera', 'Grade 11', 16), (23, 'Will', 'Grade 12', 17), (24, 'Xena', 'Grade 10', 15),
(25, 'Yara', 'Grade 11', 16), (26, 'Zane', 'Grade 12', 18), (27, 'Amy', 'Grade 10', 15),
(28, 'Brian', 'Grade 11', 16), (29, 'Clara', 'Grade 12', 17), (30, 'Dan', 'Grade 10', 15);

INSERT INTO Subjects (subject_id, subject_name) VALUES
(1, 'Mathematics'), (2, 'Science'), (3, 'English'),
(4, 'History'), (5, 'Geography'), (6, 'Biology'),
(7, 'Physics'), (8, 'Chemistry'), (9, 'Computer Science'),
(10, 'Accounting'), (11, 'Economics'), (12, 'Business Studies'),
(13, 'Art'), (14, 'Music'), (15, 'Drama'),
(16, 'Physical Education'), (17, 'Technology'), (18, 'Civics'),
(19, 'Agriculture'), (20, 'French');

INSERT INTO Teachers (teacher_id, teacher_name, subject_id) VALUES
(1, 'Mr. Adams', 1), (2, 'Ms. Baker', 2), (3, 'Mrs. Clark', 3),
(4, 'Mr. Doe', 4), (5, 'Ms. Evans', 5), (6, 'Mr. Fox', 6),
(7, 'Mrs. Gray', 7), (8, 'Mr. Hill', 8), (9, 'Ms. Ivy', 9),
(10, 'Mr. Jones', 10), (11, 'Ms. King', 11), (12, 'Mr. Lane', 12),
(13, 'Ms. Moon', 13), (14, 'Mr. Nash', 14), (15, 'Ms. Otto', 15),
(16, 'Mr. Prince', 16), (17, 'Ms. Queen', 17), (18, 'Mr. Reed', 18), (19, 'Ms. Stone', NULL),
(20, 'Mr. Trent', NULL);  -- NULL subjects for right/full outer joins

INSERT INTO Marks (mark_id, student_id, subject_id, mark) VALUES
(1, 1, 1, 85), (2, 2, 2, 76), (3, 3, 3, 88),
(4, 4, 4, 72), (5, 5, 5, 90), (6, 6, 6, 67),
(7, 7, 7, 93), (8, 8, 8, 79), (9, 9, 9, 84),
(10, 10, 10, 81), (11, 11, 11, 69), (12, 12, 12, 78),
(13, 13, 13, 71), (14, 14, 14, 74), (15, 15, 15, 86),
(16, 16, 16, 77), (17, 17, 17, 88), (18, 18, 18, 92),
(19, 19, 19, 79), (20, 20, 20, 83),(21, 19, 2, 66), 
(22, 20, 1, 91), (23, 21, 5, 65), (24, 22, 5, 68), (25, 23, 2, 77),
(26, 24, 1, 83), (27, 25, 3, 69), (28, 26, 2, 76), (29, 27, 4, 88), (30, 28, 1, 70);
