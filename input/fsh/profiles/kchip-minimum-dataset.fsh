// ============================================================
// KCHIP Minimum Dataset – FHIR Shorthand (FSH) Profiles
// Kisumu County Health Information Platform (KCHIP)
// Minimum dataset for longitudinal continuity of care in MNCH
// Supports exchange when a pregnant woman moves between facilities
// Covers Sections 2–8 of the KCHIP Minimum Dataset document
// Section 1 (Patient ID/Demographics) is covered by KsmPatient
// ============================================================

Alias: $loinc    = http://loinc.org
Alias: $snomed   = http://snomed.info/sct
Alias: $ucum     = http://unitsofmeasure.org
Alias: $kchip-cs = http://fhir.kisumuhealth.co.ke/CodeSystem/KCHIPCodes


// ============================================================
// LOCAL CODE SYSTEM
// ============================================================

CodeSystem: KCHIPCodes
Id: KCHIPCodes
Title: "KCHIP Minimum Dataset Code System"
Description: "Local codes for KCHIP data elements without standard LOINC/SNOMED equivalents"
* ^url = "http://fhir.kisumuhealth.co.ke/CodeSystem/KCHIPCodes"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

// Panel / observation type codes
* #pregnancy-context-panel    "Pregnancy Context Panel"
* #anc-vitals-panel           "ANC Clinical Observations Panel"
* #danger-signs-panel         "Danger Signs Assessment Panel"
* #labour-panel               "Labour Observations Panel"

// Fetal lie (component observation code + value codes)
* #fetal-lie                  "Fetal lie"
* #fetal-lie-longitudinal     "Longitudinal lie"
* #fetal-lie-transverse       "Transverse lie"
* #fetal-lie-oblique          "Oblique lie"
* #fetal-lie-unstable         "Unstable lie"

// Fetal presentation (component observation code + value codes)
* #fetal-presentation         "Fetal presentation"
* #presentation-cephalic      "Cephalic"
* #presentation-breech        "Breech"
* #presentation-shoulder      "Shoulder"
* #presentation-face          "Face"
* #presentation-brow          "Brow"

// Fetal heart sounds (component observation code)
* #fetal-heart-sounds         "Fetal heart sounds (heard/not heard)"

// HIV status values
* #hiv-positive               "HIV Positive"
* #hiv-negative               "HIV Negative"
* #hiv-unknown                "HIV Status Unknown"

// Syphilis status values (RPR-based)
* #syphilis-reactive          "Syphilis Reactive"
* #syphilis-non-reactive      "Syphilis Non-Reactive"
* #syphilis-unknown           "Syphilis Status Unknown"

// Blood group / Rh combined values
* #blood-group-a-pos          "A Positive (A+)"
* #blood-group-a-neg          "A Negative (A-)"
* #blood-group-b-pos          "B Positive (B+)"
* #blood-group-b-neg          "B Negative (B-)"
* #blood-group-ab-pos         "AB Positive (AB+)"
* #blood-group-ab-neg         "AB Negative (AB-)"
* #blood-group-o-pos          "O Positive (O+)"
* #blood-group-o-neg          "O Negative (O-)"

// Urine protein dipstick values
* #urine-protein-negative     "Negative"
* #urine-protein-trace        "Trace"
* #urine-protein-1plus        "1+"
* #urine-protein-2plus        "2+"
* #urine-protein-3plus        "3+"

// Membrane status (component observation code + values)
* #membrane-status            "Membrane status"
* #membranes-intact           "Membranes intact"
* #membranes-ruptured         "Membranes ruptured"

// Liquor colour (component observation code + values)
* #liquor-colour              "Colour of liquor after membrane rupture"
* #liquor-clear               "Clear"
* #liquor-meconium            "Meconium-stained"
* #liquor-bloodstained        "Bloodstained"
* #liquor-offensive           "Offensive"

// Labour onset type (component observation code + values)
* #labour-onset-type          "Onset of labour type"
* #labour-spontaneous         "Spontaneous onset"
* #labour-induced             "Induced"
* #labour-augmented           "Augmented"

