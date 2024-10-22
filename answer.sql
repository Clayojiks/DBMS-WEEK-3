 -- CREATE DATABASE telemedicine;
-- USE telemedicine;
-- USE hospital_db;

-- question 1
CREATE TABLE patients (
   patient_id INT PRIMARY KEY AUTO_INCREMENT,
   first_name VARCHAR(40) NOT NULL,
   last_name VARCHAR(40) NOT NULL,
   date_of_birth DATE NOT NULL,
   gender VARCHAR(35) NOT NULL,
   language VARCHAR(40) NOT NULL
);

-- question 2
CREATE TABLE providers (
    provider_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    provider_speciality VARCHAR(50) NOT NULL,
    email_address VARCHAR(100),
    phone_number VARCHAR(40),  
    date_joined DATE NOT NULL
);

-- question 3
CREATE TABLE admissions(
    admission_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    admission_date DATE NOT NULL,
    discharge_date DATE NOT NULL,
    discharge_disposition VARCHAR(100),
    service VARCHAR(100) NOT NULL,
    primary_diagnosis VARCHAR(100) NOT NULL
);

ALTER TABLE admissions
ADD CONSTRAINT fk_patient
FOREIGN KEY (patient_id)
REFERENCES patients(patient_id);

-- question 4
CREATE TABLE discharges(
   discharge_id INT PRIMARY KEY AUTO_INCREMENT,
   admission_id INT,
   patient_id INT,
   discharge_date DATE NOT NULL,
   discharge_disposition VARCHAR(100) NOT NULL,
   
FOREIGN KEY (admission_id) REFERENCES admissions(admission_id),
FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
    
);

-- question 5
CREATE TABLE visits(
    visit_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    provider_id INT,
    date_of_visit DATE NOT NULL,
    date_of_scheduled DATE NOT NULL,
    visit_department_id INT NOT NULL,
    visit_type VARCHAR(50) NOT NULL,
    blood_pressure_systollic INT,
    blood_pressure_diastollic DECIMAL,
    pulse DECIMAL,
    visit_status VARCHAR(50) NOT NULL,
    
    -- Foreign key constraints
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (provider_id) REFERENCES providers(provider_id)
    
-- question 6
CREATE TABLE ed_visits(
	ed_visit_id INT PRIMARY KEY AUTO_INCREMENT,
    visit_id INT,
    patient_id INT,
    acuity INT NOT NULL,
    reason_for_visit VARCHAR(100) NOT NULL,
    disposition VARCHAR(100) NOT NULL,
    
    FOREIGN KEY (visit_id) REFERENCES visits(visit_id),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

    

  










   
   
  
   