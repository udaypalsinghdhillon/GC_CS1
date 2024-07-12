/* Loaded data into the tables created in the SQL database from csv files for each month. Also loaded each month's data into the annual aggregate table.
*/


COPY jan
FROM 'D:\Data Analysis\GC_CS1\CSV data\jan.csv'
DELIMITER ',' CSV HEADER;

COPY feb
FROM 'D:\Data Analysis\GC_CS1\CSV data\feb.csv'
DELIMITER ',' CSV HEADER;

COPY mar
FROM 'D:\Data Analysis\GC_CS1\CSV data\mar.csv'
DELIMITER ',' CSV HEADER;

COPY apr
FROM 'D:\Data Analysis\GC_CS1\CSV data\apr.csv'
DELIMITER ',' CSV HEADER;

COPY may
FROM 'D:\Data Analysis\GC_CS1\CSV data\may.csv'
DELIMITER ',' CSV HEADER;

COPY jun
FROM 'D:\Data Analysis\GC_CS1\CSV data\jun.csv'
DELIMITER ',' CSV HEADER;

COPY jul
FROM 'D:\Data Analysis\GC_CS1\CSV data\jul.csv'
DELIMITER ',' CSV HEADER;

COPY aug
FROM 'D:\Data Analysis\GC_CS1\CSV data\aug.csv'
DELIMITER ',' CSV HEADER;

COPY sep
FROM 'D:\Data Analysis\GC_CS1\CSV data\sep.csv'
DELIMITER ',' CSV HEADER;

COPY oct
FROM 'D:\Data Analysis\GC_CS1\CSV data\oct.csv'
DELIMITER ',' CSV HEADER;

COPY nov
FROM 'D:\Data Analysis\GC_CS1\CSV data\nov.csv'
DELIMITER ',' CSV HEADER;

COPY dec
FROM 'D:\Data Analysis\GC_CS1\CSV data\dec.csv'
DELIMITER ',' CSV HEADER;

-- Inserted data into the annual table

INSERT INTO annual_data 
SELECT * FROM jan;

INSERT INTO annual_data 
SELECT * FROM feb;

INSERT INTO annual_data 
SELECT * FROM mar;

INSERT INTO annual_data 
SELECT * FROM apr;

INSERT INTO annual_data 
SELECT * FROM may;

INSERT INTO annual_data 
SELECT * FROM jun;

INSERT INTO annual_data 
SELECT * FROM jul;

INSERT INTO annual_data 
SELECT * FROM aug;

INSERT INTO annual_data 
SELECT * FROM sep;

INSERT INTO annual_data 
SELECT * FROM oct;

INSERT INTO annual_data 
SELECT * FROM nov;

INSERT INTO annual_data 
SELECT * FROM dec;
