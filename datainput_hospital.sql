INSERT INTO province_names (province_id, province_name)
VALUES 
('SC', 'Spartanburg'),
('FL', 'Fort Lauderdale'),
('CO', 'Fort Collins'),
('OH', 'Cleveland'),
('DC', 'Washington'),
('IA', 'Des Moines'),
('AK', 'Juneau'),
('WI', 'Madison'),
('LA', 'Baton Rouge'),
('DE', 'Wilmington'),
('IL', 'Chicago'),
('CA', 'Whittier'),
('MO', 'Columbia'),
('MD', 'Laurel'),
('MI', 'Kalamazoo'),
('TN', 'Nashville'),
('TX', 'Fort Worth'),
('NY', 'Albany'),
('VA', 'Virginia Beach'),
('PA', 'Reading'),
('IN', 'Evansville'),
('MN', 'Minneapolis');

INSERT INTO patients (
  patient_id, first_name, last_name, gender, birth_date, city, allergies, height, weight, province_id
)
VALUES
(1, 'Thomasina', 'Galiero', 'F', '1987-10-23', 'Taihe Chengguanzhen', 'Rabbit Hair', 42, 23, 'TX'),
(2, 'Misha', 'Learmonth', 'F', '1993-11-30', 'Bagay', 'Treatment Set TS128811', 11, 164, 'TX'),
(3, 'Hasheem', 'Karpenya', 'M', '1979-06-14', 'Sijiqing', 'PREDNISONE', 94, 250, 'TX'),
(4, 'Sibby', 'Burril', 'F', '1993-08-13', 'Bograd', 'potassium chloride', 26, 175, 'CA'),
(5, 'Deidre', 'Messier', 'F', '2010-07-18', 'Tây Hồ', 'bupropion hydrochloride', 159, 243, 'TX'),
(6, 'Seth', 'Bachura', 'M', '1989-02-07', 'Baiyun', 'Aluminum Zirconium Tetrachlorohydrex GLY', 232, 61, 'CA'),
(7, 'Nonna', 'Breston', 'F', '1979-05-08', 'Pakuranga', 'Dextromethorphan HBr, Phenylephrine HCl', 214, 83, 'MI'),
(8, 'Thibaut', 'Mordy', 'M', '1998-04-02', 'Oji River', 'ENALAPRIL MALEATE', 107, 115, 'MD'),
(9, 'Nathanil', 'Berzin', 'M', '1956-07-22', 'Llauta', 'Sodium Fluoride', 192, 186, 'MO'),
(10, 'Derk', 'Willetts', 'M', '2018-01-22', 'Murygino', 'Furosemide', 77, 230, 'TN'),
(11, 'Seth', 'Tatule', 'M', '2014-01-22', 'Ankara', 'Furosemide', 17, 130, 'TN');

INSERT INTO doctors (doctor_id, first_name, last_name, speciality)
VALUES
(1, 'Averil', 'Tredget', 'Dandruff'),
(2, 'Griff', 'Spradbrow', 'Nitrostat'),
(3, 'Chas', 'Lavalde', 'Caffeic Acid'),
(4, 'Cindee', 'Rosentholer', 'ATORVASTATIN CALCIUM'),
(5, 'Tracy', 'Meeking', 'PREDNISOLONE'),
(6, 'Alastair', 'Phythian', 'Lisinopril and Hydrochlorothiazide'),
(7, 'Doralia', 'Trim', 'Ulta Vanilla Sugar Anti-Bacterial Deep Cleansing'),
(8, 'Josie', 'Hurlestone', 'Vinorelbine'),
(9, 'Dougy', 'Dury', 'NON-DROWSY DAYTIME SINUS RELIEF'),
(10, 'Devin', 'Mensler', 'Oral Defense');

INSERT INTO admissions (
  patient_id, admission_date, discharge_date, diagnosis, attending_doctor_id
)
VALUES
(1, '2021-03-26', '2022-12-17', 'Corrosion of third degree of unspecified palm, subs encntr', 9),
(2, '2021-02-18', '2020-01-19', 'Other disorders of patella, unspecified knee', 7),
(3, '2021-06-22', '2022-12-16', 'Poisoning by opth drugs and prep, accidental, sequela', 3),
(1, '2020-11-28', '2022-01-31', 'Nondisp fx of medial epicondyle of r humerus, sequela', 1),
(5, '2022-01-27', '2022-08-20', 'Leakage of biological heart valve graft, subs encntr', 5),
(6, '2022-07-21', '2020-10-28', 'Disp fx of trapezoid, left wrist, subs for fx w nonunion', 4),
(1, '2022-06-02', '2022-11-17', 'Oth viral infections with skin and mucous membrane lesions', 4),
(8, '2020-10-28', '2021-10-20', 'Burn of first degree of right shoulder, sequela', 7),
(9, '2022-04-24', '2020-09-28', 'Poisoning by anticoag antag, vitamin K and oth coag, undet, init', 9),
(10, '2020-06-23', '2022-01-08', 'Presence of right artificial elbow joint', 10),
(11, '2020-06-23', '2022-01-09', 'Presence of right artificial elbow joint', 10);