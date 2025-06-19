Profile: Ksm-PatientAppointment
Parent: Appointment
Id: ksm-patient-appointment
Title: "Appointment - Kisumu Patient"
Description: "A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s)."
* status 1..1 MS
* cancelationReason 0..1 MS
* appointmentType 0..1 MS
* reasonCode 0..1 MS
* reasonReference only Reference(ksm-anc-observation or ksm-anc-condition)
* start 1..1 MS
* end 1..1 MS
* created 0..1 MS


