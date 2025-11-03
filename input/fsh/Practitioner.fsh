Profile: SzmcPractitioner
Parent: ILCorePractitioner
Id: szmc-practitioner
Title: "SZMC Practitioner"
Description: "Szmc Practitioner profile, based on the ILCore Practitioner profile"
* identifier contains
    employee 0..* and
    user-id 0..* and
    enc-id 1..1 and
    tmp 0..1
* identifier[enc-id].system 1..1
* identifier[enc-id].system = "http://fhir.szmc.org.il/identifier/enc-id" (exactly)
* identifier[enc-id].value 1..1
* identifier[user-id].type 0..1
* identifier[user-id].type.coding.system 0..1
* identifier[user-id].type.coding.system = "http://hl7.org/fhir/CodeSystem/v2-0203" (exactly)
* identifier[user-id].type.coding.code 0..1
* identifier[user-id].type.coding.code = #CCAI (exactly)
* identifier[user-id].type.coding.display 0..1
* identifier[user-id].type.coding.display = "Consumer Application Account Identifier" (exactly)
* identifier[user-id].system 0..1
* identifier[user-id].system = "http://fhir.szmc.org.il/identifier/user_skey" (exactly)
* identifier[employee].use 0..1
* identifier[employee].use = #official (exactly)
* identifier[employee].type 0..1
* identifier[employee].type.coding.system 0..1
* identifier[employee].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[employee].type.coding.code 0..1
* identifier[employee].type.coding.code = #EI (exactly)
* identifier[employee].type.coding.display 0..1
* identifier[employee].type.coding.display = "Employee Identifier" (exactly)
* identifier[employee].system 0..1
* identifier[employee].system = "http://fhir.szmc.org.il/identifier/mispar_oved" (exactly)
* identifier[employee].period 0..1
* identifier[employee].period.start 0..1
* identifier[employee].period.end 0..1
* identifier[tmp].system 1..1
* identifier[tmp].system = "http://fhir.szmc.org.il/identifier/temp-practitioner" (exactly)
* identifier[tmp].value 1..1
