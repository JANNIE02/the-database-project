-- Active: 1741548094411@@127.0.0.1@5432@the_database_project@public
CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10),
    contact_number VARCHAR(15),
    email VARCHAR(100),
    address TEXT
<<<<<<< HEAD:sql scripts/tables.sql


  



  INSERT INTO patients (first_name, last_name, date_of_birth, gender, contact_number, email, address)
VALUES
('Abdalla', 'Zulekha', '1990-07-15', 'Female', '0712345678', 'abdalla.zulekha@gmail.com', '123 Mombasa Road, Nairobi'),
('Denzel', 'Robert', '1985-09-25', 'Male', '0723456789', 'denzel.robert@gmail.com', '456 Langata Road, Nairobi'),
('Birungi', 'Jannie', '1995-12-10', 'Female', '0734567890', 'birungi.jannie@gmail.com', '789 Kira Road, Kampala'),
('Jerome', 'Semucho', '1978-04-05', 'Male', '0745678901', 'jerome.semucho@gmail.com', '101 Entebbe Street, Kampala'),
('Nalubega', 'Hindu', '1988-01-30', 'Female', '0756789012', 'nalubega.hindu@gmail.com', '202 Nakuru Avenue, Nakuru'),
('Elsie', 'Wambugu', '1992-03-14', 'Female', '0767890123', 'elsie.wambugu@gmail.com', '303 Ngong Road, Nairobi');


UPDATE patients
SET patient_id = 101
WHERE first_name = 'Abdalla' AND last_name = 'Zulekha';

UPDATE patients
SET patient_id = 102
WHERE first_name = 'Denzel' AND last_name = 'Robert';

UPDATE patients
SET patient_id = 103
WHERE first_name = 'Birungi' AND last_name = 'Jannie';

UPDATE patients
SET patient_id = 104
WHERE first_name = 'Jerome' AND last_name = 'Semucho';

UPDATE patients
SET patient_id = 105
WHERE first_name = 'Nalubega' AND last_name = 'Hindu';

UPDATE patients
SET patient_id = 106
WHERE first_name = 'Elsie' AND last_name = 'Wambugu';








=======
>>>>>>> 44600c632ebefc196442df488f8200829a469f5c:sql scripts/CREATE TABLE patients (.sql
);