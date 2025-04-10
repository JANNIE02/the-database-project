
CREATE TABLE treatments (
    treatment_id SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,
    treatment_name VARCHAR(255) NOT NULL,
    treatment_date DATE NOT NULL DEFAULT CURRENT_DATE,
    doctor_name VARCHAR(255),
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) 
        REFERENCES patients(patient_id) 
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
