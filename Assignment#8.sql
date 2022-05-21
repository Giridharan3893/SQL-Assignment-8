##ASSIGNMENT8##

USE SQLAssignments
INSERT INTO Worker_Clone Values('Ravi','Sherawat','ravisheravat@ineuron.com','Finance', 45000,  '2018-02-12')
INSERT INTO Worker_Clone Values('Anuj','Mehra','anujmehra@ineuron.com','HR', 60000,  '2017-04-17')
INSERT INTO Worker_Clone Values('Rahul','Jain','rahuljain@ineuron.com','Purchase', 30000,  '2017-12-20')
INSERT INTO Worker_Clone Values('Arohi','Patil','arohipatil@ineuron.com','Finance', 60000,  '2019-11-12')

Select * FROM Worker
INTERSECT
Select * FROM Worker_Clone

WITH t1 AS (SELECT w.ID FROM Worker W LEFT JOIN Worker_Clone wc ON w.ID = wc.ID)
SELECT * 
FROM Worker_Clone
WHERE ID NOT IN (SELECT * FROM t1)