USE custom;

CREATE TABLE emp_details
(
emp_name STRING,
skill STRING,
exp INT,
location STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',';

LOAD DATA 
LOCAL INPATH '/home/acadgild/hive/emp_details.txt'
INTO TABLE emp_details;

SELECT skill, COUNT(skill) FROM emp_details GROUP BY skill;

SELECT * FROM emp_details;

