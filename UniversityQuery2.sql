-- SELECT Students.SID, Students.Names FROM Students
-- WHERE 


SELECT 

SELECT DISTINCT S.Name 
FROM Students S, Courses C1, Courses C2, Courses C3, Enrollments E1, Enrollments E2, Enrollments E3, Members M1, Members M2
WHERE S.SID = M1.SID AND M1.PID = M2.PID AND 
      S.SID = E1.SID AND E1.CID = C1.CID AND (C1.C_Name = 'EECS482' OR C1.C_Name = 'EECS483') AND 
      S.SID = E2.SID AND E2.CID = C2.CID AND (C2.C_Name = 'EECS484' OR C2.C_Name = 'EECS485') AND 
      S.SID = E3.SID AND E3.CID = C3.CID AND C3.C_Name = 'EECS280'; 
