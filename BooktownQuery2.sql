SELECT Subjects.Subject FROM 
Subjects, (
  SELECT Subjects.Subject_ID
  FROM Subjects
  MINUS
  SELECT DISTINCT Books.Subject_ID 
  FROM Books
) inner
WHERE Subjects.Subject_ID = inner.Subject_ID
ORDER BY Subjects.Subject;