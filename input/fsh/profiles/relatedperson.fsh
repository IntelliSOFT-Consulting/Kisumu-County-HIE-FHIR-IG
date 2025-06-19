Profile: ANCRelatedPerson
Parent: RelatedPerson
Id: ksm-anc-relatedperson
Title: "ANC RelatedPerson"
Description: "ANC RelatedPerson"

* ^name = "ANCRelatedPerson"
* ^status = #draft
* ^experimental = false
* ^fhirVersion = #4.0.1
* ^kind = #resource
* ^abstract = false
* ^type = "RelatedPerson"
* ^derivation = #constraint

// Constraint on the patient reference
* active 1..1 MS
* patient only Reference (KsmPatient)
* name 1..1 MS
* name.use 1..1 MS