SELECT TOP (1000) [teacher_id]
      ,[teacher_name]
      ,[subject_id]
  FROM [SchoolDB].[dbo].[Teachers];
------------------------------------------------------------
  SELECT TOP (1000) [subject_id]
      ,[subject_name]
  FROM [SchoolDB].[dbo].[Subjects];
  ----------------------------------------------------------
  SELECT [student_id]
      ,[student_name]
      ,[grade]
      ,[age]
  FROM [SchoolDB].[dbo].[Students];
  ----------------------------------------------------------
  SELECT TOP (1000) [mark_id]
      ,[student_id]
      ,[subject_id]
      ,[mark]
  FROM [SchoolDB].[dbo].[Marks];

  ----------------------------------------------------------
  SELECT B.[student_id]
        ,[subject_name]
        ,[student_name]
        ,[mark]
  FROM [SchoolDB].[dbo].[Subjects] AS A
    JOIN Marks AS B
    ON A.subject_id = B.subject_id
    JOIN [SchoolDB].[dbo].[Students] AS C
    ON B.student_id = C.student_id