Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $dental-category = http://hl7.org/fhir/us/dental-data-exchange/CodeSystem/dental-category
Alias: $sct = http://snomed.info/sct
Alias: $ADAUniversalToothDesignationSystem = http://terminology.hl7.org/CodeSystem/ADAUniversalToothDesignationSystem

Instance: Rampant-caries-example-dental-condition
InstanceOf: http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"
* code = $sct#234976000 "Rampant dental caries (disorder)"
* code.text = "Rampant dental caries (disorder)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"
