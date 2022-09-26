SELECT Courses.CID FROM Courses 
EXCEPT 
SELECT CID 
FROM ( 
    SELECT inner.CID, COUNT(*)
    FROM (   
        SELECT S.SID, E.CID, S.Major
        FROM Students S, Enrollments E 
        WHERE S.SID = E.SID AND S.Major != 'CS'
    ) inner
    GROUP BY inner.CID
    HAVING COUNT(*) > 9
); 