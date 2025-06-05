// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: BeneficiaryRegistry
Parent: Patient
Description: "An example profile of the Patient resource."
* identifier 0..* MS
* identifier.type.coding.system 1..1 MS
* identifier.type.coding.code 1..1 MS
* identifier.value 1..1 MS
* name 1..1 MS
* active MS
* gender 1..1 MS
* gender
* birthDate MS
* maritalStatus.coding.system 1..1 MS
* maritalStatus.coding.code 1..1 MS 
* maritalStatus 
* telecom 0..* MS
// * telecom.use from $Contact_point_us_VS -> telecom.use is a code, not a URL
* telecom.system 1..1 MS
* telecom.value 1..1 MS


// Instance: PatientExample
// InstanceOf: MyPatient
// Description: "An example of a patient with a license to krill."
// * name
//   * given[0] = "James"
//   * family = "Pond"


// Instance: MyPatientExample
// InstanceOf: MyPatient
// Title: "Example Patient Instance"
// Description: "A sample patient conforming to the MyPatient profile."

// * identifier.system = "http://hospital.smarthealth.org"
// * identifier.value = "123456"

// * name[0].given[0] = "John"
// * name[0].family = "Doe"

// * telecom[0].system = #phone
// * telecom[0].value = "+1-555-555-1234"

// * birthDate = "1980-01-01"

// * address[0].state = "NY"
// * address[0].city = "Metropolis"
