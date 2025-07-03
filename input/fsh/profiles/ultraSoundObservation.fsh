Alias: $SCT = http://snomed.info/sct
Alias: $LOINC = http://loinc.org


Profile: KsmUltraSoundObservation
Parent: Observation
Id: ksm-ultrasound-observation
Title: "Ultrasound - Kisumu Patient"
Description: "Profile for ANC ultrasound including metadata and findings"

* status 1..1 MS
* category 1..1 MS
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code = http://snomed.info/sct#118245000 "Ultrasound scan"
* subject 1..1 MS
* effective[x] 1..1 MS
* component 7..* MS

// Enable slicing
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

// Ultrasound required
* component contains ultrasoundRequired 1..1
* component[ultrasoundRequired].code = $SCT#103315006 "Ultrasound scan requested"
* component[ultrasoundRequired].valueBoolean MS

// Ultrasound ordered
* component contains ultrasoundOrdered 0..1
* component[ultrasoundOrdered].code = $SCT#3457005 "Diagnostic procedure ordered"
* component[ultrasoundOrdered].valueBoolean MS

// Ultrasound conducted
* component contains ultrasoundConducted 0..1
* component[ultrasoundConducted].code = $SCT#371525003 "Ultrasound scan done"
* component[ultrasoundConducted].valueBoolean MS

// Ultrasound date
* component contains ultrasoundDate 0..1
* component[ultrasoundDate].code = $LOINC#34574-4 "Ultrasound study date"
* component[ultrasoundDate].valueDateTime MS

// Ultrasound reasonNotDone
* component contains reasonNotDone 0..1
* component[reasonNotDone].code = $SCT#183966005 "Procedure not done reason"
* component[reasonNotDone].valueCodeableConcept from ANCReasonUltrasoundNotDoneVS 

// Ultrasound amnioticFluidLevel
* component contains amnioticFluidLevel 0..1
* component[amnioticFluidLevel].code = $LOINC#11882-8 "Amniotic fluid volume"
* component[amnioticFluidLevel].valueCodeableConcept from ANCAmnioticFluidLevelVS 

// Ultrasound placentaLocation
* component contains placentaLocation 0..1
* component[placentaLocation].code = $LOINC#11876-0 "Placenta location"
* component[placentaLocation].valueCodeableConcept from ANCPlacentaLocationVS 