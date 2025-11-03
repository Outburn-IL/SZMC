Profile: SzmcOrganization
Parent: il-core-organization
Id: szmc-organization
Title: "SZMC Organization"
Description: "SZMC Organization profile based on the ILCore Organization profile"
* meta only ILHDPMeta
* meta 1..1
* meta.security[HDP] 1..1
* meta.security[HDP].system 1..1
* meta.security[HDP].code 1..1
* meta.security[HDP].system = $info-buckets (exactly)
* meta.security[HDP].code = #organization (exactly)
* meta.security[HDP].display = "יחידה ארגונית" (exactly)
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"   
* type.coding ^slicing.rules = #open
* type.coding contains szmc-dep 1..1
* type.coding[szmc-dep].system 1..1
* type.coding[szmc-dep].system = "http://fhir.szmc.org.il/cs/dept-id" (exactly)
* type.coding[szmc-dep].code 1..1
* type.coding[szmc-dep].display 1..1

