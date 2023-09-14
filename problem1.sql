with patientAppoitemt(patientFirstName, patinetLastName, age, patientContactNumber, doctorConsultantID, appointmentDateTime) as (
    select
        patientFirstName,
        patinetLastName,
        timestampdiff(year, dateOfBirth, CURDATE()) as patinetAge,
        patientContactNumber,
        doctorConsultantID,
        appointmentDateTime 
    from
        patients,
        appointments
    where
        patients.patientID = appointments.patientID 
        and DATE(appointmentDateTime) = '2023-09-15'
)
select 
    patientFirstName, 
    patinetLastName,
    age, 
    patientContactNumber, 
    doctorConsultantFirstName,
    doctorConsultantLastName,
    appointmentDateTime 
from
    patientAppoitemt, 
    doctorConsultants
where
    patientAppoitemt.doctorConsultantID = doctorConsultants.doctorConsultantID;
    
       
