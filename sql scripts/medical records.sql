CREATE TABLE Medical_records(
record_id INT PRIMARY KEY,
patient_id INT NOT NULL,
diagnosis TEXT,
Treatment_plan TEXT,
prescribed_medications TEXT,
date_of_entry DATE,
provider_id INT,
FOREIGN KEY (patient_id) REFERENCES patients(patient_id));

INSERT INTO Medical_records (record_id, patient_id, diagnosis, Treatment_plan, prescribed_medications, date_of_entry, provider_id)
VALUES 
(1, 101, 'Malaria', 'Administer antimalarial medication and ensure adequate hydration', 'Artemether-Lumefantrine', '2025-03-01', 201),
(2, 102, 'Type 2 Diabetes', 'Initiate lifestyle changes and oral hypoglycemics', 'Metformin 500mg', '2025-03-05', 202),
(3, 103, 'Hypertension', 'Monitor blood pressure and prescribe antihypertensives', 'Amlodipine 5mg daily', '2025-03-10', 203),
(4, 104, 'Asthma', 'Prescribe inhalers and avoid known allergens', 'Salbutamol Inhaler', '2025-03-12', 204),
(5, 105, 'Peptic Ulcer Disease', 'Administer antacids and review dietary habits', 'Omeprazole 20mg daily', '2025-03-15', 205),
(6, 106, 'Anemia', 'Investigate iron deficiency and start iron supplements', 'Ferrous Sulfate 325mg', '2025-03-18', 202),
(7, 107, 'Pneumonia', 'Prescribe antibiotics and rest', 'Azithromycin 500mg', '2025-03-20', 203),
(8, 108, 'Arthritis', 'Start NSAIDs and physiotherapy', 'Ibuprofen 400mg', '2025-03-22', 201),
(9, 109, 'Urinary Tract Infection', 'Prescribe antibiotics and encourage fluid intake', 'Ciprofloxacin 250mg', '2025-03-25', 204),
(10, 110, 'Migraine', 'Advise lifestyle changes and prescribe pain relief', 'Sumatriptan 50mg', '2025-03-27', 205);

const { Client } = require("pg");

const client = new Client({
  user: "postgres",        
  host: "localhost",       
  database: "postgres", 
  password: "postgres",
  port: 5433,
});

client.connect()
  .then(() => console.log("Connected to PostgreSQL successfully!"))
  .catch(err => console.error("Connection failed!", err))
  .finally(() => client.end());