ValueSet: genderVS
Id: gender-vs
Title: "Gender"
Description: "Administrative gender"
* ^experimental = false
* ^name = "GENDERVS"
// * include codes from system http://snomed.org/sn/ where code = 123456 and display = "Example"


ValueSet: EncounterServiceTypeVS
Id : encounter-servicetype-vs
Title:        "Encounter Service Type"
Description:  "Codes for Encounter Service type"
* ^experimental = false
* ^name = "ENCOUNTERSERVICETYPEVS"
* ^url = "http://example.org/fhir/ValueSet/encounter-servicetype-vs"
* include codes from system EncounterServiceTypeCS


// ValueSet: maritalStatusVS
// Title:        "Marital Status"
// Description:  "Marital Status"
// * ^experimental = false
// * ^name = "MARITALVS"

// * MMT.A#DE16
// * MMT.A#DE17
// * MMT.A#DE18
// * MMT.A#DE19