// Pregnancy type (diagnosis level)
* #uncomplicated-pregnancy    "Uncomplicated pregnancy"
* #complicated-pregnancy      "Complicated pregnancy"

// Danger sign observation component codes
* #danger-vaginal-bleeding          "Vaginal bleeding"
* #danger-severe-headache           "Severe headache"
* #danger-blurred-vision            "Blurred vision"
* #danger-reduced-fetal-movements   "Reduced fetal movements"
* #danger-convulsions               "Convulsions"
* #danger-severe-abdominal-pain     "Severe abdominal pain"


// ============================================================
// VALUE SETS
// ============================================================

ValueSet: KCHIPFetalLieVS
Id: KCHIPFetalLieVS
Title: "KCHIP Fetal Lie"
Description: "Fetal lie options for ANC observation"
* $kchip-cs#fetal-lie-longitudinal
* $kchip-cs#fetal-lie-transverse
* $kchip-cs#fetal-lie-oblique
* $kchip-cs#fetal-lie-unstable

ValueSet: KCHIPFetalPresentationVS
Id: KCHIPFetalPresentationVS
Title: "KCHIP Fetal Presentation"
Description: "Fetal presentation options for ANC observation"
* $kchip-cs#presentation-cephalic
* $kchip-cs#presentation-breech
* $kchip-cs#presentation-shoulder
* $kchip-cs#presentation-face
* $kchip-cs#presentation-brow

ValueSet: KCHIPHIVStatusVS
Id: KCHIPHIVStatusVS
Title: "KCHIP HIV Status"
Description: "HIV status as known at the point of HIE exchange"
* $kchip-cs#hiv-positive
* $kchip-cs#hiv-negative
* $kchip-cs#hiv-unknown

ValueSet: KCHIPSyphilisStatusVS
Id: KCHIPSyphilisStatusVS
Title: "KCHIP Syphilis Status"
Description: "Syphilis (RPR) status as known at the point of HIE exchange"
* $kchip-cs#syphilis-reactive
* $kchip-cs#syphilis-non-reactive
* $kchip-cs#syphilis-unknown

ValueSet: KCHIPBloodGroupVS
Id: KCHIPBloodGroupVS
Title: "KCHIP Blood Group and Rh Factor"
Description: "Combined ABO blood group and Rh factor result"
* $kchip-cs#blood-group-a-pos
* $kchip-cs#blood-group-a-neg
* $kchip-cs#blood-group-b-pos
* $kchip-cs#blood-group-b-neg
* $kchip-cs#blood-group-ab-pos
* $kchip-cs#blood-group-ab-neg
* $kchip-cs#blood-group-o-pos
* $kchip-cs#blood-group-o-neg

ValueSet: KCHIPUrineProteinVS
Id: KCHIPUrineProteinVS
Title: "KCHIP Urine Protein Dipstick"
Description: "Semi-quantitative urine protein dipstick result"
* $kchip-cs#urine-protein-negative
* $kchip-cs#urine-protein-trace
* $kchip-cs#urine-protein-1plus
* $kchip-cs#urine-protein-2plus
* $kchip-cs#urine-protein-3plus

ValueSet: KCHIPMembraneStatusVS
Id: KCHIPMembraneStatusVS
Title: "KCHIP Membrane Status"
Description: "Status of membranes during labour"
* $kchip-cs#membranes-intact
* $kchip-cs#membranes-ruptured

ValueSet: KCHIPLiquorColourVS
Id: KCHIPLiquorColourVS
Title: "KCHIP Liquor Colour"
Description: "Character of amniotic fluid after membrane rupture"
* $kchip-cs#liquor-clear
* $kchip-cs#liquor-meconium
* $kchip-cs#liquor-bloodstained
* $kchip-cs#liquor-offensive

ValueSet: KCHIPLabourOnsetVS
Id: KCHIPLabourOnsetVS
Title: "KCHIP Labour Onset Type"
Description: "How labour was initiated"
* $kchip-cs#labour-spontaneous
* $kchip-cs#labour-induced
* $kchip-cs#labour-augmented

