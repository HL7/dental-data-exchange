Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $dental-category = http://hl7.org/fhir/us/dental-data-exchange/CodeSystem/dental-category
Alias: $sct = http://snomed.info/sct
Alias: $ADAUniversalToothDesignationSystem = http://terminology.hl7.org/CodeSystem/ADAUniversalToothDesignationSystem

Instance: RestorationTooth2-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs2buccal)
* contained = bs2buccal
* status = #completed
* category = $dental-category#dental "Dental"
* code = $cdt#D2391 "resin-based composite - one surface, posterior"
* code.text = "resin-based composite - one surface, posterior"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-17"

Instance: RestorationTooth3-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs3buccal)
* contained = bs3buccal
* status = #completed
* category = $dental-category#dental "Dental"
* code = $cdt#D2391 "resin-based composite - one surface, posterior"
* code.text = "resin-based composite - one surface, posterior"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-17"

Instance: RestorationTooth4-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs4buccal)
* contained = bs4buccal
* status = #completed
* category = $dental-category#dental "Dental"
* code = $cdt#D2391 "resin-based composite - one surface, posterior"
* code.text = "resin-based composite - one surface, posterior"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-17"

Instance: RestorationTooth5-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs5buccal)
* contained = bs5buccal
* status = #completed
* category = $dental-category#dental "Dental"
* code = $cdt#D2391 "resin-based composite - one surface, posterior"
* code.text = "resin-based composite - one surface, posterior"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-17"

Instance: RestorationTooth6-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs6buccal)
* contained = bs6buccal
* status = #completed
* category = $dental-category#dental "Dental"
* code = $cdt#D2330 "resin-based composite - one surface, anterior"
* code.text = "resin-based composite - one surface, anterior"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-17"

Instance: RestorationTooth7-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs7buccal)
* contained = bs7buccal
* status = #completed
* category = $dental-category#dental "Dental"
* code = $cdt#D2330 "resin-based composite - one surface, anterior"
* code.text = "resin-based composite - one surface, anterior"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-17"

Instance: RootCanalTooth8-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* status = #completed
* category[+] = $dental-category#dental "Dental"
* code = $cdt#D3310 "Endodontic therapy, anterior tooth (excluding final restoration)"
* code.text = "Endodontic therapy, anterior tooth (excluding final restoration)"
* bodySite.coding[+] = $sct#422653006 "Structure of permanent maxillary right central incisor tooth (body structure)"
* bodySite.coding[+] = $ADAUniversalToothDesignationSystem#8 "Permanent maxillary right central incisor tooth"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-17"

Instance: RestorationTooth8-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs8buccallingual)
* contained = bs8buccallingual
* status = #completed
* category = $dental-category#dental "Dental"
* code = $cdt#D2331 "resin-based composite - two surfaces, anterior"
* code.text = "resin-based composite - two surfaces, anterior"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-17"

Instance: bs8buccallingual
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#422653006 "Structure of permanent maxillary right central incisor tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#8 "Permanent maxillary right central incisor tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* locationQualifier[+] = $sct#362104007 "Entire lingual surface of tooth (body structure)"
* patient = Reference(Patient/example-dental) "Patient A"

Instance: RestorationTooth9-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs9buccal)
* contained = bs9buccal
* status = #completed
* category = $dental-category#dental "Dental"
* code = $cdt#D2330 "resin-based composite - one surface, anterior"
* code.text = "resin-based composite - one surface, anterior"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-17"

Instance: RestorationTooth10-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs10buccal)
* contained = bs10buccal
* status = #completed
* category = $dental-category#dental "Dental"
* code = $cdt#D2330 "resin-based composite - one surface, anterior"
* code.text = "resin-based composite - one surface, anterior"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-17"

Instance: RestorationTooth11-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs11buccal)
* contained = bs11buccal
* status = #completed
* category = $dental-category#dental "Dental"
* code = $cdt#D2330 "resin-based composite - one surface, anterior"
* code.text = "resin-based composite - one surface, anterior"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-17"

Instance: RestorationTooth12-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs12buccal)
* contained = bs12buccal
* status = #completed
* category = $dental-category#dental "Dental"
* code = $cdt#D2391 "resin-based composite - one surface, posterior"
* code.text = "resin-based composite - one surface, posterior"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-17"

Instance: RestorationTooth13-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs13buccal)
* contained = bs13buccal
* status = #completed
* category = $dental-category#dental "Dental"
* code = $cdt#D2391 "resin-based composite - one surface, posterior"
* code.text = "resin-based composite - one surface, posterior"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-17"

Instance: RestorationTooth14-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs14buccal)
* contained = bs14buccal
* status = #completed
* category = $dental-category#dental "Dental"
* code = $cdt#D2391 "resin-based composite - one surface, posterior"
* code.text = "resin-based composite - one surface, posterior"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-17"

Instance: RestorationTooth15-example-dental-procedure
InstanceOf: DentalProcedure
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs15buccal)
* contained = bs15buccal
* status = #completed
* category = $dental-category#dental "Dental"
* code = $cdt#D2391 "resin-based composite - one surface, posterior"
* code.text = "resin-based composite - one surface, posterior"
* subject = Reference(Patient/example-dental) "Patient A"
* performedDateTime = "2024-08-17"
