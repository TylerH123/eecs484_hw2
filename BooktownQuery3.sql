SELECT ISBN
FROM Editions E, (
  SELECT Book_ID
  FROM Books B, (
    SELECT Author_ID 
    FROM Authors 
    WHERE First_Name = 'Agatha' AND Last_Name = 'Christie'
  ) agatha
  WHERE B.Author_ID = agatha.Author_ID
) inner
WHERE E.Book_ID = inner.Book_ID
ORDER BY ISBN DESC;