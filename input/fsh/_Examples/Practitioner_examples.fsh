// ============================================================================
// Example 1: Physician with License and Expertise
// ============================================================================
Instance: SzmcPractitionerExample01
InstanceOf: SzmcPractitioner
Usage: #example
Title: "SZMC Physician - Internal Medicine Specialist"
Description: "Complete example of a physician with permanent license, expertise, and employee identifiers"

* identifier[enc-id].system = "http://fhir.szmc.org.il/identifier/enc-id"
* identifier[enc-id].value = "ENC123456789"

* identifier[il-id].system = $il-id
* identifier[il-id].value = "000000018"
* identifier[il-id].assigner = Reference(SzmcMainHospital)

* identifier[prac-lic].system = $practitioner-license-moh
* identifier[prac-lic].value = "1-12345"

* identifier[employee].use = #official
* identifier[employee].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[employee].type.coding.code = #EI
* identifier[employee].type.coding.display = "Employee number"
* identifier[employee].system = "http://fhir.szmc.org.il/identifier/mispar_oved"
* identifier[employee].value = "E12345"
* identifier[employee].period.start = "2010-01-15"

* identifier[user-id].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[user-id].type.coding.code = #CAAI
* identifier[user-id].type.coding.display = "Consumer Application Account Identifier"
* identifier[user-id].system = "http://fhir.szmc.org.il/identifier/user_skey"
* identifier[user-id].value = "USER987654"

* name.use = #official
* name.family = "לוי"
* name.given[0] = "יוסף"
* name.given[1] = "דוד"
* name.extension[language].valueCode = #he

* qualification[moh-practitioner-license].code = $pract-certificate-type-moh#2
* qualification[moh-practitioner-license].identifier.system = $practitioner-license-moh
* qualification[moh-practitioner-license].identifier.value = "1-12345"
* qualification[moh-practitioner-license].issuer = Reference(SzmcMainHospital)
* qualification[moh-practitioner-license].extension[practice].valueCodeableConcept = $practitioner-profession-moh#1 "רפואה"

* qualification[moh-expertise].code = $pract-certificate-type-moh#5
* qualification[moh-expertise].identifier[moh-practitioner-expertise].system = "http://fhir.health.gov.il/identifier/practitioner-expertise"
* qualification[moh-expertise].identifier[moh-practitioner-expertise].value = "12345"
* qualification[moh-expertise].extension[practice].valueCodeableConcept = http://fhir.health.gov.il/cs/practitioner-expertise-moh#1 "רפואה פנימית"

* address.line = "רחוב הרצל 45"
* address.city = "תל אביב"
* address.postalCode = "6801001"
* address.country = "IL"

// ============================================================================
// Example 2: Temporary Nurse
// ============================================================================
Instance: SzmcPractitionerExample02
InstanceOf: SzmcPractitioner
Usage: #example
Title: "SZMC Nurse - Temporary Permit"
Description: "Example of a nurse with temporary permit and temporary practitioner ID"

* identifier[enc-id].system = "http://fhir.szmc.org.il/identifier/enc-id"
* identifier[enc-id].value = "ENC987654321"

* identifier[nurse-lic].system = $nurse-license-moh
* identifier[nurse-lic].value = "54321"

* identifier[tmp].system = "http://fhir.szmc.org.il/identifier/temp-practitioner"
* identifier[tmp].value = "TMP-NURSE-2025-001"

* name.use = #official
* name.family = "שרון"
* name.given = "רחל"
* name.extension[language].valueCode = #he

* qualification[moh-nurse-temp-permit].code = $pract-certificate-type-moh#102
* qualification[moh-nurse-temp-permit].identifier.system = $nurse-license-moh
* qualification[moh-nurse-temp-permit].identifier.value = "54321"
* qualification[moh-nurse-temp-permit].extension[practice].valueCodeableConcept = $practitioner-profession-moh#102 "אח/ות מעשי/ת"
* qualification[moh-nurse-temp-permit].issuer = Reference(SzmcMainHospital)

* address.line = "רחוב דיזנגוף 100"
* address.city = "תל אביב"
* address.postalCode = "6433109"
* address.country = "IL"