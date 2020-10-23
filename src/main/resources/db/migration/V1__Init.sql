CREATE SCHEMA IF NOT EXISTS covid19_exchange;

CREATE TABLE "covid19_exchange".covid19_patients
(
    private_uuid uuid NOT NULL,
    public_id bigint,
    first_name character(255) COLLATE pg_catalog."default",
    last_name character(255) COLLATE pg_catalog."default",
    date_of_birth date,
    patient_declared_place_of_residence_full_address_string text COLLATE pg_catalog."default",
    patient_declared_place_of_residence_lat numeric,
    patient_declared_place_of_residence_lng numeric,
    CONSTRAINT covid19_patients_pkey PRIMARY KEY (private_uuid)
);

CREATE TABLE "covid19_exchange".covid19_laboratories
(
    private_uuid uuid NOT NULL,
    public_id bigint,
    short_name character(12) COLLATE pg_catalog."default",
    full_name character(512) COLLATE pg_catalog."default",
    CONSTRAINT covid19_laboratories_pkey PRIMARY KEY (private_uuid)
);

CREATE TABLE "covid19_exchange".covid19_samples
(
    private_uuid uuid NOT NULL,
    public_id bigint,
    patient_private_id uuid,
    laboratory_private_id uuid,
    sample_order_number integer,
    sample_collection_full_address_string text COLLATE pg_catalog."default",
    sample_collection_lat numeric,
    sample_collection_lng numeric,
    CONSTRAINT covid19_samples_pkey PRIMARY KEY (private_uuid)
);

CREATE TABLE "covid19_exchange".covid19_patient_health_observations
(
    private_uuid uuid NOT NULL,
    public_id bigint,
    patient_id uuid,
    chronical_diseases json,
    obesity json,
    smoking json,
    hearth_pressure json,
    observation_datetime timestamp with time zone,
    CONSTRAINT covid19_patient_health_observations_pkey PRIMARY KEY (private_uuid)
);