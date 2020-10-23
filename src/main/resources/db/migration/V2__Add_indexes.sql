CREATE UNIQUE INDEX covid19_patients_private_uuid_idx ON "covid19_exchange".covid19_patients (private_uuid);
CREATE UNIQUE INDEX covid19_laboratories_private_uuid_idx ON "covid19_exchange".covid19_laboratories (private_uuid);
CREATE UNIQUE INDEX covid19_samples_private_uuid_idx ON "covid19_exchange".covid19_samples (private_uuid);
CREATE UNIQUE INDEX covid19_patient_health_observations_private_uuid_idx ON "covid19_exchange".covid19_patient_health_observations (private_uuid);