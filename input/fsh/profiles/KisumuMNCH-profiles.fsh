// ============================================================
// Kisumu HIE MNCH DAK – FHIR Shorthand (FSH) Profiles
// Generated from Kisumu HIE MNCH DAK core data dictionary v1
// Covers: MNCH.E (Delivery), MNCH.F (PNC), MNCH.G (Procedures),
//         MNCH.H (Conditions)
// Base IG: http://fhir.health.go.ke/mnch
// ============================================================

Alias: $loinc       = http://loinc.org
Alias: $snomed      = http://snomed.info/sct
Alias: $icd10       = http://hl7.org/fhir/sid/icd-10
Alias: $icd11       = http://id.who.int/icd/release/11/mms
Alias: $mnch-cs     = http://fhir.health.go.ke/mnch/CodeSystem/MNCHCodes
Alias: $ucum        = http://unitsofmeasure.org


// ============================================================
// CODE SYSTEMS
// ============================================================

CodeSystem: MNCHCodes
Id: MNCHCodes
Title: "MNCH DAK Local Code System"
Description: "Local codes for Kisumu HIE MNCH data dictionary elements"
* ^url = "http://fhir.health.go.ke/mnch/CodeSystem/MNCHCodes"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

// Delivery mode codes
* #normal          "Normal vaginal delivery"
* #forceps         "Forceps-assisted delivery"
* #vacuum          "Vacuum-assisted delivery"
* #c-section       "Caesarean section"
* #svd             "Spontaneous vaginal delivery"
* #assisted        "Assisted delivery (other)"

// Delivery complication codes
* #no-complications         "No complications"
* #pph                      "Postpartum haemorrhage"
* #aph                      "Antepartum haemorrhage"
* #placenta-praevia         "Placenta praevia"
* #placental-abruption      "Placental abruption"
* #cord-prolapse            "Cord prolapse"
* #obstructed-labour        "Obstructed labour"
* #abnormal-presentation    "Abnormal presentation"
* #pre-eclampsia            "Pre-eclampsia"
* #eclampsia                "Eclampsia"
* #perineal-tear            "Perineal tear 3rd/4th degree"

// Blood loss codes
* #blood-loss-light    "Light blood loss (<500 mL)"
* #blood-loss-medium   "Medium blood loss (500–1000 mL)"
* #blood-loss-heavy    "Heavy blood loss (>1000 mL)"

// Place of delivery
* #health-facility  "Health facility"
* #home             "Home"

// Delivery cadre
* #nurse            "Nurse"
* #midwife          "Midwife"
* #clinical-officer "Clinical Officer"
* #doctor           "Doctor"

// HIV result / status
* #hiv-positive     "HIV Positive"
* #hiv-negative     "HIV Negative"
* #hiv-indeterminate "HIV Indeterminate"
* #hiv-unknown      "HIV Unknown"

// HAART / ART status
* #on-haart         "On HAART"
* #not-on-haart     "Not on HAART"
* #haart-na         "Not applicable (HIV-negative)"

// PNC timing
* #within-48h       "Within 48 hours"
* #1-2-weeks        "1–2 weeks postpartum"
* #6-weeks          "6 weeks postpartum"

// Appointment status
* #attended         "Attended"
* #missed           "Missed"
* #rescheduled      "Rescheduled"
* #cancelled        "Cancelled"

// Family planning methods
* #no-fp-method        "No family planning method"
* #oral-contraceptive  "Oral contraceptive"
* #iud                 "IUD"
* #implant             "Implant"
* #injectable          "Injectable contraceptive"
* #condoms             "Condoms"

// Condition clinical status overrides
* #active       "Active"
* #chronic      "Chronic"
* #resolved     "Resolved"

// Procedure status
* #planned      "Planned"
* #ongoing      "Ongoing (in-progress)"
* #completed    "Completed"

