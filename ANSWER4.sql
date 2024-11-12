-- USE aghakan_db;

-- quiz 1.1 INSERT DATA 
-- INSERT INTO patients(first_name, last_name, date_of_birth, gender, language)
-- values('John', 'Doe', '1980-11-15', 'Male', 'English');

-- quiz 2.1 UPDATE DATA
-- UPDATE patients
-- SET language='Spanish'
-- WHERE first_name='John' AND last_name='Doe';

-- quiz 3.1 DELETE DATA
-- ALTER TABLE admissions
-- DROP FOREIGN KEY adm_id;

-- ALTER TABLE admissions
-- ADD CONSTRAINT adm_id
-- FOREIGN KEY(patient_id) REFERENCES patients(patient_id)
-- ON DELETE CASCADE;

-- DELETE FROM discharges 
-- WHERE admission_id=(SELECT admission_id FROM admissions
-- WHERE patient_id=10);
--  DELETE FROM admissions
-- WHERE patient_id=10;

-- quiz 4.1 Handling null values
-- SELECT
--       last_name,
--       COALESCE(email_address, 'N/A') AS email
-- FROM providers;

-- quiz 4.2
-- SELECT
--      first_name,last_name,
--      COALESCE(phone_number, 'Missing details') AS phone_number,
--      COALESCE(email_address, 'Missing details') AS email
--      FROM
--          providers
         
-- Bonus quiz
-- SELECT first_name, last_name, email_address, phone_number
-- FROM providers
-- WHERE 
--     provider_specialty = 'pediatrics'
-- AND(phone_number IS NULL OR email_address IS NULL)








