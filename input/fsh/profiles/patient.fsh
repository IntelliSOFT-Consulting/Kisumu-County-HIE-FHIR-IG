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
* name.given 1..* MS
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
* address.city ^short = "Patient's Sub-County"
* address.district 0..1 MS
* address.district ^short = "Patient's Ward  of residence"
* address.state 0..1 MS
* address.state ^short = "Patient's County  of residence"
* address.country 0..1 MS
* address.postalCode 0..1 MS
* address.postalCode ^short = "Patient's postal code"
* address.text 0..1 MS
* address.text ^short = "Patient's Address"


* managingOrganization 1..1 MS
* managingOrganization only Reference(ksm-organization)


Instance: KisumuPatientExample
InstanceOf: KsmPatient
Title: "Example - Kisumu County Patient"
Description: "A sample Kisumu patient with required identifiers, name, telecom, address, and organization reference."
Usage: #example

* active = true
* gender = #female
* birthDate = "1990-04-23"

* identifier[NationalIDNo].system = "http://moh.kenya/identifier/nationalID-no"
* identifier[NationalIDNo].value = "12345678"

* identifier[NUPI].system = "http://moh.kenya/identifier/NUPI"
* identifier[NUPI].value = "NUPI-00123456789"

* identifier[PassportNo].system = "http://moh.kenya/identifier/passport-No"
* identifier[PassportNo].value = "KE1234567"

* identifier[BirthCertificateNo].system = "http://moh.kenya/identifier/birthCertificate-No"
* identifier[BirthCertificateNo].value = "BC-19900423-XYZ"

* name[0].family = "Odhiambo"
* name[0].given[0] = "Achieng"
* name[0].given[1] = "Grace"

* telecom[0].system = #phone
* telecom[0].value = "+254712345678"

* maritalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.coding[0].code = #M  // Example: M = Married

* address[0].city = "Nyamasaria"
* address[0].district = "Kisumu East"
* address[0].state = "Kisumu"
* address[0].country = "Kenya"
* address[0].postalCode = "40100"
* address[0].text = "Nyamasaria, Kisumu East, Kisumu County, Kenya"

* managingOrganization = Reference(ksm-organization-example)
