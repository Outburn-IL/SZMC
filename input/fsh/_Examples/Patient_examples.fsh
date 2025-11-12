// ============================================================================
// Example 1: Complete Adult Patient with Israeli ID
// ============================================================================
Instance: SzmcPatientExample01
InstanceOf: SzmcPatient
Usage: #example
Title: "SZMC Patient - Adult with Israeli ID"
Description: "Complete example of an adult patient with Israeli national ID, HMO, citizenship and nationality"

* identifier[il-id].system = $il-id
* identifier[il-id].value = "000000018"
* identifier[il-id].assigner = Reference(SzmcMainHospital)

* extension[hmo].valueCodeableConcept = $payer#101 "קופת חולים כללית"

* extension[citizenship].extension[code].valueCodeableConcept.coding.system = "http://fhir.szmc.org.il/cs/citizenship"
* extension[citizenship].extension[code].valueCodeableConcept.coding.code = #IL
* extension[citizenship].extension[code].valueCodeableConcept.coding.display = "Israeli"

* extension[nationality].extension[code].valueCodeableConcept.coding.system = "http://fhir.szmc.org.il/cs/nationality"
* extension[nationality].extension[code].valueCodeableConcept.coding.code = #IL
* extension[nationality].extension[code].valueCodeableConcept.coding.display = "ישראלי"

* extension[birthPlace].valueAddress.country = "IL"

* name[0].use = #official
* name[0].family = "כהן"
* name[0].given[0] = "דוד"
* name[0].given[1] = "משה"
* name[0].extension[language].valueCode = #he

* name[1].use = #official
* name[1].family = "Cohen"
* name[1].given[0] = "David"
* name[1].given[1] = "Moshe"
* name[1].extension[language].valueCode = #en

* telecom[0].system = #phone
* telecom[0].value = "052-5551234"
* telecom[0].use = #mobile

* telecom[1].system = #email
* telecom[1].value = "david.cohen@example.com"
* telecom[1].use = #home

* gender = #male
* birthDate = "1980-05-15"

* address.use = #home
* address.line = "רחוב הרצל 123"
* address.city = "תל אביב"
* address.postalCode = "6801234"
* address.country = "IL"

* communication.language = urn:ietf:bcp:47#he
* communication.preferred = true

* managingOrganization = Reference(SzmcMainHospital)
* generalPractitioner = Reference(SzmcInternalMedicineDept)

// ============================================================================
// Example 2: Newborn Baby Patient with Temporary ID
// ============================================================================
Instance: SzmcPatientExample02
InstanceOf: SzmcPatient
Usage: #example
Title: "SZMC Patient - Newborn Baby"
Description: "Example of a newborn baby patient with temporary baby identifier before official registration"

* identifier[baby].system = "http://fhir.szmc.org.il/identifier/baby-patient"
* identifier[baby].value = "BABY-2025-001234"
* identifier[baby].assigner = Reference(SzmcMainHospital)

* identifier[tmp].system = "http://fhir.szmc.org.il/identifier/temp-patient"
* identifier[tmp].value = "TMP-2025-112233"

* extension[hmo].valueCodeableConcept = $payer#101 "קופת חולים כללית"

* extension[citizenship].extension[code].valueCodeableConcept.coding.system = "http://fhir.szmc.org.il/cs/citizenship"
* extension[citizenship].extension[code].valueCodeableConcept.coding.code = #IL

* extension[nationality].extension[code].valueCodeableConcept.coding.system = "http://fhir.szmc.org.il/cs/nationality"
* extension[nationality].extension[code].valueCodeableConcept.coding.code = #IL
* extension[nationality].extension[code].valueCodeableConcept.coding.display = "ישראלי"

* extension[birthPlace].valueAddress.country = "IL"

* name.use = #temp
* name.family = "לוי"
* name.given = "תינוק"
* name.extension[language].valueCode = #he

* gender = #female
* birthDate = "2025-11-08"

* address.use = #home
* address.line = "רחוב הדר 45"
* address.city = "רמת גן"
* address.postalCode = "5252000"
* address.country = "IL"

* communication.language = urn:ietf:bcp:47#he

* contact[parent].relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#PRN
* contact[parent].name.family = "לוי"
* contact[parent].name.given = "שרה"
* contact[parent].telecom.system = #phone
* contact[parent].telecom.value = "054-9998877"
* contact[parent].telecom.use = #mobile

* managingOrganization = Reference(SzmcMainHospital)