ValueSet: KCHIPDiagnosisVS
Id: KCHIPDiagnosisVS
Title: "KCHIP Pregnancy Diagnoses"
Description: "Clinical diagnoses identified in the KCHIP Minimum Dataset (Section 5)"
* $kchip-cs#uncomplicated-pregnancy
* $kchip-cs#complicated-pregnancy
* $snomed#398254007  "Pre-eclampsia"
* $snomed#73211009   "Hypertension"
* $snomed#271737000  "Anaemia"
* $snomed#11687002   "Gestational diabetes"
* $snomed#86406008   "HIV infection"
* $snomed#76272004   "Syphilis"
* $snomed#16356006   "Multiple pregnancy"
* $snomed#67802002   "Antepartum haemorrhage"
* $snomed#161805006  "History of Cesarean delivery"


// ============================================================
// SECTION 2: Pregnancy Context
// ============================================================

Profile: KCHIPPregnancyContext
Parent: Observation
Id: kchip-pregnancy-context
Title: "KCHIP Pregnancy Context"
Description: "Pregnancy context data for the KCHIP minimum dataset: gravidity, parity, delivery history and risk, LMP, EDD, gestational age (clinical and by ultrasound)."

* status 1..1 MS
* code = $kchip-cs#pregnancy-context-panel "Pregnancy Context Panel"
* subject 1..1 MS
* subject only Reference(KsmPatient)
* effective[x] 1..1 MS
* effectiveDateTime MS

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    gravidity                1..1 MS and
    parity                   1..1 MS and
    deliveryHistoryRisk      0..1 MS and
    lmp                      1..1 MS and
    edd                      0..1 MS and
    gestationalAgeClinical   0..1 MS and
    gestationalAgeUltrasound 0..1 MS

* component[gravidity].code = $loinc#11996-6 "Gravida"
* component[gravidity].code ^short = "Number of pregnancies (including current)"
* component[gravidity].value[x] only integer

* component[parity].code = $loinc#11977-6 "Parity"
* component[parity].code ^short = "Number of completed deliveries"
* component[parity].value[x] only integer

* component[deliveryHistoryRisk].code = $loinc#8691-8 "History of Pregnancies Narrative"
* component[deliveryHistoryRisk].code ^short = "Previous delivery history and identified risks"
* component[deliveryHistoryRisk].value[x] only string

* component[lmp].code = $loinc#8665-2 "Last menstrual period start date"
* component[lmp].value[x] only dateTime

* component[edd].code = $loinc#11778-8 "Delivery date Estimated"
* component[edd].value[x] only dateTime

* component[gestationalAgeClinical].code = $loinc#18185-9 "Gestational age"
* component[gestationalAgeClinical].code ^short = "Gestational age calculated clinically from LMP"
* component[gestationalAgeClinical].value[x] only Quantity
* component[gestationalAgeClinical].valueQuantity.unit = "wk"
* component[gestationalAgeClinical].valueQuantity.system = $ucum
* component[gestationalAgeClinical].valueQuantity.code = #wk

* component[gestationalAgeUltrasound].code = $loinc#11884-4 "Gestational age Estimated from last menstrual period and ultrasound"
* component[gestationalAgeUltrasound].code ^short = "Gestational age confirmed by ultrasound"
* component[gestationalAgeUltrasound].value[x] only Quantity
* component[gestationalAgeUltrasound].valueQuantity.unit = "wk"
* component[gestationalAgeUltrasound].valueQuantity.system = $ucum
* component[gestationalAgeUltrasound].valueQuantity.code = #wk


Instance: KCHIPPregnancyContextExample
InstanceOf: KCHIPPregnancyContext
Title: "Example – KCHIP Pregnancy Context"
Usage: #example

* status = #final
* subject = Reference(KisumuPatientExample)
* effectiveDateTime = "2026-05-10T09:00:00+03:00"

* component[gravidity].valueInteger = 3
* component[parity].valueInteger = 2
* component[deliveryHistoryRisk].valueString = "Previous SVD x2; no complications. Current pregnancy: previous caesarean section risk noted."
* component[lmp].valueDateTime = "2025-08-14"
* component[edd].valueDateTime = "2026-05-21"

