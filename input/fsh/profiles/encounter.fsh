Profile: Ksm-PatientEncounter
Parent: Encounter
Id: ksm-patient-encounter
Title: "Encounter - Kisumu Patient"
Description: "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient."

* status 1..1 MS
* serviceType 1..1 MS
* serviceType.coding.code from EncounterServiceTypeVS (extensible)
* subject 1..1 MS
* subject only Reference(ksm-patient)
* serviceProvider 1..1 MS
* serviceProvider only Reference(ksm-organization)
