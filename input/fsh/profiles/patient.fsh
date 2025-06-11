// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: KsmPatient
Parent: Patient
Id: ksm-patient
Title: "Patient - Kisumu Patient"
Description: "Demographics for the Kisumu County Patient"
* obeys PatientIdentification-1
* obeys MustHavePhoneNumber-1

* identifier 1..* MS

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false

// STEP 2: Declare the slice
* identifier contains 
    NationalIDNo 0..1 MS and 
    NUPI 0..1 MS and  
    PassportNo 0..1 MS and 
    BirthCertificateNo 0..1 MS 


// STEP 3: Add constraints to the slice
* identifier[NationalIDNo].value 1..1
* identifier[NationalIDNo].system = "http://moh.kenya/identifier/nationalID-no"

* identifier[NUPI].value 1..1
* identifier[NUPI].system = "http://moh.kenya/identifier/NUPI"

* identifier[PassportNo].value 1..1
* identifier[PassportNo].system = "http://moh.kenya/identifier/passport-No"

* identifier[BirthCertificateNo].value 1..1
* identifier[BirthCertificateNo].system = "http://moh.kenya/identifier/birthCertificate-No"

* name.family 1..1 MS
* name.family ^short = "Patient's surname"
* name.given 1..1 MS
* name.given ^short = "Other patient names i.e first and middle name"
* active MS
* gender 1..1 MS
* birthDate MS
* maritalStatus.coding.system 1..1 MS
* maritalStatus.coding.code 1..1 MS 
* telecom 0..* MS
* telecom.system 1..1 MS
* telecom.value 1..1 MS

* address.city 0..1 MS
* address.city ^short = "Patient's village/Estate/Landmark"
* address.district 0..1 MS
* address.district ^short = "Patient's Sub County  of residence"
* address.state 0..1 MS
* address.state ^short = "Patient's County  of residence"
* address.country 0..1 MS

* managingOrganization 1..1 MS


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
