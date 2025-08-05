Profile: SzmcPatient
Parent: il-core-patient
Id: szmc-patient
Title: "SZMC Patient"
Description: "SZMC Patient profile based on the ILCore Patient profile"

// Modify existing HMO extension cardinality and add constraints
* extension[hmo] 1..1

* extension[hmo].valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* extension[hmo].valueCodeableConcept.coding ^slicing.discriminator[0].path = "system"
* extension[hmo].valueCodeableConcept.coding ^slicing.rules = #open
* extension[hmo].valueCodeableConcept.coding contains moh 0..*

* extension[hmo].valueCodeableConcept.coding[moh].system.extension 0..1
* extension[hmo].valueCodeableConcept.coding[moh].system.extension.url 1..1
* extension[hmo].valueCodeableConcept.coding[moh].system.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason" (exactly)
* extension[hmo].valueCodeableConcept.coding[moh].system.extension.valueCoding 0..1
* extension[hmo].valueCodeableConcept.coding[moh].system.extension.valueCoding.system 1..1
* extension[hmo].valueCodeableConcept.coding[moh].system.extension.valueCoding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
* extension[hmo].valueCodeableConcept.coding[moh].system.extension.valueCoding.code 1..1
* extension[hmo].valueCodeableConcept.coding[moh].system.extension.valueCoding.code = #unknown (exactly)

* extension contains
    $patient-citizenship named citizenship 0..1 and
    $patient-nationality named nationality 0..1

* extension[citizenship] ^short = "Extension: Patient Citizenship"
* extension[citizenship] ^definition = "Patient citizenship information"
* extension[citizenship].extension[code].valueCodeableConcept.coding 0..*
* extension[citizenship].extension[code].valueCodeableConcept.coding.system 1..1
* extension[citizenship].extension[code].valueCodeableConcept.coding.system = "http://fhir.szmc.org.il/cs/citizenship" (exactly)
* extension[citizenship].extension[code].valueCodeableConcept.coding.code 0..1

* extension[nationality] ^short = "Extension: Patient Nationality"
* extension[nationality] ^definition = "Patient nationality information"
* extension[nationality].extension[code].valueCodeableConcept.coding 0..*
* extension[nationality].extension[code].valueCodeableConcept.coding.system 1..1
* extension[nationality].extension[code].valueCodeableConcept.coding.system = "http://fhir.szmc.org.il/cs/nationality" (exactly)
* extension[nationality].extension[code].valueCodeableConcept.coding.code 0..1
* extension[nationality].extension[code].valueCodeableConcept.coding.display 0..1

* identifier[ppn].type.coding.system.extension 0..1
* identifier[ppn].type.coding.system.extension.url 1..1
* identifier[ppn].type.coding.system.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason" (exactly)
* identifier[ppn].type.coding.system.extension.valueCode 1..1
* identifier[ppn].type.coding.system.extension.valueCode = #unknown

* identifier contains
   tmp 0..* and
   baby 0..*

* identifier[tmp] ^short = "Temporary Patient Identifier"
* identifier[tmp] ^definition = "Temporary patient identifier used for unidentified patients"
* identifier[tmp].system = "http://fhir.szmc.org.il/identifier/temp-patient" (exactly)
* identifier[tmp].value 1..1
* identifier[tmp].value ^short = "Temporary patient ID value"

* identifier[baby] ^short = "Baby Patient Identifier"
* identifier[baby] ^definition = "Baby patient identifier used for newborns before official registration"
* identifier[baby].system = "http://www.szmc.org.il/identifier/baby-patient" (exactly)
* identifier[baby].value 1..1
* identifier[baby].value ^short = "Baby patient ID value"