* component[gestationalAgeClinical].valueQuantity.value = 36
* component[gestationalAgeClinical].valueQuantity.unit = "wk"
* component[gestationalAgeClinical].valueQuantity.system = $ucum
* component[gestationalAgeClinical].valueQuantity.code = #wk

* component[gestationalAgeUltrasound].valueQuantity.value = 35
* component[gestationalAgeUltrasound].valueQuantity.unit = "wk"
* component[gestationalAgeUltrasound].valueQuantity.system = $ucum
* component[gestationalAgeUltrasound].valueQuantity.code = #wk


// ============================================================
// SECTION 3: Key Longitudinal Clinical Observations
// ============================================================

Profile: KCHIPANCVitals
Parent: Observation
Id: kchip-anc-vitals
Title: "KCHIP ANC Clinical Observations"
Description: "Key longitudinal clinical observations from the KCHIP minimum dataset: blood pressure, pulse, weight, fundal height, fetal lie, fetal presentation, fetal heart sounds, and fetal heart rate."

* status 1..1 MS
* code = $kchip-cs#anc-vitals-panel "ANC Clinical Observations Panel"
* subject 1..1 MS
* subject only Reference(KsmPatient)
* encounter only Reference(KsmPatientEncounter)
* effective[x] 1..1 MS
* effectiveDateTime MS

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    bpSystolic        1..1 MS and
    bpDiastolic       1..1 MS and
    pulse             0..1 MS and
    weight            1..1 MS and
    fundalHeight      1..1 MS and
    fetalLie          0..1 MS and
    fetalPresentation 0..1 MS and
    fetalHeartHeard   1..1 MS and
    fetalHeartRate    0..1 MS

* component[bpSystolic].code = $loinc#8480-6 "Systolic blood pressure"
* component[bpSystolic].value[x] only Quantity
* component[bpSystolic].valueQuantity.unit = "mmHg"
* component[bpSystolic].valueQuantity.system = $ucum
* component[bpSystolic].valueQuantity.code = #mm[Hg]

* component[bpDiastolic].code = $loinc#8462-4 "Diastolic blood pressure"
* component[bpDiastolic].value[x] only Quantity
* component[bpDiastolic].valueQuantity.unit = "mmHg"
* component[bpDiastolic].valueQuantity.system = $ucum
* component[bpDiastolic].valueQuantity.code = #mm[Hg]

* component[pulse].code = $loinc#8867-4 "Heart rate"
* component[pulse].value[x] only Quantity
* component[pulse].valueQuantity.unit = "/min"
* component[pulse].valueQuantity.system = $ucum
* component[pulse].valueQuantity.code = #/min

* component[weight].code = $loinc#29463-7 "Body weight"
* component[weight].value[x] only Quantity
* component[weight].valueQuantity.unit = "kg"
* component[weight].valueQuantity.system = $ucum
* component[weight].valueQuantity.code = #kg

* component[fundalHeight].code = $loinc#11881-0 "Fundal height of Uterus by Tape measure"
* component[fundalHeight].value[x] only Quantity
* component[fundalHeight].valueQuantity.unit = "cm"
* component[fundalHeight].valueQuantity.system = $ucum
* component[fundalHeight].valueQuantity.code = #cm

* component[fetalLie].code = $kchip-cs#fetal-lie "Fetal lie"
* component[fetalLie].value[x] only CodeableConcept
* component[fetalLie].valueCodeableConcept from KCHIPFetalLieVS (required)

* component[fetalPresentation].code = $kchip-cs#fetal-presentation "Fetal presentation"
* component[fetalPresentation].value[x] only CodeableConcept
* component[fetalPresentation].valueCodeableConcept from KCHIPFetalPresentationVS (required)

* component[fetalHeartHeard].code = $kchip-cs#fetal-heart-sounds "Fetal heart sounds (heard/not heard)"
* component[fetalHeartHeard].value[x] only boolean

