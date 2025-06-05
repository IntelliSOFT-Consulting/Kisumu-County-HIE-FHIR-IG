Profile: PractitionerProfile
Parent: Practitioner
Id: PractitionerProfile
Title: "PractitionerProfile"
Description: "PractitionerProfile"
* identifier 0..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* active 0..1 MS
* name 0..1 MS
* telecom 0..1 MS
* address 0..1 MS
* gender 0..1 MS
* birthDate 0..1 MS
* photo 0..1 MS
* qualification.identifier 0..1 MS
* qualification.code 1..1 MS
* qualification.period 0..1 MS
* qualification.issuer 0..1 MS



Instance: ExamplePractitioner  
InstanceOf: PractitionerProfile  
Title: "Example Practitioner"  
Description: "An example instance of a healthcare practitioner following the PractitionerProfile."  

* identifier.system = "http://hospital.org/practitioners"  
* identifier.value = "PRAC-45678"  

* active = true  

* name.family = "Doe"  
* name.given[0] = "John"  

* telecom.system = #phone  
* telecom.value = "+1234567890"  
* telecom.use = #work  

* address.line = "123 Medical Plaza"  
* address.city = "Nairobi"  
* address.state = "Nairobi County"  
* address.postalCode = "00100"  
* address.country = "Kenya"  

* gender = #male  

* birthDate = "1980-05-15"  

// * photo.contentType = "image/jpeg"  
// * photo.url = "http://hospital.org/photos/practitioner-45678.jpg"  

* qualification.identifier.system = "http://medicalboard.org/licenses"  
* qualification.identifier.value = "MB-789654"  

* qualification.code.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0360/2.7"  
* qualification.code.coding.code = #MD  
* qualification.code.coding.display = "Doctor of Medicine"  

* qualification.period.start = "2010-06-01"  

* qualification.issuer.reference = "Organization/example-medical-board"  