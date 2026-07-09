USE [440db];
GO

-- drop tables first so the script can run again without errors
DROP TABLE IF EXISTS Score;
DROP TABLE IF EXISTS Evaluation;
DROP TABLE IF EXISTS Criteria;
DROP TABLE IF EXISTS Judge;
DROP TABLE IF EXISTS Project;
GO

-- Project table stores the hackathon projects
CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    description VARCHAR(500) NOT NULL,
    demo_url VARCHAR(200) NOT NULL,
    source_code_url VARCHAR(200) NOT NULL
);

-- Judge table stores the judges, is_senior shows if the judge gets double vote later in the query
CREATE TABLE Judge (
    judge_id INT PRIMARY KEY,
    judge_name VARCHAR(100) NOT NULL,
);


-- Criteria table stores the scoring categories, max_score is 10 for most criteria and 5 for demo quality/societal impact
CREATE TABLE Criteria (
    criteria_id INT PRIMARY KEY,
    criteria_name VARCHAR(100) NOT NULL,
    max_score INT NOT NULL,
    CONSTRAINT ck_Criteria_max_score
    CHECK (max_score IN (5, 10))
);

-- Evaluation connects a project with a judge
CREATE TABLE Evaluation (
    evaluation_id INT PRIMARY KEY,
    project_id INT NOT NULL,
    judge_id INT NOT NULL,
    is_senior BIT NOT NULL,
    CONSTRAINT fk_Evaluation_project
    FOREIGN KEY (project_id) REFERENCES Project(project_id),
    CONSTRAINT fk_Evaluation_judge
    FOREIGN KEY (judge_id) REFERENCES Judge(judge_id)
);

-- Score stores the score for each
CREATE TABLE Score (
    score_id INT PRIMARY KEY,
    evaluation_id INT NOT NULL,
    criteria_id INT NOT NULL,
    score_value INT NOT NULL,
    CONSTRAINT fk_Score_evaluation
    FOREIGN KEY (evaluation_id) REFERENCES Evaluation(evaluation_id),
    CONSTRAINT fk_Score_criteria
    FOREIGN KEY (criteria_id) REFERENCES Criteria(criteria_id)
);
GO

-- unique indexes so names are not repeated
CREATE UNIQUE INDEX idx_Project_project_name
ON Project(project_name);
GO
CREATE UNIQUE INDEX idx_Criteria_criteria_name
ON Criteria(criteria_name);
GO

-- index to make searching scores by evaluation faster
CREATE INDEX idx_Score_evaluation_id
ON Score(evaluation_id);
GO