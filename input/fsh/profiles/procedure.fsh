Profile: ProcedureProfile
Parent: Procedure
Description: "Profile for a surgical procedure record, specifically for appendectomy."

* identifier 1..1 MS
* status 1..1 MS
* code.coding.system 1..1 MS
* code.coding.code 1..1 MS
* code.coding.display 1..1 MS
* subject.reference 1..1 MS
* performedDateTime 1..1 MS


Instance: ExampleProcedure  
InstanceOf: ProcedureProfile  
Title: "Example Appendectomy Procedure"  
Description: "An example instance of a surgical procedure record for an appendectomy."  

* identifier.system = "http://hospital.org/procedures"  
* identifier.value = "PROC-12345"  

* status = #completed  

* code.coding.system = "http://snomed.info/sct"  
* code.coding.code = #80146002  
* code.coding.display = "Appendectomy"  

* subject.reference = "Patient/example"  

* performedDateTime = "2025-02-20T10:00:00Z" 