* component[fetalHeartRate].code = $loinc#55283-6 "Fetal Heart rate"
* component[fetalHeartRate].value[x] only Quantity
* component[fetalHeartRate].valueQuantity.unit = "/min"
* component[fetalHeartRate].valueQuantity.system = $ucum
* component[fetalHeartRate].valueQuantity.code = #/min


Instance: KCHIPANCVitalsExample
InstanceOf: KCHIPANCVitals
Title: "Example – KCHIP ANC Clinical Observations"
Usage: #example

* status = #final
* subject = Reference(KisumuPatientExample)
* encounter = Reference(KisumuEncounterExample)
* effectiveDateTime = "2026-05-10T09:15:00+03:00"

* component[bpSystolic].valueQuantity.value = 130
* component[bpSystolic].valueQuantity.unit = "mmHg"
* component[bpSystolic].valueQuantity.system = $ucum
* component[bpSystolic].valueQuantity.code = #mm[Hg]

* component[bpDiastolic].valueQuantity.value = 85
* component[bpDiastolic].valueQuantity.unit = "mmHg"
* component[bpDiastolic].valueQuantity.system = $ucum
* component[bpDiastolic].valueQuantity.code = #mm[Hg]

* component[pulse].valueQuantity.value = 82
* component[pulse].valueQuantity.unit = "/min"
* component[pulse].valueQuantity.system = $ucum
* component[pulse].valueQuantity.code = #/min

* component[weight].valueQuantity.value = 72
* component[weight].valueQuantity.unit = "kg"
* component[weight].valueQuantity.system = $ucum
* component[weight].valueQuantity.code = #kg

* component[fundalHeight].valueQuantity.value = 34
* component[fundalHeight].valueQuantity.unit = "cm"
* component[fundalHeight].valueQuantity.system = $ucum
* component[fundalHeight].valueQuantity.code = #cm

* component[fetalLie].valueCodeableConcept = $kchip-cs#fetal-lie-longitudinal "Longitudinal lie"
* component[fetalPresentation].valueCodeableConcept = $kchip-cs#presentation-cephalic "Cephalic"
* component[fetalHeartHeard].valueBoolean = true

* component[fetalHeartRate].valueQuantity.value = 148
* component[fetalHeartRate].valueQuantity.unit = "/min"
* component[fetalHeartRate].valueQuantity.system = $ucum
* component[fetalHeartRate].valueQuantity.code = #/min


// ============================================================
// SECTION 4: Key Laboratory Results
// ============================================================

Profile: KCHIPLabResults
Parent: Observation
Id: kchip-lab-results
Title: "KCHIP Key Laboratory Results"
Description: "Key laboratory results from the KCHIP minimum dataset: haemoglobin, HIV status, syphilis status, blood group/Rh factor, and urine protein."

* status 1..1 MS
* code = $loinc#26436-6 "Laboratory studies (set)"
* subject 1..1 MS
* subject only Reference(KsmPatient)
* encounter only Reference(KsmPatientEncounter)
* effective[x] 1..1 MS
* effectiveDateTime MS

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    haemoglobin    1..1 MS and
    hivStatus      1..1 MS and
    syphilisStatus 1..1 MS and
    bloodGroup     1..1 MS and
    urineProtein   1..1 MS

* component[haemoglobin].code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* component[haemoglobin].value[x] only Quantity
* component[haemoglobin].valueQuantity.unit = "g/dL"
* component[haemoglobin].valueQuantity.system = $ucum
* component[haemoglobin].valueQuantity.code = #g/dL

* component[hivStatus].code = $loinc#75622-1 "HIV 1 and 2 tests - Meaningful Use set"
* component[hivStatus].code ^short = "HIV status at point of exchange"
* component[hivStatus].value[x] only CodeableConcept
* component[hivStatus].valueCodeableConcept from KCHIPHIVStatusVS (required)

* component[syphilisStatus].code = $loinc#20507-0 "Reagin Ab [Units/volume] in Serum"
* component[syphilisStatus].code ^short = "Syphilis (RPR) status at point of exchange"
* component[syphilisStatus].value[x] only CodeableConcept
* component[syphilisStatus].valueCodeableConcept from KCHIPSyphilisStatusVS (required)

