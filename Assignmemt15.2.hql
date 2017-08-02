USE custom;

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



SELECT country, SUM(total)
FROM olympic_data 
WHERE sport = "Swimming" GROUP BY country;



SELECT year, SUM(total)
FROM olympic_data 
WHERE country = "India" GROUP BY year;



SELECT country, SUM(total)
FROM olympic_data 
GROUP BY country;



SELECT country, SUM(gold)
FROM olympic_data 
GROUP BY country;


