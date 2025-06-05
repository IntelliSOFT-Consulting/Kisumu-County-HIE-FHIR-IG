Profile: EncounterProfile
Parent: Encounter
Description: "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient."
* identifier 0..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* status 1..1 MS
* serviceType 0..1 MS
* subject 0..1 MS
* period 0..1 MS
* length 0..1 MS
* reasonCode 0..1 MS
* appointment 0..1 MS
* diagnosis 0..* MS
* diagnosis.condition 1..1 MS
* serviceProvider 0..1 MS


Instance: ExampleEncounter
InstanceOf: EncounterProfile
Title: "Example Encounter Instance"
Description: "An example instance of an Encounter conforming to EncounterProfile."

* identifier[0].system = "http://hospital.smarthealth.org/encounters"
* identifier[0].value = "ENC-20250605-001"
* status = #finished
* serviceType.coding[0].system = "http://terminology.hl7.org/CodeSystem/service-type"
* serviceType.coding[0].code = #57
* serviceType.coding[0].display = "General Practice"
* subject.reference = "Patient/example"
* period.start = "2025-06-05T08:30:00Z"
* period.end = "2025-06-05T09:00:00Z"
* length.value = 30
* length.unit = "minutes"
* length.system = "http://unitsofmeasure.org"
* reasonCode[0].coding[0].system = "http://snomed.info/sct"
* reasonCode[0].coding[0].code = #65363002
* reasonCode[0].coding[0].display = "Otitis media"
* appointment.reference = "Appointment/example"
// * diagnosis[0].condition.reference = "Condition/example"
* serviceProvider.reference = "Organization/example"
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* class.display = "ambulatory"