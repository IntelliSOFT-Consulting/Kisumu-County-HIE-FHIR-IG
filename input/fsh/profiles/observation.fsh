Profile: ObservationProfile
Parent: Observation
Id: ksm-anc-observation
Title: "ObservationProfile"
Description: "ObservationProfile"
* identifier 0..* MS
* identifier.system 1..1  MS
* identifier.value 1..1   MS
* status 1..1 MS
* category 0..*   MS
* code 1..1   MS
* subject 0..1 MS
* subject only Reference(Patient)
* effective[x] 0..1   MS
* effectiveDateTime   MS
* effectivePeriod MS
* issued 0..1 MS
* value[x] 0..1 MS
* valueQuantity  MS
* valueCodeableConcept MS
* valueString MS
* valueBoolean MS
* valueInteger MS
* valueRange MS
* valueTime MS
* valueDateTime MS
* valuePeriodMS
* interpretation 0..* MS
* bodySite 0..1 MS
* method 0..1 MS
* referenceRange 0..* MS
* component.code 1..1 MS
* component.value[x] 0..1 MS
* interpretation 0..* MS
* dataAbsentReason 0..1   MS



Instance: ExampleObservation  
InstanceOf: ObservationProfile  
Title: "Example Observation"  
Description: "An example instance of an observation following the ObservationProfile."  

* identifier.system = "http://hospital.org/observations"  
* identifier.value = "OBS-78901"  

* status = #final  

* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"  
* category[0].coding.code = #vital-signs  
* category[0].coding.display = "Vital Signs"  

* code.coding.system = "http://loinc.org"  
* code.coding.code = #8310-5  
* code.coding.display = "Body temperature"  

* subject.reference = "Patient/example"  

* effectiveDateTime = "2025-03-12T08:30:00Z"  
* issued = "2025-03-12T09:00:00Z"  

* valueQuantity.value = 37.5  
* valueQuantity.unit = "Celsius"  
* valueQuantity.system = "http://unitsofmeasure.org"  
* valueQuantity.code = #Cel  

* interpretation[0].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"  
* interpretation[0].coding.code = #H  
* interpretation[0].coding.display = "High"  

* bodySite.coding.system = "http://snomed.info/sct"  
* bodySite.coding.code = #368209003  
* bodySite.coding.display = "Oral cavity structure"  

* method.coding.system = "http://snomed.info/sct"  
* method.coding.code = #89003005  
* method.coding.display = "Thermometry"  

* referenceRange[0].low.value = 36.1  
* referenceRange[0].low.unit = "Celsius"  
* referenceRange[0].high.value = 37.2  
* referenceRange[0].high.unit = "Celsius"  

* component[0].code.coding.system = "http://loinc.org"  
* component[0].code.coding.code = #8327-9  
* component[0].code.coding.display = "Oral temperature"  
* component[0].valueQuantity.value = 37.5  
* component[0].valueQuantity.unit = "Celsius" 