* component[bloodGroup].code = $loinc#882-2 "ABO and Rh group [Type] in Blood"
* component[bloodGroup].value[x] only CodeableConcept
* component[bloodGroup].valueCodeableConcept from KCHIPBloodGroupVS (required)

* component[urineProtein].code = $loinc#5804-0 "Protein [Mass/volume] in Urine"
* component[urineProtein].code ^short = "Urine protein by dipstick"
* component[urineProtein].value[x] only CodeableConcept
* component[urineProtein].valueCodeableConcept from KCHIPUrineProteinVS (required)


Instance: KCHIPLabResultsExample
InstanceOf: KCHIPLabResults
Title: "Example – KCHIP Key Laboratory Results"
Usage: #example

* status = #final
* subject = Reference(KisumuPatientExample)
* encounter = Reference(KisumuEncounterExample)
* effectiveDateTime = "2026-05-10T09:30:00+03:00"

* component[haemoglobin].valueQuantity.value = 10.2
* component[haemoglobin].valueQuantity.unit = "g/dL"
* component[haemoglobin].valueQuantity.system = $ucum
* component[haemoglobin].valueQuantity.code = #g/dL

* component[hivStatus].valueCodeableConcept = $kchip-cs#hiv-negative "HIV Negative"
* component[syphilisStatus].valueCodeableConcept = $kchip-cs#syphilis-non-reactive "Syphilis Non-Reactive"
* component[bloodGroup].valueCodeableConcept = $kchip-cs#blood-group-o-pos "O Positive (O+)"
* component[urineProtein].valueCodeableConcept = $kchip-cs#urine-protein-negative "Negative"


// ============================================================
// SECTION 5: Diagnosis
// ============================================================

Profile: KCHIPPregnancyDiagnosis
Parent: Condition
Id: kchip-pregnancy-diagnosis
Title: "KCHIP Pregnancy Diagnosis"
Description: "Clinical diagnosis for a pregnant woman exchanged via the KCHIP minimum dataset (Section 5). Covers both uncomplicated and complicated pregnancy diagnoses."

* clinicalStatus 1..1 MS
* verificationStatus 0..1 MS
* code 1..1 MS
* code from KCHIPDiagnosisVS (extensible)
* code ^short = "KCHIP pregnancy diagnosis"
* subject 1..1 MS
* subject only Reference(KsmPatient)
* encounter only Reference(KsmPatientEncounter)
* onset[x] 0..1 MS
* onsetDateTime MS
* severity 0..1 MS
* note 0..* MS
* note ^short = "Additional clinical notes on the diagnosis"


Instance: KCHIPDiagnosisExample
InstanceOf: KCHIPPregnancyDiagnosis
Title: "Example – KCHIP Pregnancy Diagnosis"
Usage: #example

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code = $snomed#398254007 "Pre-eclampsia"
* subject = Reference(KisumuPatientExample)
* encounter = Reference(KisumuEncounterExample)
* onsetDateTime = "2026-05-10"
* note[0].text = "BP 145/95 at 36 weeks; urine protein 2+. Referred for specialist review."


// ============================================================
// SECTION 6: Referral and Care Plan
// ============================================================

// 6a. Referral Request
Profile: KCHIPReferral
Parent: ServiceRequest
Id: kchip-referral
Title: "KCHIP Referral Request"
Description: "Referral to another facility or specialist, exchanged as part of the KCHIP minimum dataset (Section 6 – Referral Reason)."

* status 1..1 MS
* intent 1..1 MS
* intent = #order
* subject 1..1 MS
* subject only Reference(KsmPatient)
* requester 0..1 MS
* requester only Reference(Practitioner or PractitionerRole)
* performer 0..* MS
* performer only Reference(Organization)
* reasonCode 1..* MS
* reasonCode ^short = "Reason for referral (e.g. pre-eclampsia, severe anaemia)"
* occurrenceDateTime 0..1 MS
* occurrenceDateTime ^short = "Date of referral"
* note 0..* MS
* note ^short = "Clinical summary and information for the receiving facility"


