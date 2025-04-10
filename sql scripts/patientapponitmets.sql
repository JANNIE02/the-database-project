CREATE TABLE Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    provider_id INT,
    AppointmentDate DATETIME,
    ReasonForVisit TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (provider_id) REFERENCES Healthcare_Provider(provider_id)
);

INSERT INTO Appointments (PatientID, provider_id, AppointmentDate, ReasonForVisit)
VALUES
(101, 201, '2025-04-10 10:00:00', 'Routine check-up'),
(102, 202, '2025-04-11 14:30:00', 'Flu symptoms'),
(103, 201, '2025-04-12 09:15:00', 'Back pain'),
(104, 203, '2025-04-13 11:45:00', 'Annual physical'),
(105, 202, '2025-04-14 16:00:00', 'Allergy testing'),
(106, 204, '2025-04-15 13:00:00', 'Follow-up on lab results');
