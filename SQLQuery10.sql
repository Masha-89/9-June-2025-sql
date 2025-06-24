USE [SchoolDB]
GO

/****** Object:  View [dbo].[VW_Subject_Marks]    Script Date: 2025/06/24 16:57:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_Subject_Marks] AS 
SELECT B.[student_id]
        ,[subject_name]
        ,[student_name]
        ,[mark]
        ,[teacher_name]
  FROM [SchoolDB].[dbo].[Subjects] AS A
    JOIN Marks AS B
    ON A.subject_id = B.subject_id
    JOIN [SchoolDB].[dbo].[Students] AS C
    ON B.student_id = C.student_id
    JOIN [SchoolDB].[dbo].[Teachers] AS D
    ON D.subject_id = A.subject_id                     --deem tables
GO


