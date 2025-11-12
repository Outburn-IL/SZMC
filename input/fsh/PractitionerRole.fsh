Profile: SzmcPractitionerRole
Parent: il-core-practitioner-role
Id: szmc-practitioner-role
Title: "SZMC PractitionerRole"
Description: "SZMC PractitionerRole profile based on the ILCore PractitionerRole profile"
* meta only ILHDPMeta
* meta 1..1
* meta.security[HDP] 1..1
* meta.security[HDP].system 1..1
* meta.security[HDP].code 1..1
* meta.security[HDP].system = $info-buckets (exactly)
* meta.security[HDP].code = #practitioner (exactly)
* meta.security[HDP].display = "מטפל" (exactly)
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains emp-role 1..1
* identifier[emp-role].system 1..1
* identifier[emp-role].system = "http://fhir.szmc.org.il/identifier/employee-role" (exactly)
* identifier[emp-role].value 1..1

* practitioner.identifier.system = "http://fhir.szmc.org.il/identifier/enc-id" (exactly)

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains tafkid 1..1
* code.coding[tafkid].system 1..1
* code.coding[tafkid].system = "http://fhir.szmc.org.il/cs/tafkid" (exactly)
* code.coding[tafkid].code 1..1
* code.coding[tafkid].display 1..1