-- Load CSV files into PostgreSQL tables

\COPY company_dim
FROM 'C:\Users\ziad\OneDrive - Faculty Of Computer and Information Technology (Ain Shams University)\Desktop\SQL_DATA_JOB_ANALYSIS\csv_files\company_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\COPY skills_dim
FROM 'C:\Users\ziad\OneDrive - Faculty Of Computer and Information Technology (Ain Shams University)\Desktop\SQL_DATA_JOB_ANALYSIS\csv_files\skills_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\COPY job_postings_fact
FROM 'C:\Users\ziad\OneDrive - Faculty Of Computer and Information Technology (Ain Shams University)\Desktop\SQL_DATA_JOB_ANALYSIS\csv_files\job_postings_fact.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\COPY skills_job_dim
FROM 'C:\Users\ziad\OneDrive - Faculty Of Computer and Information Technology (Ain Shams University)\Desktop\SQL_DATA_JOB_ANALYSIS\csv_files\skills_job_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');


-- Check job posting dates
SELECT job_posted_date
FROM job_postings_fact
LIMIT 100;


-- Test data types
SELECT
    '2023-02-19'::date,
    '123'::integer,
    'true'::boolean,
    '3.14'::real;