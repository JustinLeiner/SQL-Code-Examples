DROP DATABASE IF EXISTS hospital;
create database Hospital;
use Hospital;

create table room (
number int(10) not null,
capacity int(3) not null,
fee float(10,5) not null,
primary key(number)
);

create table patient (
id int(10) not null,
name varchar(20) not null,
address varchar(100) not null,
phone_number varchar(10) not null,
patient_medication varchar(20),
room_number int(10) not null,
primary key(id)
);

create table health_record (
health_record_id int(10) not null,
disease varchar(30) not null,
date_diagnosed date,
description varchar(100) not null,
status varchar(20),
primary key(health_record_id)
);

alter table health_record
add foreign key(health_record_id) references patient(id);

alter table patient
add foreign key(room_number) references room(number);

create table pharmacy (
medication varchar(20) not null,
primary key(medication)
);

create table invoice(
instructions varchar(50) not null,
rooms varchar(20) not null
);

create table payment(
amount float(10,5) not null,
payment_date date
);

create table employee(
position varchar(20) not null,
employee_id int(10) not null,
certification_number int(20) not null,
employee_name varchar(20) not null,
address varchar(100) not null,
phone_num varchar(10) not null,
primary key(employee_id, certification_number)
);

create table physician(
physician_id int(10) not null,
field_of_expertise varchar(20) not null,
primary key(physician_id)
);

create table nurse(
nurse_id int(10) not null,
primary key(nurse_id)
);

alter table physician
add foreign key (physician_id) references employee(employee_id);

alter table nurse
add foreign key (nurse_id) references employee(employee_id);

create table admin(
patient_id int(10) not null,
nurse_id int(10) not null,
medication_amount varchar(20) not null,
medication_id varchar(20) not null,
PRIMARY KEY (nurse_id, patient_id, medication_id),
FOREIGN KEY (patient_id) references patient(id),
FOREIGN KEY (nurse_id) references nurse(nurse_id),
FOREIGN KEY (medication_id) references pharmacy(medication)
);