// Procedures (MNCH.G)
* #blood-type-test          "Blood type test ordered"
* #hiv-pmtct                "HIV testing – PMTCT screening"
* #malaria-rdt              "Malaria RDT / Microscopy"
* #hemoglobin-test          "Haemoglobin test"
* #urinalysis               "Urinalysis"
* #blood-sugar              "Blood sugar testing"
* #rhesus-test              "Rhesus (D) antigen test"
* #tt-vaccination           "Tetanus toxoid vaccination"
* #iron-folate              "Iron and folate supplementation"
* #deworming                "Deworming"
* #iptp-sp                  "IPTp-SP (malaria prevention)"
* #obstetric-ultrasound     "Obstetric ultrasound"
* #doppler                  "Doppler velocimetry"
* #svd-procedure            "Spontaneous vaginal delivery"
* #c-section-procedure      "Caesarean section procedure"
* #assisted-delivery        "Assisted delivery procedure"
* #episiotomy               "Episiotomy"
* #induction                "Induction of labour"
* #pph-management           "Postpartum haemorrhage management"


// ============================================================
// VALUE SETS
// ============================================================

ValueSet: MNCHDeliveryModeVS
Id: MNCHDeliveryModeVS
Title: "MNCH Delivery Mode"
Description: "Mode of delivery (MNCH.E.DE.8)"
* $mnch-cs#normal
* $mnch-cs#forceps
* $mnch-cs#vacuum
* $mnch-cs#c-section

ValueSet: MNCHDeliveryComplicationsVS
Id: MNCHDeliveryComplicationsVS
Title: "MNCH Delivery Complications"
Description: "Complications during delivery (MNCH.E.DE.13)"
* $mnch-cs#no-complications
* $mnch-cs#pph
* $mnch-cs#aph
* $mnch-cs#placenta-praevia
* $mnch-cs#placental-abruption
* $mnch-cs#cord-prolapse
* $mnch-cs#obstructed-labour
* $mnch-cs#abnormal-presentation
* $mnch-cs#pre-eclampsia
* $mnch-cs#eclampsia
* $mnch-cs#perineal-tear

ValueSet: MNCHBloodLossVS
Id: MNCHBloodLossVS
Title: "MNCH Blood Loss Category"
Description: "Estimated blood loss at delivery (MNCH.E.DE.39)"
* $mnch-cs#blood-loss-light
* $mnch-cs#blood-loss-medium
* $mnch-cs#blood-loss-heavy

ValueSet: MNCHPlaceOfDeliveryVS
Id: MNCHPlaceOfDeliveryVS
Title: "MNCH Place of Delivery"
Description: "Location of delivery (MNCH.E.DE.56)"
* $mnch-cs#health-facility
* $mnch-cs#home

ValueSet: MNCHDeliveryCadreVS
Id: MNCHDeliveryCadreVS
Title: "MNCH Delivery Cadre"
Description: "Person conducting the delivery (MNCH.E.DE.60)"
* $mnch-cs#nurse
* $mnch-cs#midwife
* $mnch-cs#clinical-officer
* $mnch-cs#doctor

ValueSet: MNCHHIVResultVS
Id: MNCHHIVResultVS
Title: "MNCH HIV Test Result"
Description: "HIV test result (MNCH.E.DE.3 / MNCH.F.DE.25)"
* $mnch-cs#hiv-positive
* $mnch-cs#hiv-negative
* $mnch-cs#hiv-indeterminate
* $mnch-cs#hiv-unknown

ValueSet: MNCHHAARTStatusVS
Id: MNCHHAARTStatusVS
Title: "MNCH Mother on HAART"
Description: "Mother's HAART status (MNCH.F.DE.29)"
* $mnch-cs#on-haart
* $mnch-cs#not-on-haart
* $mnch-cs#haart-na

ValueSet: MNCHPNCTimingVS
Id: MNCHPNCTimingVS
Title: "MNCH PNC Visit Timing"
Description: "Timing of postnatal care visit (MNCH.F.DE.7)"
* $mnch-cs#within-48h
* $mnch-cs#1-2-weeks
* $mnch-cs#6-weeks

