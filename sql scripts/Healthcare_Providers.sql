-- Active: 1743689326419@@127.0.0.1@5432@the_database_project@public
CREATE TABLE Healthcare_Providers (
    provider_id SERIAL PRIMARY KEY,
    name  VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    contact_number VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    hospital_affiliation VARCHAR(100),
    experience_years INT CHECK (experience_years >= 0),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

);
INSERT INTO Healthcare_Providers (name, specialization, contact_number, email, hospital_affiliation, experience_years)
 VALUES
 ('Dr. David Xavier', 'Cardiologist', '+254700123456', 'XavierD@yahoo.com', 'Kenyatta National Hospital', 15),
 ('Dr. Alisson Baker', 'Pediatrician', '+254701234567', 'Alisson101@gmail.com', 'Amref Hospital', 10),
 ('Dr. Craig Robinson', 'Neurologist', '+254702345678', 'Craig05@hotmail.com', 'Gertrude Hospital', 8),
 ('Dr. Grace Nabwire', 'Gynecologist', '+254797456789', 'gracenabwire@gmail.com', 'Agakhan Hospital', 12),
 ('Nurse Samuel Kato', 'General Nurse', '+254704567890', 'samuelkato@yahoo.com', 'Nairobi West Hospital', 5);

 UPDATE Healthcare_Providers
SET hospital_affiliation = 'Kenyatta National Hospital';

 
 