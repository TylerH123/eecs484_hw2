SELECT B.Author_ID, COUNT(*)
FROM Books B 
GROUP BY B.Author_ID; 