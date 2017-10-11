SELECT Name FROM Student;

SELECT Name FROM Department;

SELECT b.Name
FROM Building b, Department d
WHERE d.DID = 'CompSci' AND b.DID = d.DID;

SELECT s.Name
FROM Staff s, Chair c
WHERE s.SID = c.SID;

SELECT s1.Name AS Student1, s2.Name AS Student2
FROM Student s1, Student s2
WHERE s1.Major = s2.Major AND s1.StudentID <> s2.StudentID;

SELECT Name
FROM Student
WHERE Major = 'CompSci'
UNION 
SELECT Name
FROM Student
WHERE Year = 'Senior';

SELECT Name
FROM Staff
EXCEPT
SELECT Name
FROM Staff s, Professor p
WHERE p.SID = s.SID;

SELECT COUNT (DISTINCT StudentID), Major
FROM Student
GROUP BY Major;

SELECT S.Name, SUM(C.Credits)
FROM Student S, Takes T, CourseDescription C
WHERE T.StudentID = S.StudentID AND T.CID = C.CID AND S.Name = 'Evan Kivolowitz';



SELECT AVG(creditSUM)
FROM (
SELECT S.Name, SUM(C.Credits) AS creditSUM
FROM Student S, Takes T, CourseDescription C
WHERE T.StudentID = S.StudentID AND T.CID = C.CID AND S.Year = 'Senior' AND 
  T.Semester = 'FALL' AND T.Year = '2017' AND S.Major = 'CompSci'
GROUP BY S.Name
);

