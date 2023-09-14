create table patients(
  patientID int primary key,
  patientFirstName varchar(255) not null,
  patinetLastName varchar(255),
  dateOfBirth date,
  patientContactNumber varchar(11) 
  );
create table doctorConsultants(
  doctorConsultantID int primary key,
  doctorConsultantFirstName varchar(255) not null,
  doctorConsultantLastName varchar(255),
  specialization varchar(255) not null,
  doctorConsultantContactNumber varchar(11)
  );
create table sicknessType(
  sicknessTypeID int primary key,
  sicknessTypeName varchar(255) not null
  );
create table medicalTests(
  medicalTestID int primary key,
  medicalTestName varchar(255) not null,
  medicalTestCost decimal (10,2)
  );
create table medicines(
  medicineID int primary key,
  medicineName varchar(255) not null,
  medicineCost decimal (10,2)
  );
create table appoitment(
  appoitmentID int primary key,
  patientID int,
  doctorConsultantID int,
  appoitmentDateTime datetime,
  foreign key(patientID) references patients(patientID),
  foreign key(doctorConsultantID) references doctorConsultants(doctorConsultantID)
  );
create table diagnoses(
  diagnosisID int primary key,
  patientID int,
  doctorConsultantID int,
  sicknessTypeID int,
  diagnosisdate date,
  foreign key(patientID) references patients(patientID),
  foreign key(doctorConsultantID) references doctorConsultants(doctorConsultantID),
  foreign key(sicknessTypeID) references sicknessType(sicknessTypeID)
  );
create table prescribeMedicines(
  prescribeMedicineID int primary key,
  diagnosisID int,
  medicineID int,
  dosage varchar(255),
  usageInstructions text,
  foreign key(diagnosisID) references diagnoses(diagnosisID),
  foreign key(medicineID) references medicines(medicineID)
  );
create table recomendedMedicalTests(
  recomendedMedicalTest int primary key,
  doctorConsultantID int,
  sicknessTypeID int,
  medicalTestID int,
  foreign key(doctorConsultantID) references doctorConsultants(doctorConsultantID),
  foreign key(sicknessTypeID) references sicknessType(sicknessTypeID),
  foreign key(medicalTestID) references medicalTests(medicalTestID)
  );
create table medicineSicknessTypes(
  medicineID int,
  sicknessTypeID int,
  primary key(medicineID, sicknessTypeID),
  foreign key(medicineID) references medicines(medicineID),
  foreign key(sicknessTypeID) references sicknessType(sicknessTypeID)
  );
create table patinetDoctorPreferences(
  patientID int,
  sicknessTypeID int,
  doctorConsultantID int,
  primary key(patientID, sicknessTypeID),
  foreign key(patientID) references patients(patientID),
  foreign key(sicknessTypeID) references sicknessType(sicknessTypeID),
  foreign key(doctorConsultantID) references doctorConsultants(doctorConsultantID)
  );
create table mostPrescribedMedicines(
  medicineID int,
  medicineName varchar(255) not null,
  prescriptionCount int
  );
