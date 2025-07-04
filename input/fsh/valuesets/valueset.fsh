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


ValueSet: ANCReasonUltrasoundNotDoneVS
Id: anc-reason-ultrasound-not-done-vs
Title: "Reason Ultrasound Not Done"
Description: "Reason Ultrasound Not Done"
* ^experimental = false
* ^name = "ANCREASONULTRASOUNDNOTDONEVS"
* ^url = "http://example.org/fhir/ValueSet/encounter-servicetype-vs"
* include codes from system ANCReasonUltrasoundNotDoneCS


ValueSet: ANCAmnioticFluidLevelVS
Id: anc-amniotic-fluid-level-vs
Title: "Amniotic Fluid Level"
Description: "Amniotic Fluid Level"
* ^experimental = false
* ^name = "ANCAMNIOTICFLUIDLEVELVS"
* ^url = "http://example.org/fhir/ValueSet/encounter-servicetype-vs"
* include codes from system ANCAmnioticFluidLevelCS


ValueSet: ANCPlacentaLocationVS
Id: anc-placenta-location-vs
Title: "Placenta Location"
Description: "Placenta Location"
* ^experimental = false
* ^name = "ANCPLACENTALOCATIONVS"
* ^url = "http://example.org/fhir/ValueSet/encounter-servicetype-vs"
* include codes from system ANCPlacentaLocationCS