USE [440db];
GO

-- View all table data
SELECT *  FROM Project;
SELECT * FROM Judge;
SELECT * FROM Criteria;
SELECT * FROM Evaluation;
SELECT * FROM Score;
GO

-- Find the top 3 projects based on total scores
-- Senior judges count as double points
SELECT TOP 3
    P.project_name,
    SUM(
        CASE 
            WHEN E.is_senior = 1 THEN S.score_value * 2
            ELSE S.score_value
        END
    ) AS total_score
FROM Project P
JOIN Evaluation E ON P.project_id = E.project_id
JOIN Score S ON E.evaluation_id = S.evaluation_id
GROUP BY P.project_name
ORDER BY total_score DESC;
GO
