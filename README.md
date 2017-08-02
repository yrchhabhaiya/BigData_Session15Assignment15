# BigData_Session15Assignment15
Hive Operations


---------------------------------------------------------------------------------------------------------------------
Assignment 15.1
Calculate the number of employees corresponding to each skill from the table 'employee' which is
loaded in the Demo.

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

---------------------------------------------------------------------------------------------------------------------
Assignment 15.2