ValueSet: MNCHAppointmentStatusVS
Id: MNCHAppointmentStatusVS
Title: "MNCH Appointment Status"
Description: "Status of scheduled appointment (MNCH.F.DE.2)"
* $mnch-cs#attended
* $mnch-cs#missed
* $mnch-cs#rescheduled
* $mnch-cs#cancelled

ValueSet: MNCHFamilyPlanningMethodVS
Id: MNCHFamilyPlanningMethodVS
Title: "MNCH Family Planning Methods"
Description: "Family planning methods used by the mother (MNCH.F.DE.39)"
* $mnch-cs#no-fp-method
* $mnch-cs#oral-contraceptive
* $mnch-cs#iud
* $mnch-cs#implant
* $mnch-cs#injectable
* $mnch-cs#condoms

ValueSet: MNCHProcedureCodeVS
Id: MNCHProcedureCodeVS
Title: "MNCH Procedure Codes"
Description: "Procedures performed during MNCH visits (MNCH.G)"
* $mnch-cs#blood-type-test
* $mnch-cs#hiv-pmtct
* $mnch-cs#malaria-rdt
* $mnch-cs#hemoglobin-test
* $mnch-cs#urinalysis
* $mnch-cs#blood-sugar
* $mnch-cs#rhesus-test
* $mnch-cs#tt-vaccination
* $mnch-cs#iron-folate
* $mnch-cs#deworming
* $mnch-cs#iptp-sp
* $mnch-cs#obstetric-ultrasound
* $mnch-cs#doppler
* $mnch-cs#svd-procedure
* $mnch-cs#c-section-procedure
* $mnch-cs#assisted-delivery
* $mnch-cs#episiotomy
* $mnch-cs#induction
* $mnch-cs#pph-management

ValueSet: MNCHConditionCodeVS
Id: MNCHConditionCodeVS
Title: "MNCH Condition Codes"
Description: "Clinical conditions documented in MNCH.H"
* $snomed#38341003    // Hypertension
* $snomed#73211009    // Diabetes mellitus
* $snomed#11687002    // Gestational diabetes
* $snomed#86406008    // HIV infection
* $snomed#56717001    // Tuberculosis
* $snomed#127040003   // Sickle cell disease/trait
* $snomed#56265001    // Cardiac disease
* $snomed#709044004   // Renal disease
* $snomed#398254007   // Pre-eclampsia
* $snomed#15938005    // Eclampsia
* $snomed#67802002    // Antepartum haemorrhage
* $snomed#14094001    // Hyperemesis gravidarum
* $snomed#16356006    // Multiple pregnancy
* $snomed#48723009    // Rh incompatibility
* $snomed#79586000    // Ectopic pregnancy
* $snomed#44223004    // Premature rupture of membranes
* $snomed#6757007     // Obstructed labour
* $snomed#17369002    // Spontaneous abortion
* $snomed#60810003    // Placenta praevia
* $snomed#415068001   // Placental abruption
* $snomed#61462000    // Malaria
* $snomed#68566005    // Urinary tract infection
* $snomed#8098009     // STI
* $snomed#11687002    // Previous caesarean section
* $snomed#206307003   // Postpartum depression
* $snomed#66214007    // Substance use disorder
* $snomed#197480006   // Anxiety disorder
* $snomed#276596005   // Macrosomia
* $snomed#276610007   // Fetal growth restriction
* $snomed#46230007    // Small for gestational age
* $snomed#53431008    // Large for gestational age


// ============================================================
// PROFILE: MNCH.E – Obstetric Delivery Encounter
// Base resource: Encounter
// ============================================================

Profile: MNCHDeliveryEncounter
Parent: Encounter
Id: mnch-delivery-encounter
Title: "MNCH Obstetric Delivery Encounter"
Description: "Records the obstetric delivery visit for a pregnant woman (MNCH.E)"

* identifier 1..* MS
* identifier ^short = "Unique patient identifier (MNCH.E.DE.1)"

* status 1..1 MS
* class 1..1 MS

