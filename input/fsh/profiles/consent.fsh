Alias: $ConsentDeclineReason = http://fhir.kisumuhealth.co.ke/StructureDefinition/consent-decline-reason

Profile: ConsentKisumuPatient
Parent: Consent
Id: consent-kisumu-patient
Title: "Kisumu Patient Consent Profile"
Description: "Profile for capturing Kisumu patient consent decisions in Kisumu health information exchange, including explicit capture of consent refusal reasons."

* status 1..1 MS
* scope 1..1 MS
* category 1..* MS
* patient 1..1 MS
* patient only Reference(Patient)

// Organization — the facility managing the consent
* organization 1..* MS
* organization only Reference(Organization)
* organization ^short = "Kisumu health facility managing this consent"

// Performer — the practitioner who obtained the consent
* performer 1..* MS
* performer only Reference(Practitioner or PractitionerRole)
* performer ^short = "Practitioner who obtained the patient consent"

* provision 0..1 MS

// Require provision type when provision exists
* provision.type 1..1 MS

// Allow deny/permit explicitly
* provision.type from http://hl7.org/fhir/ValueSet/consent-provision-type (required)

// Bind common consent categories (can be refined later in IG)
* category from http://terminology.hl7.org/ValueSet/consentcategorycodes (required)

// Attach decline reason extension to provision
* extension contains $ConsentDeclineReason named declineReason 0..1
* extension[declineReason] ^short = "Reason why patient declined consent"
* extension[declineReason] ^definition = "Captures the reason why a patient declined consent."
* extension[declineReason].value[x] only string

// ------------------------------
// Extension for decline reason
// ------------------------------
Extension: ConsentDeclineReason
Id: consent-decline-reason
Title: "Consent Decline Reason"
Description: "Captures the reason why a patient declined consent."
* value[x] only string


// ------------------------------
// DECLINED EXAMPLE
// ------------------------------
Instance: ConsentDeclinedExample01
InstanceOf: ConsentKisumuPatient
Usage: #example

* status = #active

* scope.coding[0] = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"

* category[0] = http://terminology.hl7.org/CodeSystem/consentcategorycodes#idscl "Information Disclosure"

* patient = Reference(Patient/example-patient-01)

// Organization that manages the consent
* organization[0] = Reference(Organization/kisumu-county-hospital)

// Practitioner who obtained the consent
* performer[0] = Reference(Practitioner/example-practitioner-01)

* provision.type = #deny

// Decline reason extension
* extension[declineReason].valueString = "Patient declined consent due to concerns about sharing personal health information beyond the care facility."


// ------------------------------
// GRANTED EXAMPLE
// ------------------------------
Instance: ConsentGrantedExample01
InstanceOf: ConsentKisumuPatient
Usage: #example

* status = #active

* scope.coding[0] = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"

* category[0] = http://terminology.hl7.org/CodeSystem/consentcategorycodes#idscl "Information Disclosure"

* patient = Reference(Patient/example-patient-01)

// Organization that manages the consent
* organization[0] = Reference(Organization/kisumu-county-hospital)

// Practitioner who obtained the consent
* performer[0] = Reference(Practitioner/example-practitioner-01)

* provision.type = #permit