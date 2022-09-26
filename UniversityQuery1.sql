-- SELECT CID FROM 
-- WHERE 
--     SELECT * 
--     FROM Students S, Enrollments E 
--     WHERE S.SID == E.SID 

SELECT inner.SID, inner.CID, inner.Major 
FROM (   
    SELECT S.SID, E.CID, S.Major
    FROM Students S 
    LEFT JOIN Enrollments E 
    ON S.SID = E.SID
) inner;



SELECT inner.CID, COUNT(*)
FROM (   
    SELECT S.SID, E.CID, S.Major
    FROM Students S 
    LEFT JOIN Enrollments E 
    ON S.SID = E.SID
) inner
GROUP BY inner.CID
HAVING COUNT(*) > 1;