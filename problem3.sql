with selectedPatients(patientID,
       patientFirstName,
       patinetLastName) as 
 ( select patientID,
       patientFirstName,
       patinetLastName
       
from patients
where 
  patientID 
in (select distinct patientID 
  from appointments
  where month(appointmentDateTime) = month(current_date - interval 1 month))
  and 
  patientID 
not in (select distinct patientID 
  from appointments
  where month(appointmentDateTime) = month(current_date)))
  
select selectedPatients.patientID,
       selectedPatients.patientFirstName,
       selectedPatients.patinetLastName,
       appointmentDateTime
from selectedPatients, appointments
where selectedPatients.patientID = appointments.patientID;
