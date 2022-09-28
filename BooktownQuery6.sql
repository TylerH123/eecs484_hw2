SELECT B.Title, inner.Publication_Date, A.Author_ID, A.First_Name, A.Last_Name
FROM Books B, Authors A, 
( SELECT E.Book_ID, E.Publication_Date
  FROM Editions E
  WHERE TO_TIMESTAMP(E.Publication_Date, 'YYYY-MM-DD') >= TO_TIMESTAMP('2003-01-01', 'YYYY-MM-DD')
  AND TO_TIMESTAMP(E.Publication_Date, 'YYYY-MM-DD')  <= TO_TIMESTAMP('2008-12-31', 'YYYY-MM-DD')
) inner
WHERE inner.Book_ID = B.Book_ID AND B.Author_ID = A.Author_ID
ORDER BY 
  A.Author_ID ASC, 
  B.Title ASC,
  TO_TIMESTAMP(inner.Publication_Date, 'YYYY-MM-DD') DESC;