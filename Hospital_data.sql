-- ROOM
INSERT INTO room (number, capacity, fee)
VALUES (5, 3, 3000);

INSERT INTO room (number, capacity, fee)
VALUES (3, 2, 4000);

INSERT INTO room (number, capacity, fee)
VALUES (2, 3, 3500);

INSERT INTO room (number, capacity, fee)
VALUES (4, 3, 2932);

INSERT INTO room (number, capacity, fee)
VALUES (6, 3, 3765);

-- PATIENT
INSERT INTO patient (id, name, address, phone_number, patient_medication, room_number)
VALUES (5, ‘Sara’, ‘6708 Stone Dr’, ‘3366429703’, ‘Antibiotics’, 5);

INSERT INTO patient (id, name, address, phone_number, patient_medication, room_number)
VALUES (7, 'Jerry', '5864 Matterson Way', '3364573245', 'AChE inhibitors', 3);

INSERT INTO patient (id, name, address, phone_number, patient_medication, room_number)
VALUES (4, 'Cameron', '2387 Climington Dr', '3363746435', 'Opioids', 2);

INSERT INTO patient (id, name, address, phone_number, patient_medication, room_number)
VALUES (2, 'Alyssa', '6284 Remington Dr', '3363845867', 'Chemotherapy', 4);

INSERT INTO patient (id, name, address, phone_number, patient_medication, room_number)
VALUES (9, 'Michael', '7487 Harrington Way', '3365438274', 'NSAIDS', 6);


-- HEALTH_RECORD
INSERT INTO health_record (health_record_id, disease, date_diagnosed, description, status)
VALUES (5, ‘Pneumonia’, ‘2020-3-25’,  ‘patient has infection in both lungs’, ‘improving’);

INSERT INTO health_record (health_record_id, disease, date_diagnosed, description, status)
VALUES (7, ‘Alzheimers’, ‘2020-1-31’,  ‘patient undergoing gradual memory loss ’, ‘declining’);

INSERT INTO health_record (health_record_id, disease, date_diagnosed, description, status)
VALUES (4, ‘None’, ‘2021-4-8’,  ‘patient was shot and needs emergency surgery’, ‘critical’);

INSERT INTO health_record (health_record_id, disease, date_diagnosed, description, status)
VALUES (2, ‘Breast Cancer’, ‘2021-2-20’, ‘Patient has tumor in chest area’, ‘stagnant’);

INSERT INTO health_record (health_record_id, disease, date_diagnosed, description, status)
VALUES (9, ‘Covid-19’, ‘2021-3-27’, ‘patient has trouble breathing’, ‘improving’);


-- PHARMACY
INSERT INTO pharmacy (medication)
VALUES ('Antibiotics');

INSERT INTO pharmacy (medication)
VALUES ('AChE inhibitors');

INSERT INTO pharmacy (medication)
VALUES ('Opioids');

INSERT INTO pharmacy (medication)
VALUES ('Chemotherapy');

INSERT INTO pharmacy (medication)
VALUES ('NSAIDS');



-- INVOICE

INSERT INTO invoice (instructions, rooms)
VALUES ('Take prescription 2 times a day', '5');

INSERT INTO invoice (instructions, rooms)
VALUES ('Take prescription 1 time per day', '3');

INSERT INTO invoice (instructions, rooms)
VALUES ('Take prescription 1-2 times a day', '2');

INSERT INTO invoice (instructions, rooms)
VALUES ('Start immediately', '4');

INSERT INTO invoice (instructions, rooms)
VALUES ('Take prescription 2 times a day', '6'); 



-- Payment
INSERT INTO payment (amount, payment_date)
VALUES (15349, '2020-4-24');

INSERT INTO payment (amount, payment_date)
VALUES (11245, '2020-3-02');

INSERT INTO payment (amount, payment_date)
VALUES (17021, '2021-4-09');

INSERT INTO payment (amount, payment_date)
VALUES (90000, '2021-4-03');

INSERT INTO payment (amount, payment_date)
VALUES (30761, '2021-4-06');


-- Employee
INSERT INTO employee (position, employee_id, certification_number, employee_name, address, phone_num)
VALUES ('ER', 1, 13, 'Denise', '1384 Swanson Dr', '3362346592');

INSERT INTO employee (position, employee_id, certification_number, employee_name, address, phone_num)
VALUES ('Surgeon', 9, 15, 'Dylan', '6487 Johnson Way', '3367356475');

INSERT INTO employee (position, employee_id, certification_number, employee_name, address, phone_num)
VALUES ('CCU', 5, 18, 'Candice', '5387 Brian Boulevard', '3365386493');

INSERT INTO employee (position, employee_id, certification_number, employee_name, address, phone_num)
VALUES ('ICU', 4, 11, 'John', '4375 Grouper Dr', '3367396483');

INSERT INTO employee (position, employee_id, certification_number, employee_name, address, phone_num)
VALUES ('MICU', 3, 10, 'Samantha', '6391 Sam Way', '3369263548');



-- Physician
INSERT INTO physician (physician_id, field_of_expertise)
VALUES (1, 'ER');

INSERT INTO physician (physician_id, field_of_expertise)
VALUES (9, 'Surgeon');

INSERT INTO physician (physician_id, field_of_expertise)
VALUES (5, 'CCU');

INSERT INTO physician (physician_id, field_of_expertise)
VALUES (4, 'ICU');

INSERT INTO physician (physician_id, field_of_expertise)
VALUES (3, 'MICU');


-- Nurse
INSERT INTO nurse (nurse_id)
VALUES (1);

INSERT INTO nurse (nurse_id)
VALUES (9);

INSERT INTO nurse (nurse_id)
VALUES (5);

INSERT INTO nurse (nurse_id)
VALUES (4);

INSERT INTO nurse (nurse_id)
VALUES (3);


-- Admin
INSERT INTO admin (patient_id, nurse_id, medication_amount, medication_id)
VALUES (5, 1, '$30', 'Antibiotics');

INSERT INTO admin (patient_id, nurse_id, medication_amount, medication_id)
VALUES (7, 9, '$100', 'AChE inhibitors');

INSERT INTO admin (patient_id, nurse_id, medication_amount, medication_id)
VALUES (4, 5, '$50', 'Opioids');

INSERT INTO admin (patient_id, nurse_id, medication_amount, medication_id)
VALUES (2, 4, '$200', 'Chemotherapy');

INSERT INTO admin (patient_id, nurse_id, medication_amount, medication_id)
VALUES (9, 3, '$150', 'NSAIDS');

