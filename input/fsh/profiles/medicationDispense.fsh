Profile: MedicationDispenseProfile
Parent: MedicationDispense
Description: "Profile for a medication dispense record."

* identifier 1..1 MS
* status 1..1 MS
* medicationCodeableConcept.coding.system 1..1 MS
* medicationCodeableConcept.coding.code 1..1 MS
* medicationCodeableConcept.coding.display 1..1 MS
* subject.reference 1..1 MS
* context.reference 1..1 MS
* whenHandedOver 1..1 MS


Instance: ExampleMedicationDispense  
InstanceOf: MedicationDispenseProfile  
Title: "Example Medication Dispense"  
Description: "An example instance of a medication dispense record following the MedicationDispenseProfile."  

* identifier.system = "http://hospital.org/medication-dispenses"  
* identifier.value = "MD-12345"  

* status = #completed  

* medicationCodeableConcept.coding.system = "http://www.nlm.nih.gov/research/umls/rxnorm"  
* medicationCodeableConcept.coding.code = #1049630  
* medicationCodeableConcept.coding.display = "Amoxicillin 500mg Capsule"  

* subject.reference = "Patient/example"  

* context.reference = "Encounter/example"  

* whenHandedOver = "2025-03-10T14:00:00Z"  