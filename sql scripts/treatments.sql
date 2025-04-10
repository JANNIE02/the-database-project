
CREATE TABLE treatments (
    treatment_id SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,
    treatment_name VARCHAR(255) NOT NULL,
    treatment_date DATE NOT NULL DEFAULT CURRENT_DATE,
    provider_id INT NOT NULL,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) 
        REFERENCES patients(patient_id)
         FOREIGN KEY (provider_id) 
        REFERENCES Healthcare_provider(provider_id)
         
        ON DELETE CASCADE
       
);

CREATE OR REPLACE FUNCTION update_modified_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER set_timestamp
BEFORE UPDATE ON treatments
FOR EACH ROW
EXECUTE FUNCTION update_modified_column();



INSERT INTO treatments (patient_id, treatment_name, treatment_date, provider_id, notes)
VALUES
(101, 'Blood Test', '2025-04-10', 201, 'Routine checkup for cholesterol levels'),
(102, 'X-ray', '2025-04-08', 202, 'X-ray for chest pain assessment'),
(103, 'MRI Scan', '2025-04-05', 203, 'MRI for brain tumor screening'),
(106, 'Surgery', '2025-04-02', 204, 'Appendectomy for patient with abdominal pain'),
(105, 'Vaccination', '2025-04-01', 205, 'Flu vaccination for pediatric patient');