Instance: KCHIPReferralExample
InstanceOf: KCHIPReferral
Title: "Example – KCHIP Referral"
Usage: #example

* status = #active
* intent = #order
* subject = Reference(KisumuPatientExample)
* requester = Reference(Practitioner/example-practitioner-01)
* performer[0] = Reference(Organization/kisumu-county-hospital)
* reasonCode[0].text = "Pre-eclampsia at 36 weeks – BP 145/95, urine protein 2+. Referred for consultant-level management."
* occurrenceDateTime = "2026-05-10"
* note[0].text = "Patient is G3P2. On methyldopa 250mg BD. Fetal heart sounds present. FHR 148/min."


// 6b. Current Treatment / Medications
Profile: KCHIPMedicationStatement
Parent: MedicationStatement
Id: kchip-medication-statement
Title: "KCHIP Current Medication"
Description: "Current treatment or medications for a pregnant woman exchanged via the KCHIP minimum dataset (Section 6 – Current Treatment/Medications)."

* status 1..1 MS
* medication[x] 1..1 MS
* medicationCodeableConcept MS
* medicationCodeableConcept ^short = "Medication name (coded or text)"
* subject 1..1 MS
* subject only Reference(KsmPatient)
* effective[x] 0..1 MS
* effectivePeriod MS
* reasonCode 0..* MS
* reasonCode ^short = "Indication or reason for the medication"
* dosage 0..* MS
* dosage.text MS
* note 0..* MS


Instance: KCHIPMedicationStatementExample
InstanceOf: KCHIPMedicationStatement
Title: "Example – KCHIP Current Medication"
Usage: #example

* status = #active
* medicationCodeableConcept.text = "Methyldopa 250mg"
* subject = Reference(KisumuPatientExample)
* effectivePeriod.start = "2026-04-20"
* reasonCode[0].text = "Hypertension in pregnancy"
* dosage[0].text = "250mg orally twice daily"


// ============================================================
// SECTION 7: Labour
// ============================================================

Profile: KCHIPLabourObservation
Parent: Observation
Id: kchip-labour-observation
Title: "KCHIP Labour Observation"
Description: "Clinical observations during labour from the KCHIP minimum dataset (Section 7): onset of labour, cervical dilation, fetal heart rate, membrane status, and colour of liquor."

* status 1..1 MS
* code = $kchip-cs#labour-panel "Labour Observations Panel"
* subject 1..1 MS
* subject only Reference(KsmPatient)
* encounter only Reference(KsmPatientEncounter)
* effective[x] 1..1 MS
* effectiveDateTime MS

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    labourOnset      1..1 MS and
    cervicalDilation 0..1 MS and
    fetalHeartRate   1..1 MS and
    membraneStatus   1..1 MS and
    liquorColour     0..1 MS

* component[labourOnset].code = $kchip-cs#labour-onset-type "Onset of labour type"
* component[labourOnset].value[x] only CodeableConcept
* component[labourOnset].valueCodeableConcept from KCHIPLabourOnsetVS (required)

* component[cervicalDilation].code = $loinc#20745-6 "Cervical dilation by pelvic exam"
* component[cervicalDilation].value[x] only Quantity
* component[cervicalDilation].valueQuantity.unit = "cm"
* component[cervicalDilation].valueQuantity.system = $ucum
* component[cervicalDilation].valueQuantity.code = #cm

* component[fetalHeartRate].code = $loinc#55283-6 "Fetal Heart rate"
* component[fetalHeartRate].value[x] only Quantity
* component[fetalHeartRate].valueQuantity.unit = "/min"
* component[fetalHeartRate].valueQuantity.system = $ucum
* component[fetalHeartRate].valueQuantity.code = #/min

* component[membraneStatus].code = $kchip-cs#membrane-status "Membrane status"
* component[membraneStatus].value[x] only CodeableConcept
* component[membraneStatus].valueCodeableConcept from KCHIPMembraneStatusVS (required)

