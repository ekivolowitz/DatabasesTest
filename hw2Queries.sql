SELECT Name FROM Students;
SELECT Name FROM Departments;
SELECT b.Name
FROM Building b, Department d
WHERE d.DID == 'CompSci' AND b.DID == d.DID;
SELECT s.Name
FROM Staff s, Chair c
WHERE s.SID == c.SID;
SELECT s1.Name AS Student 1, s2.Name AS Student2
FROM Student s1, Student s2
WHERE s1.Major = s2.Major;
SELECT Name
FROM Student
WHERE Major = 'CompSci';
UNION
SELECT Name
FROM Student
WHERE Year = 'Senior';
SELECT Name
FROM Staff;
EXCEPT
SELECT Name
FROM Staff s, Professor p
WHERE p.SID = s.SID;
SELECT COUNT (DISTINCT StudentID)
FROM Student
GROUP BY Major;
SELECT SUM(C.Credits)
FROM Student S, Takes T, CourseDescription C
WHERE T.SID = S.SID AND T.CID = C.CID AND S.Name = 'Evan Kivolowitz';
SELECT AVG(C.Credits)
FROM Student S, Takes T, CourseDescription C
WHERE T.SID = S.SID AND T.CID = C.CID AND S.Year = 'Senior';
