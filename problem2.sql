with medicineOnSickness(medicineID,
                        medicineName,   
                        medicineCost, 
                        sicknessTypeID)
as
(select medicines.medicineID,
        medicineName, 
        medicineCost,
        sicknessTypeID
  from medicines,medicineSicknessTypes
  where medicines.medicineID = medicineSicknessTypes.medicineID)
select medicineName,
       medicineCost,
       sicknessTypeName
from medicineOnSickness, sicknessType
where medicineOnSickness.sicknessTypeID = sicknessType.sicknessTypeID
and sicknessTypeName = "Dengu fever";
