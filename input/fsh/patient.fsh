// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Parent: Patient
Description: "An example profile of the Patient resource."
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* name 1..* MS
* name.given 1..1 MS
* name.family 1..1 MS
* telecom.system 1..1 MS
* telecom.value 1..1 MS
* birthDate 1..1 MS
* address.city 0..1 MS
* address.state 1..1 MS


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
