Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $dental-category = http://hl7.org/fhir/us/dental-data-exchange/CodeSystem/dental-category
Alias: $sct = http://snomed.info/sct
Alias: $cdt = http://www.ada.org/cdt
Alias: $ADAUniversalToothDesignationSystem = http://terminology.hl7.org/CodeSystem/ADAUniversalToothDesignationSystem

Instance: buccal-restoration-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs1)
* contained = bs1
* status = #completed
* category = $dental-category#dental "Dental"
* code = $cdt#D2330 "resin-based composite - one surface, anterior"
* code.text = "resin-based composite - one surface, anterior"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-10"

Instance: bs1
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#424877001 "Structure of permanent maxillary right lateral incisor tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#7 "Permanent maxillary right lateral incisor tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"
