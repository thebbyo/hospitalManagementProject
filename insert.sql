insert into patients(patientID,patientFirstName, patinetLastName,dateOfBirth, patientContactNumber )
values(1, "Abida", "Bristy", "2000-10-04", "01717321733"),
(2, "Abir", "Hasan", "2001-01-25", "01521565024"),
(3, "Rafi", "Rifat", "2000-10-09", "01305638332"),
(4, "Abdullah", "Ashik", "2000-09-30", "01717321734"),
(5, "Fardim", "Faiyaz", "2003-08-28", "01537226055");
insert into doctorConsultants(doctorConsultantID,doctorConsultantFirstName, doctorConsultantLastName,specialization, doctorConsultantContactNumber )
values(1, "Dr.Adisha", "Bristy", "Cardiology", "01717321769"),
(2, "Abir", "Mahamud", "Sexology", "01521565009"),
(3, "Dibbyo", "Roy", "Neurology", "01763157183"),
(4, "Abdullah", "Mosaddek", "Medicine", "01717396734"),
(5, "Fardin", "Farhan", "Skin", "01337226055");
insert into sicknessType(sicknessTypeID,sicknessTypeName)
values(1, "General Disease"),
(2, "Cardiology"),
(3, "Sexology"),
(4, "Medicine"),
(5, "Skin");
insert into medicalTests(medicalTestID,medicalTestName, medicalTestCost)
values(1, "Blood pressure test", 50),
(2, "Blood test", 500),
(3, "MRI scan", 3000),
(4, "X-ray", 1500),
(5, "Urin test", 800);
insert into medicines(medicineID,medicineName, medicineCost)
values(1, "PRODEP 20 MG Cap", 3.01),
(2, "TRIDYL 5 MG TABLET", 12),
(3, "PERKINIL 5 MG Tab", 1.25),
(4, "COMET 500 MG Tab", 4.02),
(5, "DIOVAN 80 MG Tab", 40);
insert into appointments(appointmentID,patientID, doctorConsultantID, appoitmentDateTime)
values(1,1,2,'2023-09-15 10:00:00'),
(2,2,2,'2023-09-15 15:30:00'),
(3,3,2,'2023-09-15 20:00:00'),
(4,1,5,'2023-09-16 10:00:00'),
(5,4,4,'2023-09-17 11:00:00');
insert into diagnoses(diagnosisID,patientID, doctorConsultantID, sicknessTypeID,diagnosisdate)
values(1,1,2,1,'2023-09-15'),
(2,2,2,2,'2023-09-15'),
(3,3,2,3,'2023-09-16'),
(4,1,5,1,'2023-09-17'),
(5,4,4,4,'2023-09-18');
insert into prescribeMedicines(prescribeMedicineID, diagnosisID, medicineID,dosage,usageInstructions)
values(1,1,2,'1 tablet daily', 'Take with food'),
(2,2,2,'2 tablets twice daily', 'Take with water'),
(3,3,2,'1 capsule every 6 hours', 'Take with or without food'),
(4,1,5,'1 tablet before bedtime', 'Take with milk'),
(5,4,4,'1 tablet every morning', 'Take with water');
insert into recomendedMedicalTests(recomendedMedicalTest, doctorConsultantID, sicknessTypeID,medicalTestID)
values(1,1,2,5),
(2,2,2,2),
(3,3,2,1),
(4,1,5,3),
(5,4,4,4);
insert into medicineSicknessTypes(medicineID, sicknessTypeID)
values(1,1),
(2,2),
(3,3),
(4,5),
(5,4);
insert into patinetDoctorPreferences(patientID, sicknessTypeID, doctorConsultantID)
values(1,1,2),
(2,2,5),
(3,3,2),
(4,5,5),
(5,4,4);
insert into mostPrescribedMedicines(medicineID, medicineName, prescriptionCount)
values(1, "PRODEP 20 MG Cap",10),
(2, "TRIDYL 5 MG TABLET", 67),
(3, "PERKINIL 5 MG Tab", 23),
(4, "COMET 500 MG Tab", 43),
(5, "DIOVAN 80 MG Tab", 40);

