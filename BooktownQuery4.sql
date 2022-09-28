SELECT First_Name, Last_Name
FROM (
  SELECT DISTINCT A.First_Name, A.Last_Name, A.Author_ID
  FROM Authors A, Books B1, Books B2, Subjects S1, Subjects S2 
  WHERE A.Author_ID = B1.Author_ID AND B1.Subject_ID = S1.Subject_ID AND S1.Subject = 'Children/YA' AND 
        A.Author_ID = B2.Author_ID AND B2.Subject_ID = S2.Subject_ID AND S2.Subject = 'Fiction'
)
ORDER BY First_Name, Last_Name;