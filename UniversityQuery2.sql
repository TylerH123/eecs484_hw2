SELECT * 
FROM Students S, Members M1, Members M2, Members M3, Courses C, 
WHERE


SELECT S.Name 
FROM Courses C, Enrollments E, Students S 
WHERE S.SID = E.SID AND (
  (E.CID = C.CID AND (C.C_Name = 'EECS484' or C.C_Name = 'EECS485'))); 



SELECT S.SID FROM
( SELECT S.SID, E.CID, C.C_Name
  FROM Students S, Enrollments E, Courses C
  WHERE S.SID = E.SID AND E.CID = C.CID
) WHERE 