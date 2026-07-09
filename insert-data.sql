USE [440db];
GO

-- Insert sample hackathon projects
INSERT INTO Project VALUES
(1, 'SmartBin', 'An IoT-powered waste sorting bin that uses sensors and machine learning to categorize and separate recyclable materials.', 'https://demo.smartbin.io', 'https://github.com/hackathon2024/smartbin'),
(2, 'AidVision', 'A vision assistant app that helps visually impaired users navigate indoor and outdoor environments using object recognition and speech feedback.', 'https://demo.aidvision.ai', 'https://github.com/hackathon2024/aidvision'),
(3, 'EcoRoute', 'A green-routing platform that provides carbon-optimized paths for logistics companies to minimize fuel use and emissions.', 'https://demo.ecoroute.tech', 'https://github.com/hackathon2024/ecoroute'),
(4, 'FarmAssist', 'An AI-driven decision support tool for small-scale farmers, offering weather predictions, soil analysis, and crop recommendations.', 'https://demo.farmassist.io', 'https://github.com/hackathon2024/farmassist'),
(5, 'LeanOnMe', 'A mental health support system that connects users anonymously with trained peer listeners and offers journaling tools.', 'https://demo.leanonme.org', 'https://github.com/hackathon2024/leanonme');

-- Insert judges
INSERT INTO Judge VALUES
(1, 'Aileen McManamon'),
(2, 'Vidhya Arvind'),
(3, 'Seema Saharan'),
(4, 'Joy Allen'),
(5, 'Lori F. Gooding'),
(6, 'Anush Krishna'),
(7, 'Miguel Martin'),
(8, 'Matt Haikin'),
(9, 'Santosh Yadav'),
(10, 'Yumin Choi'),
(11, 'Zen Chu'),
(12, 'Vedant Khairnar'),
(13, 'Rohan Raghuwanshi'),
(14, 'Nikolay Lebedev'),
(15, 'Aanchal Mishra');

-- Insert scoring criteria
INSERT INTO Criteria VALUES
(1, 'Creativity', 10),
(2, 'Robustness', 10),
(3, 'Originality', 10),
(4, 'Demo Quality', 5),
(5, 'Societal Impact', 5),
(6, 'Code Clarity', 10);

-- Insert evaluations
-- is_senior = 1 means the judge is the senior judge for that project
INSERT INTO Evaluation VALUES
(1, 1, 1, 1),
(2, 1, 2, 0),
(3, 1, 3, 0),

(4, 2, 4, 1),
(5, 2, 5, 0),
(6, 2, 6, 0),

(7, 3, 7, 1),
(8, 3, 8, 0),
(9, 3, 9, 0),

(10, 4, 10, 1),
(11, 4, 11, 0),
(12, 4, 12, 0),

(13, 5, 13, 1),
(14, 5, 14, 0),
(15, 5, 15, 0);

-- Insert scores for each evaluation and criteria
INSERT INTO Score VALUES
(1, 1, 1, 9), (2, 1, 2, 8), (3, 1, 3, 9), (4, 1, 4, 4), (5, 1, 5, 5), (6, 1, 6, 8),
(7, 2, 1, 8), (8, 2, 2, 8), (9, 2, 3, 8), (10, 2, 4, 4), (11, 2, 5, 4), (12, 2, 6, 8),
(13, 3, 1, 8), (14, 3, 2, 7), (15, 3, 3, 8), (16, 3, 4, 4), (17, 3, 5, 4), (18, 3, 6, 7),

(19, 4, 1, 10), (20, 4, 2, 9), (21, 4, 3, 9), (22, 4, 4, 5), (23, 4, 5, 5), (24, 4, 6, 9),
(25, 5, 1, 9), (26, 5, 2, 9), (27, 5, 3, 9), (28, 5, 4, 5), (29, 5, 5, 5), (30, 5, 6, 9),
(31, 6, 1, 9), (32, 6, 2, 8), (33, 6, 3, 9), (34, 6, 4, 5), (35, 6, 5, 5), (36, 6, 6, 8),

(37, 7, 1, 8), (38, 7, 2, 9), (39, 7, 3, 8), (40, 7, 4, 4), (41, 7, 5, 5), (42, 7, 6, 9),
(43, 8, 1, 8), (44, 8, 2, 8), (45, 8, 3, 8), (46, 8, 4, 4), (47, 8, 5, 4), (48, 8, 6, 8),
(49, 9, 1, 7), (50, 9, 2, 8), (51, 9, 3, 8), (52, 9, 4, 4), (53, 9, 5, 4), (54, 9, 6, 8),

(55, 10, 1, 9), (56, 10, 2, 9), (57, 10, 3, 10), (58, 10, 4, 5), (59, 10, 5, 5), (60, 10, 6, 9),
(61, 11, 1, 8), (62, 11, 2, 9), (63, 11, 3, 9), (64, 11, 4, 5), (65, 11, 5, 5), (66, 11, 6, 9),
(67, 12, 1, 8), (68, 12, 2, 8), (69, 12, 3, 9), (70, 12, 4, 4), (71, 12, 5, 5), (72, 12, 6, 8),

(73, 13, 1, 7), (74, 13, 2, 8), (75, 13, 3, 7), (76, 13, 4, 4), (77, 13, 5, 5), (78, 13, 6, 8),
(79, 14, 1, 8), (80, 14, 2, 8), (81, 14, 3, 8), (82, 14, 4, 4), (83, 14, 5, 5), (84, 14, 6, 8),
(85, 15, 1, 7), (86, 15, 2, 7), (87, 15, 3, 8), (88, 15, 4, 4), (89, 15, 5, 5), (90, 15, 6, 7);
GO