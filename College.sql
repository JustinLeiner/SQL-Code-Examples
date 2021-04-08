-- 1) Write a query to find the lowest GPA of students applying to CS

Select min(GPA)
From Student, Apply
Where Student.sID=Apply.sID and major='CS';

-- 2) Write a query to find the Highest GPA of students applying to CS

Select max(GPA)
From Student, Apply
Where Student.sID=Apply.sID and major='CS';

-- 3) Write a query to find the minimum and maximum GPAs of applicants to each college and major

Select cName, major, min(GPA), max(GPA)
From Student, Apply
Where Student.sID=Apply.sID
Group by cName, major;

-- 4) Write a query to find the total college enrollments by state

Select state, sum(enrollment)
From College
Group by state;

-- 5) Write a query to find the average GPA of students who applied to CS

Select avg(GPA)
From Student
Where sID in (Select sID
From Apply
Where major='CS');

-- 6) Write a query to find the Amount by which the average GPA of students applying to CS exceeds the average of students not applying to CS

Select
(Select avg(GPA)
From Student
Where sID in (Select sID
From Apply
Where major='CS'))
-
(Select avg(GPA)
From Student
Where sID not in (Select sID
From Apply
Where major='CS'));

-- 7) Write a query to find the number of rows in the Student table

Select count(*)
From Student;

-- 8) Write a query to find the number of distinct students applying to Cornell

Select count(distinct sID)
From Apply
Where cName='Cornell';

-- 9) Write a query to find the number of colleges applied to by each student

Select sID, count(distinct cName)
From Apply
Group by sID;

-- 10) Write a query to find the Colleges with fewer than 5 applications

Select cName
From Apply
Group by cName
Having count(*) < 5;