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

This Data set is about Olympics. You can download the data set from the below link:
https://drive.google.com/open?id=0ByJLBTmJojjzV1czX3Nha0R3bTQ

DATE SET DESCRIPTION

The data set consists of the following fields.
Athlete: This field consists of the athlete name
Age: This field consists of athlete ages
Country: This fields consists of the country names which participated in Olympics
Year: This field consists of the year
Closing Date: This field consists of the closing date of ceremony
Sport: Consists of the sports name
Gold Medals: No. of Gold medals
Silver Medals: No. of Silver medals
Bronze Medals: No. of Bronze medals
Total Medals: Consists of total no. of medals

CREATE TABLE olympic_data
(
name STRING,
age INT,
country STRING,
year INT,
closingDate STRING,
sport STRING,
gold INT,
silver INT,
bronze INT,
total INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t';

LOAD DATA
LOCAL INPATH '/home/acadgild/hive/olympix_data.csv'
INTO TABLE olympic_data;


Problem Statements:

1. Write a Hive program to find the number of medals won by each country in swimming.

SELECT country, SUM(total)
FROM olympic_data 
WHERE sport = "Swimming" 
GROUP BY country;

2. Write a Hive program to find the number of medals that India won year wise.

SELECT year, SUM(total)
FROM olympic_data 
WHERE country = "India" 
GROUP BY year;

3. Write a Hive Program to find the total number of medals each country won.

SELECT country, SUM(total)
FROM olympic_data 
GROUP BY country;

4. Write a Hive program to find the number of gold medals each country won.

SELECT country, SUM(gold)
FROM olympic_data 
GROUP BY country;

-----------------------------------------------------------------------------------------------------------------
