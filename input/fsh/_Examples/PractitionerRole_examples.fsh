// Aliases
Alias: $info-buckets = http://fhir.health.gov.il/cs/il-hdp-information-buckets

// ============================================================================
// Example 1: Physician Role in Internal Medicine Department
// ============================================================================
Instance: SzmcPractitionerRoleExample01
InstanceOf: SzmcPractitionerRole
Usage: #example
Title: "SZMC Physician Role - Internal Medicine"
Description: "Complete example of a physician's role in the internal medicine department"

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #practitioner
* meta.security[HDP].display = "מטפל"

* identifier[emp-role].system = "http://fhir.szmc.org.il/identifier/employee-role"
* identifier[emp-role].value = "EMP-ROLE-12345"

* active = true

* period.start = "2010-01-15"

* practitioner = Reference(SzmcPractitionerExample01)
* organization = Reference(SzmcInternalMedicineDept)

* code.coding[0] = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor "Doctor"
* code.coding[tafkid] = http://fhir.szmc.org.il/cs/tafkid#doctor "Doctor"

* specialty = http://snomed.info/sct#419772000 "Family practice"

* telecom[0].system = #phone
* telecom[0].value = "03-5302500"
* telecom[0].use = #work

* telecom[1].system = #email
* telecom[1].value = "dr.levi@sheba.health.gov.il"
* telecom[1].use = #work

// ============================================================================
// Example 2: Nurse Role in same Department
// ============================================================================
Instance: SzmcPractitionerRoleExample02
InstanceOf: SzmcPractitionerRole
Usage: #example
Title: "SZMC Nurse Role - Internal Medicine Department"
Description: "Example of a temporary nurse's role in the internal medicine department"

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #practitioner
* meta.security[HDP].display = "מטפל"

* identifier[emp-role].system = "http://fhir.szmc.org.il/identifier/employee-role"
* identifier[emp-role].value = "EMP-ROLE-54321"

* active = true

* period.start = "2025-06-01"
* period.end = "2026-06-01"

* practitioner = Reference(SzmcPractitionerExample02)
* organization = Reference(SzmcInternalMedicineDept)

* code.coding[0] = http://terminology.hl7.org/CodeSystem/practitioner-role#nurse "Nurse"
* code.coding[tafkid] = http://fhir.szmc.org.il/cs/tafkid#nurse "Nurse"

* specialty = http://snomed.info/sct#773568002 "Emergency medicine"

* telecom.system = #phone
* telecom.value = "03-5302222"
* telecom.use = #work