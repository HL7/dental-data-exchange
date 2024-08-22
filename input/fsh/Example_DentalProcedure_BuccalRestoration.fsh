Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $dental-category = http://hl7.org/fhir/us/dental-data-exchange/CodeSystem/dental-category
Alias: $sct = http://snomed.info/sct
Alias: $ADAUniversalToothDesignationSystem = http://terminology.hl7.org/CodeSystem/ADAUniversalToothDesignationSystem

Instance: Rampant-caries-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs1)
* contained = bs1
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $dental-category#dental "Dental"
* code = $sct#251330002 "Caries active (finding)"
* code.text = "Caries active (finding)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: bs1
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#424877001 "Structure of permanent maxillary right lateral incisor tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#7 "Permanent maxillary right lateral incisor tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"
