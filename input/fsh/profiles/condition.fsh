Profile: Ksm-Condition
Parent: Condition
Id: ksm-anc-condition
Title: "ANC Condition"
Description: "Kisumu ANC Condition"
* ^status = #draft
* ^experimental = false
* ^name = "ANCCondition"
* ^fhirVersion = #4.0.1
* ^kind = #resource
* ^abstract = false
* ^type = "Condition"
* ^derivation = #constraint

// Constraints
* subject only Reference(ksm-patient)
* encounter only Reference(ksm-patient-encounter)
* asserter only Reference(
    PractitionerProfile or
    ksm-patient 
  )
