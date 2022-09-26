

-- SELECT CID
-- FROM ENROLLMENTS
-- WHERE 

SELECT CID FROM 
WHERE 
    SELECT * 
    FROM Students S, Enrollments E 
    WHERE S.SID == E.SID 
    

SELECT inner.SID, inner.CID, inner.Major FROM 
    ( SELECT * 
    FROM Students S, Enrollments E 
    WHERE S.SID == E.SID ) inner 
    GROUP BY inner.CID 
HAVING COUNT()