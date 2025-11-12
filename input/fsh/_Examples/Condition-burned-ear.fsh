// Instance: condition-burned-ear
// InstanceOf: SZMCCondition
// Usage: #example
// Title: "SZMC Condition Example - Burn of Ear"
// Description: "Example of a burn of ear condition at SZMC"

// * id = "condition-burned-ear"

// * meta.profile[0] = "http://fhir.health.gov.il/StructureDefinition/il-core-condition"
// * meta.profile[1] = "http://fhir.szmc.org.il/StructureDefinition/szmc-condition"
// * meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
// * meta.security[HDP].code = #diagnoses
// * meta.security[HDP].display = "אבחנות"

// * identifier[szmc].system = "http://fhir.szmc.org.il/identifier/hospital-condition"
// * identifier[szmc].value = "HOSP-2024-12345"

// * clinicalStatus.coding[hl7].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
// * clinicalStatus.coding[hl7].code = #active
// * clinicalStatus.coding[hl7].display = "Active"
// * clinicalStatus.coding[szmc].system = "http://fhir.szmc.org.il/cs/avhana-clinical-status"
// * clinicalStatus.coding[szmc].code = #active-current
// * clinicalStatus.coding[szmc].display = "פעיל"
// * clinicalStatus.coding[szmc].userSelected = true

// * verificationStatus.coding[hl7].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
// * verificationStatus.coding[hl7].code = #confirmed
// * verificationStatus.coding[hl7].display = "Confirmed"
// * verificationStatus.coding[szmc].system = "http://fhir.szmc.org.il/cs/avhana-ver-status"
// * verificationStatus.coding[szmc].code = #confirmed-by-doctor

// * category.coding[ilcore].system = "http://terminology.hl7.org/CodeSystem/condition-category"
// * category.coding[ilcore].code = #encounter-diagnosis
// * category.coding[ilcore].display = "Encounter Diagnosis"
// * category.coding[szmc].system = "http://fhir.szmc.org.il/cs/condition-category-local"
// * category.coding[szmc].code = #admission-diagnosis
// * category.coding[szmc].display = "אבחנת קבלה"

// * code.coding[snomed].system = "http://snomed.info/sct"
// * code.coding[snomed].code = #39065001
// * code.coding[snomed].display = "Burn of ear"
// * code.coding[szmc].system = "http://fhir.szmc.org.il/cs/avhana-code"
// * code.coding[szmc].code = #BURN-EAR-01
// * code.coding[szmc].display = "כוויה באוזן"
// * code.text = "Burn of external ear - second degree"

// * bodySite.coding.system = "http://fhir.szmc.org.il/cs/condition-location"
// * bodySite.coding.code = #left-ear
// * bodySite.coding.display = "אוזן שמאלית"
// * bodySite.text = "Left external ear"

// * subject = Reference(Patient/SzmcPatientExample01)
// * subject.display = "John Doe"

// * encounter = Reference(Encounter/encounter-789)

// * recordedDate = "2024-11-10T14:30:00+02:00"

// * recorder = Reference(Practitioner/SzmcPractitionerExample01)
// * recorder.display = "Dr. Sarah Cohen"

// * note.text = "Patient sustained burn injury from hot water. Second degree burn affecting external ear structure."