Profile: KsmPatientEncounter
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


Instance: KisumuEncounterExample
InstanceOf: KsmPatientEncounter
Title: "Example – Kisumu ANC Encounter"
Description: "A sample ANC encounter used by KCHIP minimum dataset examples."
Usage: #example

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* serviceType.coding[0].system = "http://fhir.kisumuhealth.co.ke/CodeSystem/EncounterServiceType"
* serviceType.coding[0].code = #3
* serviceType.coding[0].display = "ANC Encounter"
* subject = Reference(KisumuPatientExample)
* period.start = "2026-05-10T09:00:00+03:00"
* period.end   = "2026-05-10T10:00:00+03:00"
* serviceProvider = Reference(ksm-organization-example)