* subject 1..1 MS
* subject only Reference(Patient)

* period.start 1..1 MS
* period.start ^short = "Date of delivery (MNCH.E.DE.7)"

* extension contains
    MNCHModeOfDelivery named modeOfDelivery 0..1 MS and
    MNCHDeliveryComplications named deliveryComplications 0..* MS and
    MNCHBloodLoss named bloodLoss 0..1 MS and
    MNCHPlaceOfDelivery named placeOfDelivery 1..1 MS and
    MNCHDeliveryBy named deliveryBy 1..1 MS and
    MNCHPreeclampsiaEclampsia named preeclampsiaEclampsia 0..1 MS and
    MNCHObstructedLabour named obstructedLabour 0..1 MS and
    MNCHConditionOfMother named conditionOfMother 0..1 MS and
    MNCHResuscitationDone named resuscitationDone 0..1 MS and
    MNCHMeconiumStainedLiquor named meconiumStainedLiquor 0..1 MS and
    MNCHDrugsAtDelivery named drugsAtDelivery 0..1 MS

* participant.individual only Reference(PractitionerRole)

// Cause of death (if applicable) – linked via associated Condition
* diagnosis 0..* MS
* diagnosis.condition only Reference(MNCHConditionProfile)
* diagnosis.condition ^short = "Cause of death or obstetric diagnosis (MNCH.E.DE.28)"

* hospitalization.dischargeDisposition 0..1 MS


// ============================================================
// PROFILE: MNCH Delivery Observations (Newborn vitals)
// Base resource: Observation – grouped under delivery encounter
// ============================================================

Profile: MNCHNewbornVitalsObservation
Parent: Observation
Id: mnch-newborn-vitals
Title: "MNCH Newborn Vitals at Delivery"
Description: "Newborn measurements and Apgar scores at delivery (MNCH.E.DE.49–DE.55)"

* status 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter only Reference(MNCHDeliveryEncounter)

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    birthWeight 1..1 MS and
    birthLength 0..1 MS and
    headCircumference 0..1 MS and
    apgar1min 1..1 MS and
    apgar5min 1..1 MS and
    apgar10min 0..1 MS

* component[birthWeight].code = $loinc#8339-4 "Birth weight Measured"
* component[birthWeight].value[x] only Quantity
* component[birthWeight].valueQuantity.unit = "kg"
* component[birthWeight].valueQuantity.system = $ucum
* component[birthWeight].valueQuantity.code = #kg

* component[birthLength].code = $loinc#8305-5 "Body height --at birth"
* component[birthLength].value[x] only Quantity
* component[birthLength].valueQuantity.unit = "cm"
* component[birthLength].valueQuantity.system = $ucum
* component[birthLength].valueQuantity.code = #cm

* component[headCircumference].code = $loinc#8287-5 "Head Occipital-frontal circumference by Tape measure"
* component[headCircumference].value[x] only Quantity
* component[headCircumference].valueQuantity.unit = "cm"
* component[headCircumference].valueQuantity.system = $ucum
* component[headCircumference].valueQuantity.code = #cm

* component[apgar1min].code = $loinc#9272-6 "1 minute Apgar Score"
* component[apgar1min].value[x] only integer

* component[apgar5min].code = $loinc#9274-2 "5 minute Apgar Score"
* component[apgar5min].value[x] only integer

* component[apgar10min].code = $loinc#9271-8 "10 minute Apgar Score"
* component[apgar10min].value[x] only integer


// ============================================================
// PROFILE: MNCH HIV Observation (Delivery + PNC)
// Base resource: Observation
// ============================================================

Profile: MNCHHIVObservation
Parent: Observation
Id: mnch-hiv-observation
Title: "MNCH HIV Test Observation"
Description: "HIV testing during delivery or PNC visit (MNCH.E.DE.2–DE.6 / MNCH.F.DE.25)"

* status 1..1 MS
* code = $loinc#75622-1 "HIV 1 and 2 tests - Meaningful Use set"
* subject 1..1 MS
* subject only Reference(Patient)

