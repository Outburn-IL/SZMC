// ============================================================================
// Example 1: Complete Hospital Organization
// ============================================================================
Instance: SzmcMainHospital
InstanceOf: SzmcOrganization
Usage: #example
Title: "SZMC Main Hospital"
Description: "Example of SZMC as a main hospital organization with all identifiers"

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #organization
* meta.security[HDP].display = "יחידה ארגונית"

* identifier[moh-inst-symbol].system = $moh-inst-symbol
* identifier[moh-inst-symbol].value = "12345"

* identifier[legal-entity].system = $legal-entity
* identifier[legal-entity].value = "520012345"

* active = true

* type[moh-institute-type].coding.system = $institution-type-moh
* type[moh-institute-type].coding.code = #1
* type[moh-institute-type].coding.display = "אשפוז כללי"

* type.coding[szmc-dep].system = "http://fhir.szmc.org.il/cs/dept-id"
* type.coding[szmc-dep].code = #001
* type.coding[szmc-dep].display = "מנהל"

* name = "מרכז רפואי שיבא ע\"ש תל השומר"

* telecom[0].system = #phone
* telecom[0].value = "03-5303030"
* telecom[0].use = #work

* telecom[1].system = #email
* telecom[1].value = "info@sheba.health.gov.il"
* telecom[1].use = #work

* address.line = "דרך שבע 2"
* address.city = "רמת גן"
* address.postalCode = "5262000"
* address.country = "IL"

// ============================================================================
// Example 2: Hospital Department
// ============================================================================
Instance: SzmcInternalMedicineDept
InstanceOf: SzmcOrganization
Usage: #example
Title: "SZMC Internal Medicine Department"
Description: "Example of an internal medicine department within SZMC"

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #organization
* meta.security[HDP].display = "יחידה ארגונית"

* identifier[moh-hospital-department].system = $moh-hosp-department
* identifier[moh-hospital-department].value = "12345-10000"

* active = true

* type[moh-department-type].coding.system = $department-type-moh
* type[moh-department-type].coding.code = #10000
* type[moh-department-type].coding.display = "אשפוז - פנימית"

* type.coding[szmc-dep].system = "http://fhir.szmc.org.il/cs/dept-id"
* type.coding[szmc-dep].code = #101
* type.coding[szmc-dep].display = "מחלקה פנימית א'"

* name = "מחלקה פנימית א'"

* telecom.system = #phone
* telecom.value = "03-5302500"
* telecom.use = #work

* partOf = Reference(SzmcMainHospital)