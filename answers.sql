-- Part 1: Basic Data Retrieval
USE newhospital_db;

-- Retrieve all records
SELECT * FROM admissions;

-- Retrieve all patients names
SELECT first_name, last_name, date_of_birth
FROM patients;

-- Retrieve all providers details 
SELECT provider_id, first_name, provider_specialty
FROM providers;

-- Part 2: Pattern-Based Filtering
SELECT *
FROM patients
WHERE first_name LIKE 'Ab%';

SELECT *
FROM providers
WHERE provider_specialty LIKE '%y';

-- Part 3: Comparison Operators
SELECT *
FROM patients 
WHERE date_of_birth > '1980-01-01';

SELECT *
FROM ed_visits
WHERE acuity >= 2;

-- Part 4: WHERE Clause with Logical Operators
SELECT *
FROM patients
WHERE language = 'Spanish';

SELECT * 
FROM visits 
WHERE visit_type = 'Migraine' AND visit_status = 'Admitted';

-- SELECT * 
-- FROM patients 
-- WHERE birth_of_date BETWEEN '1975-01-01' AND '1980-12-31';

-- Part 5: Sorting Data
SELECT first_name, last_name 
FROM patients 
ORDER BY last_name ASC;

SELECT * 
FROM visits 
ORDER BY date_of_visit DESC;

-- Part 6: Advanced Filtering
-- Retrieve primary diagonis 
SELECT * 
FROM admissions 
WHERE primary_diagnosis = 'Stroke'; 
SELECT *
FROM discharges
WHERE discharge_disposition ='Home';

-- providers who joined after 1995
SELECT * 
FROM providers 
WHERE date_joined > '1995-12-31' AND (provider_specialty = 'Pediatrics' OR provider_specialty = 'Cardiology');

-- Optional Challenge
SELECT *
FROM discharges
WHERE discharge_disposition = 'Home'
AND discharge_date BETWEEN '2018-03-01' AND '2018-03-07';