* value[x] only CodeableConcept
* valueCodeableConcept from MNCHHIVResultVS (required)
* valueCodeableConcept ^short = "HIV result: Positive / Negative / Indeterminate (MNCH.E.DE.3)"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    hivTested 1..1 MS

* component[hivTested].code = $loinc#55277-8 "HIV status"
* component[hivTested].value[x] only boolean
* component[hivTested].valueBoolean ^short = "Whether HIV test was conducted (MNCH.E.DE.2)"


// ============================================================
// PROFILE: MNCH.F – PNC Visit Encounter
// Base resource: Encounter
// ============================================================

Profile: MNCHPNCEncounter
Parent: Encounter
Id: mnch-pnc-encounter
Title: "MNCH Postnatal Care (PNC) Visit"
Description: "Records the postnatal care visit (MNCH.F)"

* identifier 1..* MS
* identifier ^short = "Unique patient identifier (MNCH.F.DE.1)"

* status 1..1 MS
* class 1..1 MS

* subject 1..1 MS
* subject only Reference(Patient)

* period.start 1..1 MS
* period.start ^short = "Date of PNC visit (MNCH.F.DE.11)"

* extension contains
    MNCHAppointmentStatus named appointmentStatus 1..1 MS and
    MNCHPNCTiming named pncTiming 1..1 MS and
    MNCHMotherHAARTStatus named motherHAART 0..1 MS and
    MNCHCotrimoxazoleMother named cotrimoxazoleMother 0..1 MS and
    MNCHHIVRetesting named hivRetesting 0..1 MS and
    MNCHFPCounseling named fpCounseling 0..1 MS and
    MNCHFPMethod named fpMethod 0..* MS and
    MNCHBabyImmunizationStarted named babyImmunizationStarted 0..1 MS and
    MNCHHEIARTProphylaxis named heiARTProphylaxis 0..1 MS and
    MNCHInfantCotrimoxazole named infantCotrimoxazole 0..1 MS


// ============================================================
// PROFILE: MNCH PNC Maternal Vitals Observation
// Base resource: Observation
// ============================================================

Profile: MNCHPNCMaternalVitalsObservation
Parent: Observation
Id: mnch-pnc-maternal-vitals
Title: "MNCH PNC Maternal Vitals"
Description: "Vital signs and clinical findings for the mother during a PNC visit (MNCH.F.DE.12–DE.24)"

* status 1..1 MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter only Reference(MNCHPNCEncounter)

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    bloodPressure 1..1 MS and
    temperature 1..1 MS and
    pulse 1..1 MS and
    respiratoryRate 1..1 MS and
    haemoglobin 1..1 MS and
    generalCondition 0..1 MS and
    breast 0..1 MS and
    csScar 0..1 MS and
    involutionUterus 0..1 MS and
    episiotomy 0..1 MS and
    lochia 0..1 MS and
    pelvicExam 0..1 MS

* component[bloodPressure].code = $loinc#55284-4 "Blood pressure systolic and diastolic"
* component[bloodPressure].value[x] only Quantity
* component[bloodPressure].valueQuantity.unit = "mmHg"
* component[bloodPressure].valueQuantity.system = $ucum
* component[bloodPressure].valueQuantity.code = #mm[Hg]

* component[temperature].code = $loinc#8310-5 "Body temperature"
* component[temperature].value[x] only Quantity
* component[temperature].valueQuantity.unit = "Cel"
* component[temperature].valueQuantity.system = $ucum
* component[temperature].valueQuantity.code = #Cel

* component[pulse].code = $loinc#8867-4 "Heart rate"
* component[pulse].value[x] only Quantity
* component[pulse].valueQuantity.unit = "/min"
* component[pulse].valueQuantity.system = $ucum
* component[pulse].valueQuantity.code = #/min

* component[respiratoryRate].code = $loinc#9279-1 "Respiratory rate"
* component[respiratoryRate].value[x] only Quantity
* component[respiratoryRate].valueQuantity.unit = "/min"
* component[respiratoryRate].valueQuantity.system = $ucum
* component[respiratoryRate].valueQuantity.code = #/min

