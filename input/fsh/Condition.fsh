Profile: SZMCCondition
Parent: ILCoreCondition
Id: szmc-condition
Title: "SZMC Condition Profile"
Description: "SZMC Condition profile based on IL Core Condition"

* ^url = "http://fhir.szmc.org.il/StructureDefinition/szmc-condition"

* id 1..1

* meta only ILHDPMeta
* meta 1..1 
* meta.profile 1..* 
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile contains
    ilcore 1..1 and
    szmc 1..1 
* meta.profile[ilcore] = "http://fhir.health.gov.il/StructureDefinition/il-core-condition"
* meta.profile[szmc] = "http://fhir.szmc.org.il/StructureDefinition/szmc-condition"

* meta.security[HDP] 1..1
* meta.security[HDP].system 1..1
* meta.security[HDP].code 1..1
* meta.security[HDP].system = $info-buckets (exactly)
* meta.security[HDP].code = #diagnoses (exactly)
* meta.security[HDP].display = "אבחנות" (exactly)

* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains szmc 0..1
* identifier[szmc].system from SZMCConditionIdentifierSystemVS (required)

* clinicalStatus.coding ^slicing.discriminator.type = #value
* clinicalStatus.coding ^slicing.discriminator.path = "system"
* clinicalStatus.coding ^slicing.rules = #open
* clinicalStatus.coding contains
    hl7 0..1 and
    szmc 0..1
* clinicalStatus.coding[hl7].system = "http://terminology.hl7.org/CodeSystem/condition-clinical" (exactly)
* clinicalStatus.coding[hl7].code from http://hl7.org/fhir/ValueSet/condition-clinical (required)
* clinicalStatus.coding[szmc].system = "http://fhir.szmc.org.il/cs/avhana-clinical-status" (exactly)
* clinicalStatus.coding[szmc].userSelected 1..1
* clinicalStatus.coding[szmc].userSelected = true (exactly)

* verificationStatus.coding ^slicing.discriminator.type = #value
* verificationStatus.coding ^slicing.discriminator.path = "system"
* verificationStatus.coding ^slicing.rules = #open
* verificationStatus.coding contains
    hl7 0..1 and
    szmc 0..1 and
    unk 0..1
* verificationStatus.coding[hl7].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status" (exactly)
* verificationStatus.coding[hl7].code from http://hl7.org/fhir/ValueSet/condition-ver-status (required)
* verificationStatus.coding[szmc].system = "http://fhir.szmc.org.il/cs/avhana-ver-status" (exactly)
* verificationStatus.coding[unk].system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* verificationStatus.coding[unk].code = #not-asked (exactly)

// * category 1..*
// * category.coding ^slicing.discriminator.type = #value
// * category.coding ^slicing.discriminator.path = "system"
// * category.coding ^slicing.rules = #open
// * category.coding contains
//     ilcore 0..1 and
//     szmc 0..1
// * category.coding[ilcore] from http://fhir.health.gov.il/ValueSet/il-core-condition-category (required)
// * category.coding[szmc].system = "http://fhir.szmc.org.il/cs/condition-category-local" (exactly)

* severity.coding ^slicing.discriminator.type = #value
* severity.coding ^slicing.discriminator.path = "system"
* severity.coding ^slicing.rules = #open
* severity.coding contains
    generic 0..1 and
    local 0..1
* severity.coding[generic].code from http://hl7.org/fhir/ValueSet/condition-severity (preferred)
* severity.coding[local].system = "http://fhir.szmc.org.il/cs/condition-severity-local" (exactly)

* code 1..1
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomed 0..1 and
    // icd9 0..1 and
    szmc 0..1
* code.coding[snomed].system 1..1
* code.coding[snomed].system = "http://snomed.info/sct" (exactly)
* code.coding[snomed].code 1..1
* code.coding[snomed] from http://hdp.fhir.health.gov.il/ValueSet/il-hdp-condition-code (extensible)
// * code.coding[icd9].system 1..1
// * code.coding[icd9].code 1..1
* code.coding[szmc].system 1..1
* code.coding[szmc].system = "http://fhir.szmc.org.il/cs/avhana-code" (exactly)
* code.coding[szmc].code 1..1

* bodySite.coding.system = "http://fhir.szmc.org.il/cs/condition-location" (exactly)

* subject 1..1

* recordedDate 1..1

* recorder 1..1