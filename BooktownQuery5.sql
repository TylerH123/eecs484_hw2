SELECT DISTINCT A.Author_ID, A.First_Name, A.Last_Name
FROM Authors A, Books B, 
( SELECT DISTINCT S.Subject_ID
  FROM Subjects S, Authors A, Books B
  WHERE A.First_Name = 'J. K.' AND A.Last_Name = 'Rowling' 
  AND B.Author_ID = A.Author_ID AND B.Subject_ID = S.Subject_ID
) inner
WHERE B.Subject_ID = inner.Subject_ID AND A.Author_ID = B.Author_ID
ORDER BY A.Last_Name ASC, A.Author_ID DESC;