* component[haemoglobin].code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* component[haemoglobin].value[x] only Quantity
* component[haemoglobin].valueQuantity.unit = "g/dL"
* component[haemoglobin].valueQuantity.system = $ucum
* component[haemoglobin].valueQuantity.code = #g/dL

* component[generalCondition].code = $loinc#32432-7 "Physical findings of General status Narrative"
* component[generalCondition].value[x] only string

* component[breast].code = $loinc#32449-1 "Physical findings of Breast Narrative"
* component[breast].value[x] only string

* component[csScar].code = $loinc#79916-9 "Surgical wound care"
* component[csScar].value[x] only string

* component[involutionUterus].code = $loinc#11879-1 "Uterus status"
* component[involutionUterus].value[x] only string

* component[episiotomy].code = $loinc#73695-6 "Perineum appearance"
* component[episiotomy].value[x] only string

* component[lochia].code = $loinc#8673-6 "Vaginal discharge [Volume]"
* component[lochia].value[x] only string

* component[pelvicExam].code = $loinc#32548-0 "Physical findings of Pelvis Narrative"
* component[pelvicExam].value[x] only string


// ============================================================
// PROFILE: MNCH PNC Baby Assessment Observation
// Base resource: Observation
// ============================================================

Profile: MNCHPNCBabyObservation
Parent: Observation
Id: mnch-pnc-baby-observation
Title: "MNCH PNC Baby Assessment"
Description: "Newborn assessment during PNC visit (MNCH.F.DE.47–DE.52)"

* status 1..1 MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter only Reference(MNCHPNCEncounter)

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    generalCondition 1..1 MS and
    temperature 1..1 MS and
    respiratoryRate 1..1 MS and
    feedingMethod 1..1 MS and
    breastfeedingAttachment 0..1 MS and
    umbilicalCord 0..1 MS

* component[generalCondition].code = $loinc#32432-7 "Physical findings of General status Narrative"
* component[generalCondition].value[x] only string

* component[temperature].code = $loinc#8310-5 "Body temperature"
* component[temperature].value[x] only Quantity
* component[temperature].valueQuantity.unit = "Cel"
* component[temperature].valueQuantity.system = $ucum
* component[temperature].valueQuantity.code = #Cel

* component[respiratoryRate].code = $loinc#9279-1 "Respiratory rate"
* component[respiratoryRate].value[x] only Quantity
* component[respiratoryRate].valueQuantity.unit = "/min"
* component[respiratoryRate].valueQuantity.system = $ucum
* component[respiratoryRate].valueQuantity.code = #/min

* component[feedingMethod].code = $loinc#63895-7 "Infant feeding method"
* component[feedingMethod].value[x] only string

* component[breastfeedingAttachment].code = $loinc#63895-7 "Breastfeeding attachment"
* component[breastfeedingAttachment].value[x] only string

* component[umbilicalCord].code = $loinc#29276-7 "Umbilical cord status"
* component[umbilicalCord].value[x] only string


// ============================================================
// PROFILE: MNCH.G – MNCH Procedure
// Base resource: Procedure
// ============================================================

Profile: MNCHProcedureProfile
Parent: Procedure
Id: mnch-procedure
Title: "MNCH Procedure"
Description: "A clinical procedure or intervention performed during an MNCH visit (MNCH.G)"

* identifier 0..* MS

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/event-status (required)
* status ^short = "Procedure status: planned | in-progress | completed (MNCH.G.DE2)"

* code 1..1 MS
* code from MNCHProcedureCodeVS (extensible)
* code ^short = "Procedure name (MNCH.G.DE1)"

* subject 1..1 MS
* subject only Reference(Patient)

* performed[x] 0..1 MS
* performedDateTime ^short = "Date and time procedure performed (MNCH.G.DE6 / DE7)"

* reasonCode 0..* MS
* reasonCode ^short = "Reason for procedure (MNCH.G.DE8)"

