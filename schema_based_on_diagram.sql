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
    type varchar(100),
    name varchar(100)
);

CREATE TABLE invoices (
    id SERIAL PRIMARY KEY,
    total_amount DECIMAL,
    generated_at TIMESTAMP,
    payed_at TIMESTAMP,
    medical_history_id INT,
    FOREIGN KEY (medical_history_id) REFERENCES medical_hitories (id)
);

CREATE TABLE invoice_items (
    id SERIAL PRIMARY KEY,
    unit_price DECIMAL,
    quantity INT,
    total_price DECIMAL,
    invoice_id INT,
    treatement_id INT,
    FOREIGN KEY (invoice_id) REFERENCES invoices (id),
    FOREIGN KEY (treatement_id) REFERENCES treatments (id)
);

CREATE TABLE medical_historoies_treatement (
    medical_histories_id INT ,
    treatement_id INT,
    FOREIGN KEY (medical_histories_id) REFERENCES medical_hitories (id),
    FOREIGN KEY (treatement_id) REFERENCES treatments (id)
);

CREATE INDEX patient_ids ON patients (id);
CREATE INDEX medical_histories_ids ON medical_hitories (id);
CREATE INDEX ON medical_histories_has_treatments (medical_histories_id);
CREATE INDEX ON medical_histories_has_treatments (treatment_id);
CREATE INDEX invoice_ids ON invoices (id);
CREATE INDEX treatement_ids ON treatments (id);