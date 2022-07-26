CREATE DATABASE clinic;

CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    name varchar(100),
    date_of_birth DATE
);

CREATE TABLE medical_hitories (
    id SERIAL PRIMARY KEY,
    admitted_at TIMESTAMP,
    patients_id INT,
    FOREIGN KEY (patients_id) REFERENCES patients (id),
    status varchar(100)
);

CREATE TABLE treatments (
    id SERIAL PRIMARY KEY,
    tybe varchar(100),
    name varchar(100)
);