* note 0..* MS
* note ^short = "Additional notes about the procedure"

// Extensions for drugs / specific procedure details
* extension contains
    MNCHModeOfDeliveryProcedure named modeOfDelivery 0..1 MS


// ============================================================
// PROFILE: MNCH.H – Maternal Condition
// Base resource: Condition
// ============================================================

Profile: MNCHConditionProfile
Parent: Condition
Id: mnch-condition
Title: "MNCH Maternal Condition"
Description: "A clinical condition or diagnosis documented for a pregnant or postnatal woman (MNCH.H)"

* identifier 0..* MS

* clinicalStatus 1..1 MS
* clinicalStatus ^short = "Clinical status: active | chronic | resolved (MNCH.H.DE2)"

* code 1..1 MS
* code from MNCHConditionCodeVS (extensible)
* code ^short = "Condition name / diagnosis (MNCH.H.DE1)"

* subject 1..1 MS
* subject only Reference(Patient)

* onset[x] 0..1 MS
* onsetDateTime ^short = "Date of condition onset (MNCH.H.DE6)"

* severity 0..1 MS
* severity ^short = "Severity: mild | moderate | severe (MNCH.H.DE7)"
* severity from MNCHConditionSeverityVS (preferred)

* note 0..* MS
* note ^short = "Clinical notes or annotations"


ValueSet: MNCHConditionSeverityVS
Id: MNCHConditionSeverityVS
Title: "MNCH Condition Severity"
Description: "Severity classification for conditions (MNCH.H.DE7)"
* $snomed#255604002 "Mild"
* $snomed#6736007   "Moderate"
* $snomed#24484000  "Severe"


// ============================================================
// EXTENSIONS
// ============================================================

Extension: MNCHModeOfDelivery
Id: mnch-mode-of-delivery
Title: "MNCH Mode of Delivery"
Description: "The method by which the baby was delivered (MNCH.E.DE.8)"
* value[x] only CodeableConcept
* valueCodeableConcept from MNCHDeliveryModeVS (required)

Extension: MNCHDeliveryComplications
Id: mnch-delivery-complications
Title: "MNCH Delivery Complications"
Description: "Complications occurring during delivery (MNCH.E.DE.13)"
* value[x] only CodeableConcept
* valueCodeableConcept from MNCHDeliveryComplicationsVS (required)

Extension: MNCHBloodLoss
Id: mnch-blood-loss
Title: "MNCH Blood Loss"
Description: "Estimated blood loss at delivery (MNCH.E.DE.39)"
* value[x] only CodeableConcept
* valueCodeableConcept from MNCHBloodLossVS (required)

Extension: MNCHPlaceOfDelivery
Id: mnch-place-of-delivery
Title: "MNCH Place of Delivery"
Description: "Where the delivery took place (MNCH.E.DE.56)"
* value[x] only CodeableConcept
* valueCodeableConcept from MNCHPlaceOfDeliveryVS (required)

Extension: MNCHDeliveryBy
Id: mnch-delivery-by
Title: "MNCH Delivery Conducted By"
Description: "Cadre of the person who conducted the delivery (MNCH.E.DE.60)"
* value[x] only CodeableConcept
* valueCodeableConcept from MNCHDeliveryCadreVS (required)

Extension: MNCHPreeclampsiaEclampsia
Id: mnch-preeclampsia-eclampsia
Title: "MNCH Pre-eclampsia/Eclampsia"
Description: "Whether pre-eclampsia or eclampsia occurred (MNCH.E.DE.43)"
* value[x] only boolean

Extension: MNCHObstructedLabour
Id: mnch-obstructed-labour
Title: "MNCH Obstructed Labour"
Description: "Whether delivery involved obstructed labour (MNCH.E.DE.44)"
* value[x] only boolean

Extension: MNCHConditionOfMother
Id: mnch-condition-of-mother
Title: "MNCH Condition of Mother"
Description: "Clinical status of the mother post-delivery (MNCH.E.DE.45)"
* value[x] only string