* component[liquorColour].code = $kchip-cs#liquor-colour "Colour of liquor after membrane rupture"
* component[liquorColour].code ^short = "Only populate when membranes are ruptured"
* component[liquorColour].value[x] only CodeableConcept
* component[liquorColour].valueCodeableConcept from KCHIPLiquorColourVS (required)


Instance: KCHIPLabourObservationExample
InstanceOf: KCHIPLabourObservation
Title: "Example – KCHIP Labour Observation"
Usage: #example

* status = #final
* subject = Reference(KisumuPatientExample)
* encounter = Reference(KisumuEncounterExample)
* effectiveDateTime = "2026-05-21T04:30:00+03:00"

* component[labourOnset].valueCodeableConcept = $kchip-cs#labour-spontaneous "Spontaneous onset"

* component[cervicalDilation].valueQuantity.value = 6
* component[cervicalDilation].valueQuantity.unit = "cm"
* component[cervicalDilation].valueQuantity.system = $ucum
* component[cervicalDilation].valueQuantity.code = #cm

* component[fetalHeartRate].valueQuantity.value = 144
* component[fetalHeartRate].valueQuantity.unit = "/min"
* component[fetalHeartRate].valueQuantity.system = $ucum
* component[fetalHeartRate].valueQuantity.code = #/min

* component[membraneStatus].valueCodeableConcept = $kchip-cs#membranes-ruptured "Membranes ruptured"
* component[liquorColour].valueCodeableConcept = $kchip-cs#liquor-clear "Clear"


// ============================================================
// SECTION 8: Danger Signs
// ============================================================

Profile: KCHIPDangerSigns
Parent: Observation
Id: kchip-danger-signs
Title: "KCHIP Danger Signs"
Description: "Maternal danger signs from the KCHIP minimum dataset (Section 8): vaginal bleeding, severe headache, blurred vision, reduced fetal movements, convulsions, and severe abdominal pain. Each is recorded as a boolean (present/absent)."

* status 1..1 MS
* code = $kchip-cs#danger-signs-panel "Danger Signs Assessment Panel"
* subject 1..1 MS
* subject only Reference(KsmPatient)
* encounter only Reference(KsmPatientEncounter)
* effective[x] 1..1 MS
* effectiveDateTime MS

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    vaginalBleeding       1..1 MS and
    severeHeadache        1..1 MS and
    blurredVision         1..1 MS and
    reducedFetalMovements 1..1 MS and
    convulsions           1..1 MS and
    severeAbdominalPain   1..1 MS

* component[vaginalBleeding].code = $kchip-cs#danger-vaginal-bleeding "Vaginal bleeding"
* component[vaginalBleeding].value[x] only boolean

* component[severeHeadache].code = $kchip-cs#danger-severe-headache "Severe headache"
* component[severeHeadache].value[x] only boolean

* component[blurredVision].code = $kchip-cs#danger-blurred-vision "Blurred vision"
* component[blurredVision].value[x] only boolean

* component[reducedFetalMovements].code = $kchip-cs#danger-reduced-fetal-movements "Reduced fetal movements"
* component[reducedFetalMovements].value[x] only boolean

* component[convulsions].code = $kchip-cs#danger-convulsions "Convulsions"
* component[convulsions].value[x] only boolean

* component[severeAbdominalPain].code = $kchip-cs#danger-severe-abdominal-pain "Severe abdominal pain"
* component[severeAbdominalPain].value[x] only boolean


Instance: KCHIPDangerSignsExample
InstanceOf: KCHIPDangerSigns
Title: "Example – KCHIP Danger Signs"
Usage: #example

* status = #final
* subject = Reference(KisumuPatientExample)
* encounter = Reference(KisumuEncounterExample)
* effectiveDateTime = "2026-05-10T09:45:00+03:00"

* component[vaginalBleeding].valueBoolean = false
* component[severeHeadache].valueBoolean = true
* component[blurredVision].valueBoolean = true
* component[reducedFetalMovements].valueBoolean = false
* component[convulsions].valueBoolean = false
* component[severeAbdominalPain].valueBoolean = false
