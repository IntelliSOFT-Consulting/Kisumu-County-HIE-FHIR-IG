Profile: KsmOrganization
Parent: Organization
Id: ksm-organization
Title: "Service Provider - Facility"
Description: "Details for collecting information for Service provider (Facility) within Kisumu County"
* obeys MustHaveMFLcode-1

* identifier 1..* MS

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "The organization SHALL have an MFL code as part of the identifiers"
* identifier ^slicing.ordered = false

* identifier contains 
    KMFLCode 0..1 MS

* identifier[KMFLCode].value 1..1 MS
* identifier[KMFLCode].system = "http://moh.kenya/identifier/kmfl-code"

* active 1..1
* name 1..1
* contact 1..1
* contact.address 1..1



Instance: ksm-organization-example
InstanceOf: KsmOrganization
Title: "Example - Kisumu Facility Organization"
Description: "A health facility in Kisumu County with KMFL code"
Usage: #example

* active = true
* name = "Kisumu County Referral Hospital"

* identifier[KMFLCode].system = "http://moh.kenya/identifier/kmfl-code"
* identifier[KMFLCode].value = "12456"

* contact[0].address.line = "Kisumu-Busia Road"
* contact[0].address.city = "Kisumu"
* contact[0].address.district = "Kisumu Central"
* contact[0].address.state = "Kisumu"
* contact[0].address.country = "Kenya"