Extension: MNCHResuscitationDone
Id: mnch-resuscitation-done
Title: "MNCH Resuscitation Done"
Description: "Whether the baby required resuscitation at birth (MNCH.E.DE.46)"
* value[x] only boolean

Extension: MNCHMeconiumStainedLiquor
Id: mnch-meconium-stained-liquor
Title: "MNCH Meconium Stained Liquor"
Description: "Presence of meconium in amniotic fluid (MNCH.E.DE.47)"
* value[x] only boolean

Extension: MNCHDrugsAtDelivery
Id: mnch-drugs-at-delivery
Title: "MNCH Drugs Administered at Delivery"
Description: "Medications given at delivery (MNCH.E.DE.48)"
* value[x] only string

Extension: MNCHAppointmentStatus
Id: mnch-appointment-status
Title: "MNCH Appointment Status"
Description: "Status of the client's scheduled appointment (MNCH.F.DE.2)"
* value[x] only CodeableConcept
* valueCodeableConcept from MNCHAppointmentStatusVS (required)

Extension: MNCHPNCTiming
Id: mnch-pnc-timing
Title: "MNCH PNC Visit Timing"
Description: "Point in postnatal period when the visit occurred (MNCH.F.DE.7)"
* value[x] only CodeableConcept
* valueCodeableConcept from MNCHPNCTimingVS (required)

Extension: MNCHMotherHAARTStatus
Id: mnch-mother-haart-status
Title: "MNCH Mother on HAART"
Description: "Whether the mother is on HAART (MNCH.F.DE.29)"
* value[x] only CodeableConcept
* valueCodeableConcept from MNCHHAARTStatusVS (required)

Extension: MNCHCotrimoxazoleMother
Id: mnch-cotrimoxazole-mother
Title: "MNCH Mother Cotrimoxazole Prophylaxis"
Description: "Cotrimoxazole prophylaxis initiated for HIV-positive mother (MNCH.F.DE.33)"
* value[x] only boolean

Extension: MNCHHIVRetesting
Id: mnch-hiv-retesting
Title: "MNCH HIV Retesting"
Description: "HIV re-testing done at 6/14 weeks and 9 months postpartum (MNCH.F.DE.34)"
* value[x] only boolean

Extension: MNCHFPCounseling
Id: mnch-fp-counseling
Title: "MNCH Family Planning Counseling"
Description: "Whether the mother received family planning counseling (MNCH.F.DE.35)"
* value[x] only CodeableConcept

Extension: MNCHFPMethod
Id: mnch-fp-method
Title: "MNCH Family Planning Method"
Description: "Family planning method chosen by the mother (MNCH.F.DE.39)"
* value[x] only CodeableConcept
* valueCodeableConcept from MNCHFamilyPlanningMethodVS (extensible)

Extension: MNCHBabyImmunizationStarted
Id: mnch-baby-immunization-started
Title: "MNCH Baby Immunization Started"
Description: "Whether newborn immunizations have been given (MNCH.F.DE.53)"
* value[x] only boolean

Extension: MNCHHEIARTProphylaxis
Id: mnch-hei-art-prophylaxis
Title: "MNCH HEI Infant ART Prophylaxis"
Description: "ART prophylaxis given to HIV-exposed infant (MNCH.F.DE.54)"
* value[x] only CodeableConcept

Extension: MNCHInfantCotrimoxazole
Id: mnch-infant-cotrimoxazole
Title: "MNCH Infant Cotrimoxazole Prophylaxis"
Description: "Cotrimoxazole initiated for HIV-exposed infant (MNCH.F.DE.58)"
* value[x] only CodeableConcept

Extension: MNCHModeOfDeliveryProcedure
Id: mnch-mode-of-delivery-procedure
Title: "MNCH Mode of Delivery (Procedure context)"
Description: "Mode of delivery documented as part of a procedure record (MNCH.G.DE27)"
* value[x] only CodeableConcept
* valueCodeableConcept from MNCHDeliveryModeVS (required)
