SELECT doctors.name, ROUND(SUM(hours * 150 + (bonus / 100)*hours * 150), 1) AS salary
FROM attendances
JOIN work_shifts
ON attendances.id_work_shift = work_shifts.id
JOIN doctors
ON attendances.id_doctor = doctors.id
GROUP BY doctors.name
ORDER BY salary DESC