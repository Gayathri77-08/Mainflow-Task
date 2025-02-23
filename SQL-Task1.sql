# Creating Database
CREATE DATABASE StudentManagement;

USE StudentManagement;

# Creating Table 
create  table Students (
   Student_ID INT PRIMARY KEY,
   Name VARCHAR(50),
   Gender VARCHAR(1),
   Age INT ,
   Grade VARCHAR(10),
   MathScore INT ,
   ScienceScore INT ,
   EnglishScore INT
   );
   
# Inserting Values into Students Table 
INSERT INTO Students VALUES (1, "Virat", 'M', 18, 'A', 92, 97, 93); 
INSERT INTO Students VALUES (2, "Anushka", 'F', 17, 'B', 83, 87 , 81);
INSERT INTO Students VALUES (3, "Arjun", 'M', 17, 'C', 78, 71 , 79);
INSERT INTO Students VALUES (4, "Sneha", 'F', 18, 'A', 93, 97 , 91);
INSERT INTO Students VALUES (5, "Siddharth", 'M', 18, 'B', 86, 82 , 85);
INSERT INTO Students VALUES (6, "Kiara", 'F', 17, 'C', 73, 77 , 71);
INSERT INTO Students VALUES (7, "Tarak", 'M', 18, 'A', 96, 97 , 92);
INSERT INTO Students VALUES (8, "Pranitha", 'F', 17, 'B', 88, 81 , 84);
INSERT INTO Students VALUES (9, "Ritesh", 'M', 18, 'C', 71, 77 , 75);
INSERT INTO Students VALUES (10, "Genelia", 'F', 17, 'A', 92, 94 , 96);

# 1) Display all students and their details to get an overview of the data.
select * from Students;

# 2) Calculate the average scores for each subject to understand subject-wise performance.
SELECT AVG(EnglishScore) FROM Students;
SELECT AVG(ScienceScore) FROM Students;
SELECT AVG(MathScore) FROM Students;

# 3) Find the student(s) with the highest total score across all subjects to identify the top performer
SELECT name, (MathScore + ScienceScore + EnglishScore) AS total_score
FROM Students
ORDER BY total_score DESC;
   
# 4) Count the number of students in each grade to observe grade distributions
SELECT Grade, COUNT(*) AS student_count
FROM Students
GROUP BY Grade
ORDER BY student_count DESC;
   
# 5) Find the average score for male and female students to compare performance by gender
SELECT Gender, AVG(MathScore + ScienceScore + EnglishScore) as avg_score
FROM Students
GROUP BY Gender
ORDER BY avg_score;

# 6) Identify students whose Math score is above 80 to highlight high achievers in Math.
SELECT name, MathScore
FROM Students
WHERE MathScore >80 ; 

# 7) Update the grade of a student with a specific Student ID to reflect changes or corrections.
UPDATE Students
SET EnglishScore = 88
WHERE Student_ID = 2;

select * from Students;