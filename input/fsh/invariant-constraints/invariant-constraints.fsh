Invariant : PatientIdentification-1
Description :  "The Patient profile SHALL have at least one identifier \"NationaID\" or \"BirthCertificate\"."
Expression : "identifier.slice('http://example.org/StructureDefinition/ksm-patient','NationalIDNo').count() + identifier.slice('http://example.org/StructureDefinition/ksm-patient','BirthCertificateNo').count() > 0"
Severity : #error

Invariant : MustHavePhoneNumber-1
Description : "At least one telecom entry must have system = 'phone' and a value."
Expression : "telecom.where(system = 'phone' and value.exists()).exists()"
Severity : #error

Invariant : MustHaveMFLcode-1
Description : "The facility SHALL have atleast a Kenya Master Facility Code (KMFL)"
Expression : "identifier.slice('http://example.org/StructureDefinition/ksm-organization','KMFLCode').count() > 0"
Severity : #error